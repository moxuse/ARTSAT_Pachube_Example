import processing.serial.*;
import cc.arduino.*;
import eeml.*;

DataIn dataIn;

int feedId = 12467;
String feedURL = "http://www.pachube.com/api/feeds/";
String apiKey = "API KEY";


void setup(){  
    dataIn = new DataIn(this,feedURL + feedId + ".xml", apiKey ,10000);  
}

void draw(){ 
}


void onReceiveEEML(DataIn d){ 
  if (dataIn == d) {           
       println ("feed " + " which is feed ID: " + " where datastream 0 = " + d.getValue(1));
     }
}
