Class constructor
	  // Creation of the offscreen area
	C_TEXT:C284($1)  // region
	C_TEXT:C284($2)  // color
	
	This:C1470.region:=$1
	This:C1470.trace:=Form:C1466.trace
	This:C1470.color:=
	If ($2#"")
		This:C1470.colorAxis:=New object:C1471("colors";New collection:C1472($2))
	Else 
		This:C1470.colorAxis:=New object:C1471("colors";New collection:C1472(Null:C1517))
	End if 
	
	  // We need to wait for the reponse of Google API.
	  // the web area will be closed in the ChartImage method called from the js code
	This:C1470.autoQuit:=False:C215
	  //  Max waiting time between 2 events.
	This:C1470.timeout:=10
	  // url of the html file with the js function to use
	This:C1470.url:=Get 4D folder:C485(Current resources folder:K5:16)+"googlechart.html"
	  // Add config attribut to pass it to the callback method
	This:C1470.data:=Form:C1466.data.reduce("ReduceData")
	
	
	  // Callback method called on event
Function onEvent
	Case of 
		: (FORM Event:C1606.code=On End URL Loading:K2:47)
			If (Bool:C1537(This:C1470.trace))
				  // open web debuger if trace activated
				WA OPEN WEB INSPECTOR:C1736(*;This:C1470.area)
			End if 
			  // Run javascript function to call Google API. After google response, calls ChartImage method thanks to a $4d call in the js
			WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;This:C1470.area;"GenerateGoogleChart";*;This:C1470.data;This:C1470.region;This:C1470.colorAxis)
			
		: (FORM Event:C1606.code=On URL Loading Error:K2:48)
			CANCEL:C270
			
	End case 
	
Function start
	C_PICTURE:C286($0)
	  // create offscreen web area according to the attribut class
	$0:=WA Run offscreen area:C1727(This:C1470)
	
	
	