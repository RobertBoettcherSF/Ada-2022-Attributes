--  Ada 2022 topic: useful scalar / array attributes.
pragma Ada_2022;

package Attributes_Demo is

   type Color is (Red, Green, Blue);

   subtype Percent is Integer range 0 .. 100;

   type Sample is array (Positive range <>) of Integer;

   function Color_Image (C : Color) return String;
   function Color_Value (S : String) return Color;
   function Color_Rep (C : Color) return Integer;

   function Percent_First return Percent;
   function Percent_Last return Percent;
   function In_Percent_Range (X : Integer) return Boolean;

   function Sample_Length (A : Sample) return Natural;
   function Sample_Bounds_OK (A : Sample) return Boolean;

end Attributes_Demo;
