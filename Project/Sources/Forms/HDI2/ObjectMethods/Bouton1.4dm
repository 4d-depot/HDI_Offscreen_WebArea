
If (Bool:C1537(Form:C1466.trace))
	TRACE:C157
End if 

If (region>0)
	PictureWP:=cs:C1710.GraphCreation.new(Form:C1466.continent[Region-1].Code;Form:C1466.color1).start()
	RegionNameWP:=Form:C1466.continent[Region-1].Name
End if 

  // Comput the write pro area to update the fields
ST COMPUTE EXPRESSIONS:C1285(*;"WPArea";ST Start text:K78:15;ST End text:K78:16)