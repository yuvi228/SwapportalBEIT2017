package com.controller;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@WebFilter("/*") // This will apply the filter to all incoming requests
public class CacheControlFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// Initialization code if needed (optional)
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("Into Filter");

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		HttpSession session = httpRequest.getSession(false);
		String uri = httpRequest.getRequestURI();
		System.out.println("Request URI: " + uri);

		if (session != null) {
			System.out.println("Session ID: " + session.getId());
			System.out.println("Userdetails: " + session.getAttribute("Userdetails"));
		}

		// Exclude static resources
		if (uri.endsWith(".css") || uri.endsWith(".js") || uri.endsWith(".png") || uri.endsWith(".jpg")
				|| uri.endsWith(".jpeg") || uri.endsWith(".gif") || uri.endsWith(".woff") || uri.endsWith(".ttf")) {
			chain.doFilter(request, response);
			return;
		}

		// Add cache-control headers for dynamic resources
		httpResponse.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		httpResponse.setHeader("Pragma", "no-cache");
		httpResponse.setDateHeader("Expires", 0);

		// Allow specific pages without session validation
		Set<String> allowedUrls = new HashSet<>(Arrays.asList("/swapportal/", "index.jsp", "userlogin.jsp",
				"Authcontroller", "investor.jsp", "ideaperson.jsp", "faq.jsp"));

		for (String allowedUrl : allowedUrls) {
			if (uri.contains(allowedUrl)) {
				chain.doFilter(request, response);
				return;
			}
		}

		// Redirect if session or Userdetail is invalid
		if (session == null || session.getAttribute("Userdetails") == null) {
			System.out.println("Session is null or Userdetail is missing");
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/wp-content/Frontend/index.jsp");
			return;
		}

		System.out.println("Out of filter");
		chain.doFilter(request, response); // Proceed to the next filter or resource
	}

	@Override
	public void destroy() {
		// Clean-up resources if needed (optional)
	}
}
