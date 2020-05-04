//%attributes = {}
  // Creation of the offscreen area
C_TEXT:C284($1;$region)
C_OBJECT:C1216($params)
C_PICTURE:C286($0)

$region:=$1

$params:=New object:C1471
  // url of the html file with the js function to use
$params.url:=Get 4D folder:C485(Current resources folder:K5:16)+"googlechart.html"
  // Add config attribut to pass it to the callback method
$params.data:=Form:C1466.data.reduce("ReduceData")
  // Add region selected if necessary
$params.region:=$region
$params.trace:=Form:C1466.trace
If (Form:C1466.color1#"")
	$params.colorAxis:=New object:C1471("colors";New collection:C1472(Form:C1466.color1))
Else 
	$params.colorAxis:=New object:C1471("colors";New collection:C1472(Null:C1517))
End if 
  // Add a callback method called on event
$params.onEvent:=Formula:C1597(ChartCallback )
  // We need to wait for the reponse of Google API.
  // the web area will be closed in the ChartImage method called from the js code
$params.autoQuit:=False:C215
  //  Max waiting time between 2 events.
$params.timeout:=10

  // create offscreen web area according to $params
$0:=WA Run offscreen area:C1727($params)
