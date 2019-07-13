/**
 * 
 */
function validate(){

	var valid=true;

	var x=document.forms["reg"]["st"].value;

	if(x==null||x==""){
		alert("enter type");
		valid=false;
	}
	
	var x=document.forms["reg"]["fn"].value;

	if(x==null||x==""){
		alert("enter full name");
		valid=false;
	}

	var x=document.forms["reg"]["sn"].value;

	if(x==null||x==""){
		alert("enter Sur name");
		valid=false;
	}

	var x=document.forms["reg"]["dt"].value;

	if(x==null||x==""){
		alert("enter Date of Birth");
		valid=false;
	}

	var x=document.forms["reg"]["pn"].value;

	if(x==null||x==""){
		alert("enter Phone number");
		valid=false;
	}
	
	var x=document.forms["reg"]["email"].value;

	if(x==null||x==""){
		alert("enter Email");
		valid=false;
	}

	var x=document.forms["reg"]["un"].value;

	if(x==null||x==""){
		alert("enter Username");
		valid=false;
	}


	var pass=document.forms["reg"]["password"].value;

	var conpass = document.forms["reg"]["rps"].value;
	
	if(pass != conpass ){
		alert("Password do not match");
		valid=false;
	}
	
	if(pass==null||pass==""){
		alert("enter Password");
		valid=false;
	}
	
	
return valid;
}
