__METADATA__
{
  "v3Meta": {
    "objectGuid": "48236d21-061f-4178-8a81-998d83d4ce49",
    "objectTypeGuid": "6f9dac99-8de1-4efc-8465-68ac443b7d08",
    "embeddedObjectTypeGuids": [
      "a9ed5b7e-75c5-4651-af16-d2c27e98cb94",
      "3b83b776-fb25-43b8-99f2-3c507c9143fc"
    ],
    "properties": {},
    "subObjects": {}
  }
}
__DECLARATION__
PROGRAM SR_Main
VAR
    fb_Control_ATV : GIATV.Control_ATV;
    xEnable : BOOL := TRUE;
    xKeepOpEnable : BOOL := FALSE;
    xForward : BOOL := FALSE;
    xReverse : BOOL := TRUE;
    xQuickStop : BOOL := TRUE;
    xFreeWheel : BOOL := TRUE;
    xFaultReset : BOOL := FALSE;
    wSpeedReference : WORD := 1000;
   
END_VAR
__IMPLEMENTATION__

fb_Control_ATV(
    i_xEn := xEnable,
    i_xKeepOpEn := xKeepOpEnable,
    i_xFwd := xForward,
    i_xRev := xReverse,
    i_xQckStop := xQuickStop,
    i_xFreeWhl := xFreeWheel,
    i_xFltRst := xFaultReset,
    i_wSpdRef := wSpeedReference,
    Axis := Altivar_320
);
