/**
 * 
 */
function validate(){

	var valid=true;

	
	var x=document.forms["ideaperson"]["aboutyou"].value;

	if(x==null||x==""){
		alert("enter About You");
		valid=false;
	}
	
	var x=document.forms["ideaperson"]["pa"].value;

	if(x==null||x==""){
		alert("enter Project Abstrac");
		valid=false;
	}
	var x=document.forms["ideaperson"]["adrs1"].value;

	if(x==null||x==""){
		alert("enter Address Line1");
		valid=false;
	}
	var x=document.forms["ideaperson"]["adrs2"].value;

	if(x==null||x==""){
		alert("enter Address Line2");
		valid=false;
	}

	var x=document.forms["ideaperson"]["street"].value;

	if(x==null||x==""){
		alert("enter Street");
		valid=false;
	}

	var x=document.forms["ideaperson"]["city"].value;

	if(x==null||x==""){
		alert("enter city");
		valid=false;
	}

	var x=document.forms["ideaperson"]["country"].value;

	if(x==null||x==""){
		alert("enter country");
		valid=false;
	}

	var x=document.forms["ideaperson"]["mp"].value;

	if(x==null||x==""){
		alert("enter map");
		valid=false;
	}
	var x=document.forms["ideaperson"]["fb"].value;

	if(x==null||x==""){
		alert("enter FB URL");
		valid=false;
	}
	var x=document.forms["ideaperson"]["tw"].value;

	if(x==null||x==""){
		alert("enter TW URL");
		valid=false;
	}
	var x=document.forms["ideaperson"]["gg"].value;

	if(x==null||x==""){
		alert("enter GG URL");
		valid=false;
	}
	
}	
/**
 * 
 */