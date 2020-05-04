//%attributes = {"publishedWeb":true}
  // mathod called by javascript
  // Image in base 64 returned by javascript
C_TEXT:C284($1)
C_PICTURE:C286($picture)

C_BLOB:C604($blob)
BASE64 DECODE:C896($1;$blob)
BLOB TO PICTURE:C682($blob;$picture)

This:C1470.result:=$picture
ACCEPT:C269