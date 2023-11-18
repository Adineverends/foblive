import 'package:flutter/material.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 90,
            width: double.infinity,
            padding: EdgeInsets.only(top: 15),
            color: Colors.orange,
            child: ListTile(
              title:   Text('Your free minutes are over.Upgrade to\nPremium for unlimited sessions',style: TextStyle(color: Colors.grey.shade100),),
              trailing: InkWell(child: Icon(Icons.cancel_outlined,color: Colors.white,)) ,
            )
          ),
          Container(
            height: 200,
            padding: EdgeInsets.only(left: 20,right: 20,top: 20),
            color:  Colors.indigo.shade50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  child: ListTile(
                   leading: Image.asset('assets/profileimg.png'),
                    title: Text(
                      'Aditya'
                      ,style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                    ),
                    subtitle:  Text(
                      'Data Structures and Algorithm'
                      ,style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                    ),

                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ),
                SizedBox(height: 25,),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('Complete your profile',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                )
              ],
            ),
          ),

SizedBox(height: 35,),



Padding(
  padding: const EdgeInsets.only(left: 35),
  child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(

          child: Text('Refer & Earn',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),


      SizedBox(height: 30,),


      InkWell(

          child: Text('Contact Us',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)),

      SizedBox(height: 30,),

      InkWell(
        child: Row(

          children: [



            Text('Get',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

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

      SizedBox(height: 30,),
      InkWell(

          child: Text('Privacy Policy',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
      ),
      SizedBox(height: 30,),


      InkWell(

          child: Text('Logout',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),)),
      SizedBox(height: 50,),
      Text('App Version 1.0.1',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),)

    ],
  ),



)
        ],
      ),


    ));
  }
}
