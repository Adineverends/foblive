
import 'package:flutter/material.dart';

class mentorcategory_page extends StatefulWidget {
  const mentorcategory_page({Key? key}) : super(key: key);

  @override
  State<mentorcategory_page> createState() => _mentorcategory_pageState();
}

class _mentorcategory_pageState extends State<mentorcategory_page> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
body: Padding(
  padding: const EdgeInsets.all(15.0),
  child:   Column(
crossAxisAlignment: CrossAxisAlignment.start,
    children: [



        Align(

            alignment: Alignment.topRight,

            child: InkWell(

                onTap: (){
                  Navigator.pop(context);
                },
                child: Image.asset('assets/close.png',height: 20,))),
      SizedBox(height: 25,),
      Text('Select Category',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
      SizedBox(height: 25,),
Row(
  children: [
    Container(
      height: 40,
      // width: 100,
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        //color: Colors.white,
        border: Border.all(color: Colors.grey,width: 2),
        borderRadius: BorderRadius.circular(27),

      ),
      child: Text('Data Structures and Algorithm',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
    ),
    SizedBox(width: 13,),

    Container(
      height: 40,
      // width: 100,
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        //color: Colors.white,
        border: Border.all(color: Colors.grey,width: 2),
        borderRadius: BorderRadius.circular(27),

      ),
      child: Text('Flutter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
    ),


  ],
),
      SizedBox(height: 20,),
      Text('App Devlopment',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            height: 40,
            // width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Swift',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
            // width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Flutter',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
            // width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Kotlin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
            // width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Java',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
            // width: 100,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Iconic',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
        ],
      ),
      SizedBox(height: 10,),
      Container(
        height: 40,
        width: 100,
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          //color: Colors.white,
          border: Border.all(color: Colors.grey,width: 2),
          borderRadius: BorderRadius.circular(27),

        ),
        child: Text('React-Js',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      ),

      SizedBox(height: 20,),
      Text('Web Devlopment',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            height: 40,
             width: 150,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('FrontEnd',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
             width: 150,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('BackEnd',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),




        ],
      ),

      SizedBox(height: 20,),
      Text(' Design',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
      SizedBox(height: 15,),
      Row(
        children: [
          Container(
            height: 40,
            width: 150,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('UI-UX',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),

          Container(
            height: 40,
            width: 150,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: Colors.white,
              border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Graphic Design',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          SizedBox(width: 13,),




        ],
      ),

    ],

  ),
),
        bottomNavigationBar:

          Container(
            height: 60,
            // width: 100,
            margin: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.indigoAccent,
              //border: Border.all(color: Colors.grey,width: 2),
              borderRadius: BorderRadius.circular(27),

            ),
            child: Text('Submit',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.white),),
          ),
      ),
    );
  }
}

