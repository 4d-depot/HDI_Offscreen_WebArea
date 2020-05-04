Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		InitInfo 
		Init 
		Form:C1466.picture:=GraphCreation ("")
		
		PictureWP:=GraphCreation (Form:C1466.continent[Region-1].Code)
		RegionNameWP:=Form:C1466.continent[Region-1].Name
		
End case 

