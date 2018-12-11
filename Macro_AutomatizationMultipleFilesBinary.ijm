//Open multiple files to convert a binary
//by Leonardo Mantilla

dir = getDirectory("Choose Source Directory ");
print("\\Clear")
print("Convert files to Binary:", dir)
list = getFileList(dir); 
for (i=0; i<list.length; i++) { 
showProgress(i+1, list.length); 
open(dir+list[i]); 
imgName=getTitle(); 
setOption("BlackBackground", false);
run("Make Binary"); 
selectWindow(imgName); 
print("title: " + imgName); 
saveAs("Tiff", dir+imgName+"_binary"); 
close(); 
}