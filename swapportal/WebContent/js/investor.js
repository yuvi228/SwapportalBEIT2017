/**
 * 
 */
function validate(){

	var valid=true;

	var x=document.forms["investor"]["inam"].value;

	if(x==null||x==""){
		alert("enter Investing Amount");
		valid=false;
	}
	
	var x=document.forms["investor"]["adrs1"].value;

	if(x==null||x==""){
		alert("enter Address Line1");
		valid=false;
	}

	var x=document.forms["investor"]["adrs2"].value;

	if(x==null||x==""){
		alert("enter Address Line2");
		valid=false;
	}

	var x=document.forms["investor"]["street"].value;

	if(x==null||x==""){
		alert("enter Street");
		valid=false;
	}

	var x=document.forms["investor"]["city"].value;

	if(x==null||x==""){
		alert("enter city");
		valid=false;
	}

	var x=document.forms["investor"]["country"].value;

	if(x==null||x==""){
		alert("enter country");
		valid=false;
	}

	var x=document.forms["investor"]["mp"].value;

	if(x==null||x==""){
		alert("enter map");
		valid=false;
	}
	var x=document.forms["investor"]["fb"].value;

	if(x==null||x==""){
		alert("enter FB URL");
		valid=false;
	}
	var x=document.forms["investor"]["tw"].value;

	if(x==null||x==""){
		alert("enter TW URL");
		valid=false;
	}
	var x=document.forms["investor"]["gg"].value;

	if(x==null||x==""){
		alert("enter GG URL");
		valid=false;
	}
	
}	
