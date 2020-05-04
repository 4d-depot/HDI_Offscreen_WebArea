﻿If (Form event code:C388=On Clicked:K2:4)
	
	C_OBJECT:C1216($style)
	C_LONGINT:C283($color)
	
	
	  // choice of new color
	$color:=Select RGB color:C956()
	If (Bool:C1537(OK))
		
		Form:C1466.color1:=SVG_Color_RGB_from_long ($color;3)
		
	End if 
	
End if 