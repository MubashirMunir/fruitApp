import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MyDrawer extends StatelessWidget {
   MyDrawer({Key? key}) : super(key: key);
 String imageUrl="https://scontent.fkhi11-2.fna.fbcdn.net/v/t39.30808-6/290707807_732472524538057_8584171042519046813_"
     "n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeECw9IsjSFSZqlVs7VzTdNNDy3UsQFVfNsPLdSxAVV82w8VjVYiVt4Daf1YQ7"
     "MVOJpaUolV8OBvRqo8FZfv2ikD&_nc_ohc=7qCSrmYncG0AX_5vh26&tn=vIzSIW608p-ATgeB&_nc_ht=scontent.fkhi11-2.fna&oh=00_AT"
     "9EvioKkRGF4_3Lv9q-J7oZ-rVivywyoPVBf2LvTIeFCQ&oe=634AD437";
  @override
  Widget build(BuildContext context) {
    return Drawer(elevation: 20,
child: Container(color: Colors.green,
  child:   ListView(
    children: [
      DrawerHeader(padding: EdgeInsets.zero,
          child: UserAccountsDrawerHeader
        (accountName: const Text('Mubashir Munir'),
        accountEmail: const Text('mubasharmunir000@gmail.com'),
          currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl))),),
       ListTile(title:Text('Home',style:TextStyle(color:Colors.white),),
         iconColor: Colors.white,
         leading:Icon(Icons.home),
         trailing: Icon(Icons.arrow_right_outlined,color:Colors.white,),
),
      const ListTile(title: Text('About',style: TextStyle(color: Colors.white),),
        iconColor: Colors.white,
        leading:Icon(Icons.account_box_outlined),
        trailing: Icon(Icons.arrow_right_outlined,color: Colors.white,),
      ),
      const ListTile(title: Text('Home',style: TextStyle(color: Colors.white),),
        iconColor: Colors.white,
        leading:Icon(Icons.home),
        trailing: Icon(Icons.arrow_right_outlined,color: Colors.white,),
      ),
            ListTile(title: const Text('Close',style: TextStyle(color: Colors.white),),
             onTap: () {
         Navigator.pop(context);},
         iconColor: Colors.white,
         leading:Icon(Icons.close),
         trailing: Icon(Icons.arrow_right_outlined,color: Colors.white,),
       ),
       ListTile(title: Text('Home',style: TextStyle(color: Colors.white),),
        iconColor: Colors.white,
        leading:Icon(Icons.exit_to_app),
        trailing: Icon(Icons.arrow_right_outlined,color: Colors.white,),
      ),
    ]
  ),
),
    );
  }
}
