import 'package:flutter/material.dart';
 
class MainScreen extends StatefulWidget {
  final String email;

 MainScreen({Key key,this.email}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        backgroundColor:  Colors.red,
          title: Text('My Carboot'),
        ),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 15,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            //backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            //backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            //backgroundColor: Colors.blue
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          }
            
          ) 
          ),
        );
      
    
  }

}
 
