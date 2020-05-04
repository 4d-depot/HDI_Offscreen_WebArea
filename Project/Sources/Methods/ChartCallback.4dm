//%attributes = {}
Case of 
	: (FORM Event:C1606.code=On End URL Loading:K2:47)
		If (Bool:C1537(This:C1470.trace))
			  // open web debuger if trace activated
			WA OPEN WEB INSPECTOR:C1736(*;This:C1470.areaName)
		End if 
		  // Run javascript function to call Google API. After google response, calls ChartImage method thanks to a $4d call in the js
		WA EXECUTE JAVASCRIPT FUNCTION:C1043(*;This:C1470.areaName;"GenerateGoogleChart";*;This:C1470.data;This:C1470.region;This:C1470.colorAxis)
		
	: (FORM Event:C1606.code=On URL Loading Error:K2:48)
		CANCEL:C270
		
End case 