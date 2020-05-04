//%attributes = {}
  // format informaton  sent to  Google Chart
C_OBJECT:C1216($1)

If ($1.accumulator=Null:C1517)
	$1.accumulator:=New collection:C1472(New collection:C1472("Country";"Popularity"))
End if 


If ($1.value.Popularity>0)
	$1.accumulator.push(New collection:C1472($1.value.ISO2;$1.value.Popularity))
End if 