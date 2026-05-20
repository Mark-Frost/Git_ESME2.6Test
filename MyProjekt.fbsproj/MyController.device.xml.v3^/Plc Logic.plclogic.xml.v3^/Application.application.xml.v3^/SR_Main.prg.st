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
    xStartSensorConveyor1: BOOL; // Start sensor for Conveyor 1
    xStopSensorConveyor1: BOOL; // Stop sensor for Conveyor 1
    xStartSensorConveyor2: BOOL; // Start sensor for Conveyor 2
    xStopSensorConveyor2: BOOL; // Stop sensor for Conveyor 2
    xStartSensorConveyor3: BOOL; // Start sensor for Conveyor 3
    xStopSensorConveyor3: BOOL; // Stop sensor for Conveyor 3
    fbControlConveyor1: GIATV.Control_ATV; // Function block instance for Conveyor 1
    fbControlConveyor2: GIATV.Control_ATV; // Function block instance for Conveyor 2
    fbControlConveyor3: GIATV.Control_ATV; // Function block instance for Conveyor 3
    wSpeedReference: WORD := 1000; // Speed reference for conveyors
    axisConveyor1: GIATV.Axis_Ref; // Axis reference for Conveyor 1
    axisConveyor2: GIATV.Axis_Ref; // Axis reference for Conveyor 2
    axisConveyor3: GIATV.Axis_Ref; // Axis reference for Conveyor 3
END_VAR
__IMPLEMENTATION__



// Conveyor 1 Control
fbControlConveyor1(i_xEn := xStartSensorConveyor1 AND NOT xStopSensorConveyor1,
                    i_xKeepOpEn := TRUE,
                    i_xFwd := xStartSensorConveyor1 AND NOT xStopSensorConveyor1,
                    i_xRev := FALSE,
                    i_xQckStop := xStopSensorConveyor1,
                    i_xFreeWhl := FALSE,
                    i_xFltRst := FALSE,
                    i_wSpdRef := wSpeedReference,
                    Axis := axisConveyor1);

// Conveyor 2 Control
fbControlConveyor2(i_xEn := xStartSensorConveyor2 AND NOT xStopSensorConveyor2,
                    i_xKeepOpEn := TRUE,
                    i_xFwd := xStartSensorConveyor2 AND NOT xStopSensorConveyor2,
                    i_xRev := FALSE,
                    i_xQckStop := xStopSensorConveyor2,
                    i_xFreeWhl := FALSE,
                    i_xFltRst := FALSE,
                    i_wSpdRef := wSpeedReference,
                    Axis := axisConveyor2);

// Conveyor 3 Control
fbControlConveyor3(i_xEn := xStartSensorConveyor3 AND NOT xStopSensorConveyor3,
                    i_xKeepOpEn := TRUE,
                    i_xFwd := xStartSensorConveyor3 AND NOT xStopSensorConveyor3,
                    i_xRev := FALSE,
                    i_xQckStop := xStopSensorConveyor3,
                    i_xFreeWhl := FALSE,
                    i_xFltRst := FALSE,
                    i_wSpdRef := wSpeedReference,
                    Axis := axisConveyor3);

// Conveyor 3 Control
fbControlConveyor3(i_xEn := xStartSensorConveyor3 AND NOT xStopSensorConveyor3,
                    i_xKeepOpEn := TRUE,
                    i_xFwd := xStartSensorConveyor3 AND NOT xStopSensorConveyor3,
                    i_xRev := FALSE,
                    i_xQckStop := xStopSensorConveyor3,
                    i_xFreeWhl := FALSE,
                    i_xFltRst := FALSE,
                    i_wSpdRef := wSpeedReference,
                    Axis := axisConveyor3);