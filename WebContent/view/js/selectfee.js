function showForm()
{
var selopt = document.getElementById("typeofstudent").value;
if (selopt == "SELECT") {
	document.getElementById("SEL").style.display="block";
	document.getElementById("FSD").style.display="none";
	document.getElementById("FSH").style.display="none";
	}

if (selopt == "Dayscholer") {
	document.getElementById("SEL").style.display="none";
document.getElementById("FSD").style.display="block";
document.getElementById("FSH").style.display="none";
}
if (selopt == "Hostler") {
	document.getElementById("SEL").style.display="none";
document.getElementById("FSH").style.display="block";
document.getElementById("FSD").style.display="none";
}
}