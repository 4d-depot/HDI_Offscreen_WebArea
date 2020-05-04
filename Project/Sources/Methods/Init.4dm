//%attributes = {}
ARRAY TEXT:C222(Region;0)

Form:C1466.data:=New collection:C1472

Form:C1466.data:=ds:C1482.Data.all().toCollection()

Form:C1466.continent:=ds:C1482.Continent.all().toCollection()

Form:C1466.color1:="Green"

COLLECTION TO ARRAY:C1562(Form:C1466.continent;Region;"Name")

Region:=1

WParea:=WP Import document:C1318(Get 4D folder:C485(Current resources folder:K5:16)+"googleAPI.4wp")




