import 'package:flutter/material.dart';
import 'package:mediaPlayerApp/data.dart';
import 'package:mediaPlayerApp/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

List <Music> list;

@override
void initState(){
  list = Music.list;
  super.initState();

}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF292D32),
      body:SafeArea(
        child:Column(
        children: [
        SizedBox(height:20),
        Container(
          child:Text("EVOL-FUTURE",style: TextStyle(
            color:Colors.grey,fontWeight:FontWeight.bold
          ),
          )
        ),
        SizedBox(height:80),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
          Container(
            margin: EdgeInsets.only(left:10),
            height: 40,
            width: 40,
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
            child: IconButton(icon: Icon(Icons.favorite), onPressed:(){},color: Colors.grey,),
            
            ),

            Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
               boxShadow: [
                BoxShadow(
                  color:Colors.white.withOpacity(0.3),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8
                ),

                 BoxShadow(
                  color:Colors.black.withOpacity(0.2),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 8
                ), 
              ],
              color: Color(0xFF292D32),
              shape: BoxShape.circle
            ),
          child: InkWell(
            onTap:(){
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=>PAGE(),
                )
                );

            },
            child: ClipOval(
            child: Image.asset(
              "assets/pic.png",
               fit: BoxFit.cover,
               
            ),
           )
          ),
           
          ),

           Container(
            margin: EdgeInsets.only(right:10),
            height: 40,
            width: 40,
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
              shape: BoxShape.circle
            ),
            child: IconButton(icon: Icon(Icons.more_horiz), onPressed:(){},color: Colors.grey,),
            )

        ]
        ),

        SizedBox(height:20),
       
      Expanded(
          child: ListView.builder(
           itemCount: list.length,
           itemBuilder:(context,index){

             return Container(
               padding: EdgeInsets.only(top: 10,bottom:8,left: 10),
               child:Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                    Text(list[index].title,style: TextStyle(color: Colors.white,fontSize: 17),),
                    Text(list[index].albumb,style: TextStyle(color:Colors.grey,fontSize: 12),)
                  ]
                ),

           Container(
            margin: EdgeInsets.only(right:10),
            height: 40,
            width: 40,
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
              shape: BoxShape.circle
            ),
            child: IconButton(
              icon: Icon(Icons.play_arrow), 
              onPressed:(){},
              color: Colors.grey,),
            )

               ],
               )

             );

           }
           
           ),
       )
       
       ],
      )
    )
    );
  }
}