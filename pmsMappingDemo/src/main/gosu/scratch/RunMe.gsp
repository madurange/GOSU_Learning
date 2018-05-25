uses gw.xml.XmlElement
uses javax.xml.namespace.QName
uses java.io.OutputStream
uses java.io.FileOutputStream
uses gw.xml.XmlSerializationOptions
uses java.io.File

//Input of the message mapping xml file (pmsMapping.xml) and creating a XmlElement Object for the xml
var inputXml=new File("C:\\Users\\PGUSTHIN\\.GosuLab\\MAIN PROJECTS\\pmsMappingDemo\\data\\pmsMapping.xml")
var xmlIn=XmlElement.parse( inputXml )

//Second Approach to the problem ==> WORKED 100%
//Considering the very first charater 'A' after each contract code is not a part of the message.

//Input of the message from the file pmsMessage.data and converting it into a Char Array
var inputMessage=new File("C:\\Users\\PGUSTHIN\\.GosuLab\\MAIN PROJECTS\\pmsMappingDemo\\data\\pmsMessage.data").read()
var charMessage:char[]=inputMessage.toCharArray()
//The index varibale to reach every character of the message
var i=0

//Iterating through every single character in order to extract the corresponding values according to the pmsMapping.xml 
while(i<charMessage.length){
  
  //Extracting of the contract code into a String (SubString until a whitespace)
  var contractCode=""
  while(charMessage[i]!=' '){
    contractCode=contractCode+charMessage[i]
    i++    
  }
  //Incrementing the index variable till the beginning of the correspoing message (Index after the 'A')
  while(charMessage[i]!='A'){
    i++
  }
  i++
 
  //Printing a Header for each contract code
  print("\n<<<<< Information of "+contractCode+" >>>>>")
  //Getting the correspoding XML mapping to the extracted contract code
  var lengthValues=xmlIn.getChild( contractCode )
  
  //Iterating through all the children and printing correspoding mapping value according to the length value of the children
  for(child in lengthValues.$Children){
    var value=child.getAttributeValue( "length" ).toInt()
    //Building the message part according to the length value
    var messagePart=""
    for(x in 1..value){
      messagePart+=charMessage[i]
      i++
    }
    
    //Printing value Name along with the corresponding message part
    print(child.$QName.LocalPart.rightPad( 50 )+": "+messagePart)
  }
}
