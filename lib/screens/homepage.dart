import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fobliveuser/screens/mentorcategorypage.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(

          title: Text('Custom AppBar'),
          // Add any other customizations you need
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25,left: 18),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi Adi,',style: TextStyle(fontSize: 18),),
                  SizedBox(height: 15,),
                  Text('Need help? We are\nalways here for you.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                ],
              ),
            ),
            
            SizedBox(height: 258,),

           Container(
             height: 260,
             width: double.infinity,
             decoration: BoxDecoration(
               color: Colors.indigo.shade50,
               borderRadius: BorderRadius.only(topRight: Radius.circular(28),topLeft: Radius.circular(28))
             ),
             child: Padding(
               padding: const EdgeInsets.all(25.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     children: [
                       Text('Recent Sessions',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600,fontSize: 17),),
                       SizedBox(width: 160,),
                       InkWell(

                         onTap: (){
                           
                         },
                           child: Text('view all',style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.w600,fontSize: 15),)),
                     ],
                   ),
                   
                   SizedBox(
                     height: 20,
                   ),
                   
                   Container(
                     height: 90,
                     width: double.infinity,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                         Container(
                           height: 80,
                           width: 120,
                           decoration: BoxDecoration(
                             color: Colors.indigoAccent,
                             borderRadius: BorderRadius.circular(20)
                           ),
                         ),

                         SizedBox(width: 8,),

                         Container(
                           height: 80,
                           width: 120,
                           decoration: BoxDecoration(
                               color: Colors.indigoAccent,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),

                         SizedBox(width: 8,),

                         Container(
                           height: 80,
                           width: 120,
                           decoration: BoxDecoration(
                               color: Colors.indigoAccent,
                               borderRadius: BorderRadius.circular(20)
                           ),
                         ),

                       ],
                     ),
                   ),
                   SizedBox(
                     height: 20,
                   ),
                   Row(
                     children: [
                       InkWell(
                         onTap:(){

           },

                         child: Container(
                           height: 50,
                           width: 150,
                           decoration: BoxDecoration(
                               //color: Colors.indigoAccent,
                             border: Border.all(color: Colors.black),
                               borderRadius: BorderRadius.circular(23)
                           ),
                           child: Row(

                             children: [

                               SizedBox(width: 5,),

                               Text('Foblive',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),

                               SizedBox(width: 6,),

                               Container(
                                 height: 26,
                                 width: 70,
                                 alignment: Alignment.center,
                                 decoration: BoxDecoration(
                                     color: Colors.redAccent,
                                     // border: Border.all(color: Colors.black),
                                     borderRadius: BorderRadius.circular(8)
                                 ),

                                 child: Text('Premium',style: TextStyle(color: Colors.white),),

                               ),

                             ],
                           ),
                         ),
                       ),

                   SizedBox(width: 9,),

                       InkWell(
                         onTap: (){

                         },
                         child: Container(
                           height: 50,
                           width: 180,
                           alignment: Alignment.center,
                           decoration: BoxDecoration(
                             color: Colors.indigoAccent,
                              // border: Border.all(color: Colors.black),
                               borderRadius: BorderRadius.circular(23)
                           ),
                           child:  Text('Connect to mentors',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                         ),
                       ),

                     ],
                   )
                   
                 ],
               ),
             ),
           )


          ],
        )
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;

  CustomAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade50,
      // Customize the background color
      padding: EdgeInsets.all(12.0), // Add padding or other custom styles
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         InkWell(

           onTap: (){

             Navigator.of(context).push(CupertinoPageRoute(fullscreenDialog: true, builder: (_) => mentorcategory_page()),);

           },

           child: Row(
             mainAxisSize: MainAxisSize.min,
             children: [
               Container(
                 height: 80,
                // width: 100,
                 padding: EdgeInsets.all(5),
                 alignment: Alignment.center,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(20),

                 ),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     Text('Data Structures and Algorithm',style: TextStyle(),),
                     SizedBox(width: 10,),
                     Icon(Icons.keyboard_arrow_down,color: Colors.indigoAccent,)
                   ],
                 ),
               ),
             ],
           ),

         ),
          SizedBox(width: 6,),
          InkWell(

            onTap: (){},

            child: Container(
              height: 50,
              width: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
               // borderRadius: BorderRadius.circular(20),

              ),
              child:Icon(Icons.mail_outline,color: Colors.indigoAccent,)
            ),

          ),

        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}