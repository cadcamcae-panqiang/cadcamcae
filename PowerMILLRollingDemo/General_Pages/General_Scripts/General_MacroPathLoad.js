// Show/Hide functions for non-pointer layer/objects
//
var PM = window.external;

// <!CDATA[
function window_onload(){
   PM.DoCommand("PATHSELECTOR PATHLISTS LISTCHANGE MACROPATHS");
   PM.DoCommand("PATHSELECTOR PATHLISTS ADDTOP PROJSELECTOR 'C:/PowerMILLRollingDemo/'");
   <!-- PM.DoCommand("VIEW BACKGROUND IMAGE FILEOPEN 'C:/PowerMILLRollingDemo/General_Images/PM9_PM_Background.jpg'"); -->
}
]]>
//