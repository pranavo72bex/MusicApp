import 'package:flutter/material.dart';

class PAGE extends StatefulWidget {
  @override
  _PAGEState createState() => _PAGEState();
}

class _PAGEState extends State<PAGE> {

  int sliderHeight=180;
  int maxValue=220;
  int minvalue=120;
  
  @override
  Widget build(BuildContext context) {

    //final String storeData = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Color(0xFF292D32),
      body:SafeArea(child: Column(children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children:[
            Container(
            margin: EdgeInsets.only(left:10,top: 10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.2),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow( color:Colors.black.withOpacity(0.3),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 16
                ), 
              ],
              color: Color(0xFF292D32),
              shape: BoxShape.circle,
            ),
            child: IconButton(
            icon: Icon(Icons.arrow_back), 
            onPressed:(){},
            color: Colors.grey,),
            
            ),
            Text("Playing Now",style: TextStyle(color:Colors.grey,fontSize:14),),

            Container(
              margin: EdgeInsets.only(right:10,top: 10),
              height:40,
              width:40,
              decoration:BoxDecoration(
                boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.2),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),
                BoxShadow(
                  color:Colors.black.withOpacity(0.1),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),
                ],
                
              color: Color(0xFF292D32),
              shape: BoxShape.circle,
                
              ),
              child: IconButton(icon: Icon(Icons.menu), onPressed:(){},color: Colors.grey,),
            )
         ]
       ),

       SizedBox(height:30),
     
      Center(
        child: Container(
            height: 220,
            width: 220,
            decoration: BoxDecoration(
               boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.3),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow(
                  color:Colors.black.withOpacity(0.3),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 8
                ), 
              ],
                color: Color(0xFF292D32),
              shape: BoxShape.circle
            ),

            child: ClipOval(
           child: Image.asset(
              "assets/pic.png",
               fit: BoxFit.cover,
            ),
           ) 
          ),
      ),

      SizedBox(height:30),
       Center(
         child: Column(
           children:[
            Text("Low Life",style: TextStyle(fontSize:20,color: Colors.white),),
            SizedBox(height:10,),
            Text("Future ft.The Weeknd",style: TextStyle(fontSize:10,color: Colors.grey),),
           ]
         )

       ),
      SizedBox(height:30),
     
      Container(
        child:Text(sliderHeight.toString(),style: TextStyle(color: Colors.grey),)
      ),

      
  
     Container(
      child: Slider(
        value: sliderHeight.toDouble(),
        min: minvalue.toDouble(),
        max: maxValue.toDouble(),
        activeColor: Color(0xFFEB1555),
        inactiveColor: Color(0xFF8D8E98), 
        onChanged:(double newValue) {
          setState(() {
            sliderHeight=newValue.round();
          });
        }

        ),
      ),
      SizedBox(height:30,),
          
      Container(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           Container(
            margin: EdgeInsets.only(left:10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.2),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow(
                  color:Colors.black.withOpacity(0.3),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 16
                ), 
              ],
              color: Color(0xFF292D32),
              shape: BoxShape.circle,
            ),
            child: IconButton(icon: Icon(Icons.fast_rewind), onPressed:(){},color: Colors.grey,),
            
            ),
             Container(
            margin: EdgeInsets.only(left:10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.2),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow(
                  color:Colors.black.withOpacity(0.3),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 16
                ), 
              ],
              color: Color(0xFF292D32),
              shape: BoxShape.circle,
            ),
            child: IconButton(icon: Icon(Icons.pause), onPressed:(){},color: Colors.grey,),
            
            ),
             Container(
            margin: EdgeInsets.only(left:10),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.2),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow(
                  color:Colors.black.withOpacity(0.3),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 16
                ), 
              ],
              color: Color(0xFF292D32),
              shape: BoxShape.circle,
            ),
            child: IconButton(icon: Icon(Icons.fast_forward), onPressed:(){},color: Colors.grey,),
            
            ),




        ],)
      )

      ],
      )
      
    ));
  }
}