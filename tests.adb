pragma Ada_2022;

with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Attributes_Demo; use Attributes_Demo;

procedure Tests is
   A : constant Sample := [10, 20, 30];
   Empty : constant Sample (1 .. 0) := [1 .. 0 => <>];
begin
   Assert (Color_Image (Green) = "GREEN");
   Assert (Color_Value ("BLUE") = Blue);
   Assert (Color_Rep (Red) = 0);
   Assert (Color_Rep (Blue) = 2);
   Put_Line ("PASS 'Image / 'Value / 'Enum_Rep");

   Assert (Percent_First = 0);
   Assert (Percent_Last = 100);
   Assert (In_Percent_Range (50));
   Assert (not In_Percent_Range (-1));
   Put_Line ("PASS 'First / 'Last / 'Valid");

   Assert (Sample_Length (A) = 3);
   Assert (A'First = 1 and then A'Last = 3);
   Assert (Sample_Length (Empty) = 0);
   Assert (Sample_Bounds_OK (A));
   Assert (Sample_Bounds_OK (Empty));
   Put_Line ("PASS array 'Length / 'First / 'Last");

   Put_Line ("All Attributes topic tests passed.");
end Tests;
