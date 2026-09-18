pragma Ada_2022;

package body Attributes_Demo is

   function Color_Image (C : Color) return String is
   begin
      return C'Image;
   end Color_Image;

   function Color_Value (S : String) return Color is
   begin
      return Color'Value (S);
   end Color_Value;

   function Color_Rep (C : Color) return Integer is
   begin
      return Integer (Color'Enum_Rep (C));
   end Color_Rep;

   function Percent_First return Percent is
   begin
      return Percent'First;
   end Percent_First;

   function Percent_Last return Percent is
   begin
      return Percent'Last;
   end Percent_Last;

   function In_Percent_Range (X : Integer) return Boolean is
   begin
      return X'Valid and then X in Percent;
   end In_Percent_Range;

   function Sample_Length (A : Sample) return Natural is
   begin
      return A'Length;
   end Sample_Length;

   function Sample_Bounds_OK (A : Sample) return Boolean is
   begin
      return A'First <= A'Last or else A'Length = 0;
   end Sample_Bounds_OK;

end Attributes_Demo;
