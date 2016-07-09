/*-----------------calculate for hostler----------------*/


var messages = new Array(13); 
messages[0] = "";
messages[1] = "";
messages[2] = "";
messages[3] = "";
messages[4] = "47000";
messages[5] = "48000";    
messages[6] = "49000";
messages[7] = "50000";
messages[8] = "50000";
messages[9] = "52000";
messages[10] = "52000";    
messages[11] = "54000";
messages[12] = "56000";

var messagescomputer=new Array(13);
messagescomputer[0] = "";
messagescomputer[1] = "";
messagescomputer[2] = "";
messagescomputer[3] = "";
messagescomputer[4] = "3000";
messagescomputer[5] = "3000";    
messagescomputer[6] = "3000";
messagescomputer[7] = "3000";
messagescomputer[8] = "3000";
messagescomputer[9] = "3000";
messagescomputer[10] = "3000";    
messagescomputer[11] = "3000";
messagescomputer[12] = "3000";

var messagesdhobi=new Array(13);
messagesdhobi[0] = "";
messagesdhobi[1] = "";
messagesdhobi[2] = "";
messagesdhobi[3] = "";
messagesdhobi[4] = "1500";
messagesdhobi[5] = "1500";    
messagesdhobi[6] = "1800";
messagesdhobi[7] = "1800";
messagesdhobi[8] = "1800";
messagesdhobi[9] = "1800";
messagesdhobi[10] = "1800";    
messagesdhobi[11] = "1800";
messagesdhobi[12] = "1800";

var messagesday = new Array(13); 
messagesday[0] = "";
messagesday[1] = "12000";
messagesday[2] = "13000";
messagesday[3] = "14000";
messagesday[4] = "15000";
messagesday[5] = "16000";    
messagesday[6] = "17000";
messagesday[7] = "18000";
messagesday[8] = "19000";
messagesday[9] = "20000";
messagesday[10] = "21000";    
messagesday[11] = "22000";
messagesday[12] = "24000";



var messagescomputerday=new Array(13);
messagescomputerday[0] = "";
messagescomputerday[1] = "NILL";
messagescomputerday[2] = "NILL";
messagescomputerday[3] = "1500";
messagescomputerday[4] = "1500";
messagescomputerday[5] = "1500";    
messagescomputerday[6] = "1800";
messagescomputerday[7] = "1800";
messagescomputerday[8] = "1800";
messagescomputerday[9] = "1800";
messagescomputerday[10] = "1800";    
messagescomputerday[11] = "1800";
messagescomputerday[12] = "1800";

function messageReveal() 
{
	var messageindex = document.feeform.standard.selectedIndex;
		
	  
	document.feeform.totaltfee.value = messages[messageindex];
	 document.feeform.totaltduefee.value = messages[messageindex];
	 
	
	document.feeform.totalcfee.value = messagescomputer[messageindex];
	document.feeform.totalcduefee.value = messagescomputer[messageindex];
	
	document.feeform.totaldfee.value = messagesdhobi[messageindex];
	document.feeform.totaldduefee.value = messagesdhobi[messageindex];
	
	document.feeform.totaltpaidfee.value = messages2[messageindex];
	 document.feeform.totaldpaidfee.value = messages2[messageindex];
	 document.feeform.totalcpaidfee.value = messages2[messageindex];
	
	
	
	/*-------------------------dayscholer fee------------------------------*/
	document.feeform.totaltdfee.value = messagesday[messageindex];
	 document.feeform.totaltddfee.value = messagesday[messageindex];
	 
	
	document.feeform.totalctfee.value = messagescomputerday[messageindex];
	document.feeform.totalcdfee.value = messagescomputerday[messageindex];
	
	 document.feeform.totaltdpfee.value = messages2[messageindex];
	 document.feeform.totaltcpfee.value = messages2[messageindex];
	
	}


function hostlerfeecal()
	{
	var a = document.getElementById("totaltfee").value;
	var b=document.getElementById("totaltpaidfee").value;
	var f=parseInt(a)-parseInt(b);
	document.getElementById("totaltduefee").value = f;
	
	
	var a = document.getElementById("totaldfee").value;
	var b=document.getElementById("totaldpaidfee").value;
	var f=parseInt(a)-parseInt(b);
	document.getElementById("totaldduefee").value = f;
	
	var a = document.getElementById("totalcfee").value;
	var b=document.getElementById("totalcpaidfee").value;
	var f=parseInt(a)-parseInt(b);
	document.getElementById("totalcduefee").value = f;
	
	
	}



/*----------------------------calculate  van fee---------------------*/






var messages2 = new Array(1); 
messages2[0]="";
messages2[1]="";
messages2[2]="";
messages2[3]="";
messages2[4]="";
messages2[5]="";
messages2[6]="";
messages2[7]="";
messages2[8]="";
messages2[9]="";
messages2[10]="";
messages2[11]="";
messages2[12]="";
messages2[13]="";
messages2[14]="";
messages2[15]="";
messages2[16]="";
messages2[17]="";
messages2[18]="";
messages2[19]="";
messages2[20]="";
messages2[21]="";
messages2[22]="";
messages2[23]="";
messages2[24]="";
messages2[25]="";
messages2[26]="";
messages2[27]="";
messages2[28]="";
messages2[29]="";
messages2[30]="";
messages2[31]="";
messages2[32]="";
messages2[33]="";
messages2[34]="";
messages2[35]="";
messages2[36]="";
messages2[37]="";
messages2[38]="";
messages2[39]="";
messages2[40]="";
messages2[41]="";
messages2[42]="";
messages2[43]="";
messages2[44]="";
messages2[45]="";
messages2[46]="";
messages2[47]="";
messages2[48]="";
messages2[49]="";


var messages1 = new Array(50); 
messages1[0] = "";
messages1[1] = "6498";
messages1[2] = "5100";
messages1[3] = "4950";
messages1[4] = "5400";
messages1[5] = "4950";
messages1[6] = "5400";
messages1[7] = "6498";
messages1[8] = "4500";
messages1[9] = "3450";
messages1[10] = "4500";
messages1[11] = "4200";
messages1[12] = "5100";
messages1[13] = "4650";
messages1[14] = "5100";
messages1[15] = "3300";
messages1[16] = "3450";
messages1[17] = "6300";
messages1[18] = "5700";
messages1[19] = "5400";
messages1[20] = "5400";
messages1[21] = "4950";
messages1[22] = "4500";
messages1[23] = "3450";
messages1[24] = "3450";
messages1[25] = "3600";
messages1[26] = "4650";
messages1[27] = "6498";
messages1[28] = "4500";
messages1[29] = "5610";
messages1[30] = "3450";
messages1[31] = "5205";
messages1[32] = "3600";
messages1[33] = "3450";
messages1[34] = "4800";
messages1[35] = "4350";
messages1[36] = "7002";
messages1[37] = "5400";
messages1[38] = "4500";
messages1[39] = "3900";
messages1[40] = "4800";
messages1[41] = "5400";
messages1[42] = "5100";
messages1[43] = "5700";
messages1[44] = "5300";
messages1[45] = "4800";
messages1[46] = "3600";
messages1[47] = "4500";
messages1[48] = "4200";
messages1[49] = "4950";




function vanfeechange()
{
	var messageindex=document.feeform.vanStop.selectedIndex;
	
	document.feeform.totalvanfee.value = messages1[messageindex];
	 document.feeform.vanduefee.value = messages1[messageindex];
	 
	 document.feeform.vanterm1.value = messages2[messageindex];
	 document.feeform.vanterm2.value = messages2[messageindex];
	 document.feeform.vanterm3.value = messages2[messageindex];
	 document.feeform.vanpaidfee.value = messages2[messageindex];
	 
	

	 
	 
	
}


function sumvanfee()
{

	var a = document.getElementById("vanterm1").value;
	var b = document.getElementById("vanterm2").value;
	var c = document.getElementById("vanterm3").value;
	var d = parseInt(a)+ parseInt(b)+parseInt(c);
	document.getElementById("vanpaidfee").value = d; 
	
	var e=document.getElementById("totalvanfee").value;
	var f=parseInt(e)-parseInt(d);
	document.getElementById("vanduefee").value = f;

		
	
}


function dayscholerfeecal(){
	

var a = document.getElementById("totaltdfee").value;
var b=document.getElementById("totaltdpfee").value;
var f=parseInt(a)-parseInt(b);
document.getElementById("totaltddfee").value = f;



var a = document.getElementById("totalctfee").value;
var b=document.getElementById("totaltcpfee").value;
var f=parseInt(a)-parseInt(b);
document.getElementById("totalcdfee").value = f;
}