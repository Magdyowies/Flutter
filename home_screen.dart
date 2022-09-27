
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          " First App",
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notification_important,
            ),
            onPressed: onNotification,
          ),
          IconButton(
            icon: Text(
              'Hello',
            ),
            onPressed: () {},
          ),
          Icon(
            Icons.search,
          )
        ],
      ),
      body : Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0,),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,

               children: [
                 Image(
                   image: NetworkImage(
                   'https://gulfbusiness.com/wp-content/uploads/2022/03/Luzy-Aziz-Image-1-800x476.jpeg'

                 ),
                   alignment: Alignment.center,
                   height: 200.0,
                   width: 300.0,
                   fit: BoxFit.cover,
                 ),
                 Container(
                    width: 300.0,
                   color: Colors.black.withOpacity(.8),
                   padding: EdgeInsets.symmetric(
                     horizontal: 10.0,
                     vertical: 10.0,

                   ),
                   child: Text('Aziza El Gohery',textAlign: TextAlign.center,
                     style: TextStyle(
                       fontSize : 20.0,
                       color: Colors.white,

                   ),),
                 )
               ],
              ),
            ),
          ),
        ],
      ),

        );

  }
  void onNotification ()
  {
    print('notification clicked');
  }
}
