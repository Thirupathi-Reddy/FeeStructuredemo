var van1=new array(2)
van1[0]="6498";
van1[1]="6498";






function vanfeechange()
{
	var vanfee=document.feeform.vanStop.selectedIndex;
	
	document.feeform.totaltfee.value = van1[vanfee];
	 document.feeform.totaltduefee.value = van1[vanfee];
	
	
	
	
	}