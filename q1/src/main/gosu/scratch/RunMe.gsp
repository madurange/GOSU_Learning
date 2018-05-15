uses java.io.File

var folder:File[]=new File("C:/Program Files/Internet Explorer").listFiles()

//Using IF Statement
print("File Name\t\tSize")
for(f in folder){
  if(f.Extension=="dll" and f.length()/1024 >400)
  print(f.Name+"\t"+f.length()/1024+"KB")
}

print("======================")

//Using GOSU Blocks
print("File Name\t\tSize")
for(f in folder.where( \ f ->f.Extension=="dll" and f.length()/1024 >400)){
  print(f.Name+"\t"+f.length()/1024+"KB")
}


