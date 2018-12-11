dir1 = getDirectory("Choose Source Directory ");
print(dir1)
VioletLayerDir= dir1+"VioletLayer/"
RoseLayerDir= dir1+"RoseLayer/"
print(VioletLayerDir)
print(RoseLayerDir)
File.makeDirectory(VioletLayerDir)
File.makeDirectory(RoseLayerDir)
list = getFileList(dir1); 
for (i=0; i<list.length; i++) { 
showProgress(i+1, list.length); 
open(dir1+list[i]); 
imgName=getTitle(); 
run("Colour Deconvolution", "vectors=H&E"); 
selectWindow(imgName + "-(Colour_3)"); 
close(); 
selectWindow(imgName +"-(Colour_1)"); 
title = getTitle(); 
print("title: " + title); 
saveAs("Tiff", VioletLayerDir+title); 
close(); 
selectWindow(imgName + "-(Colour_2)"); 
title = getTitle(); 
print("title: " + title); 
saveAs("Tiff", RoseLayerDir+title); 
close();
selectWindow(imgName);
close();
selectWindow("Colour Deconvolution");
close();
}
