import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fobliveuser/screens/Navigator/profilepage.dart';
import 'package:fobliveuser/screens/homepage.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {



  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pages = <Widget>[
   homepage(),
    profilepage()
  ];
  int _currentIndex = 0;

  final Connectivity _connectivity = Connectivity();


  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  ConnectivityResult _connectivityResult = ConnectivityResult.none;

  @override
  void initState() {
    super.initState();
    initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((result) {
      setState(() {
        _connectivityResult = result;
      });
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result;
    try {
      result = await _connectivity.checkConnectivity();
    } catch (e) {
      result = ConnectivityResult.none;
    }

    setState(() {
      _connectivityResult = result;
    });
  }


  @override
  Widget build(BuildContext context) {

    if (_connectivityResult == ConnectivityResult.none) {
      return WillPopScope(
        onWillPop: () async {
          // Disable the back button
          return false;
        },
        child: Scaffold(

          body: Padding(
            padding: const EdgeInsets.only(top: 170,left: 34,right: 20),
            child: Column(
              children: [
                Image.asset('assets/nonet.png'),
                SizedBox(height: 23,),
                Text('Whoops!',style: TextStyle(color: Colors.indigoAccent ,fontWeight: FontWeight.bold,fontSize: 30),),
                SizedBox(height: 23,),
                Text('Slow or no internet connections.\nPlease check your internet settings.',style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing: 1),),
                SizedBox(height: 46,),
                InkWell(
                  onTap: (){
                 //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => splashscreen()),);
                  },
                  child: Container(
                    height: 60,
                    width: 290,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black
                    ),
                    child: Text('Try Again',style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1,fontWeight: FontWeight.bold)),
                  ),
                )

              ],
            ),
          ),
        ),
      );

    } else {
      return WillPopScope(
        onWillPop: () async {
          // Disable the back button
          return false;
        },
        child: Scaffold(
          backgroundColor: Colors.black,


          body: IndexedStack(
            index: _currentIndex,
            children: _pages,
          ),

          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.orange,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,

            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.electric_bolt),
                label: 'Instant',
              ),


              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
        ),
      );
    }









  }
}