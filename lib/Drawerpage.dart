import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_04/Favourite.dart';
import 'package:project_04/Notifypage.dart';
import 'package:project_04/Privacy.dart';

class Drawerpage extends StatefulWidget{
  const Drawerpage({super.key});

  @override
  State<StatefulWidget> createState() => _DrawerpageState();

}

class _DrawerpageState extends State<Drawerpage> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text("Drawer"),),
    drawer:  Drawer(
      backgroundColor: Colors.blueAccent,
      width: 225,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        color: Colors.indigoAccent,
        child: ListView(
          children: [
            Row(
            children: [
              SizedBox(
                height: 50,
                  width: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const Icon(Icons.account_circle,size: 50,color: Colors.white,),
                  ),
              ),
              const SizedBox(width: 10,),
              const Text("Account",style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),)
            ],
          ),
            const Divider(color: Colors.white,),
            _listitem(title: "Privacy Policy",icon: const Icon(Icons.security_rounded),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Privacy()));
            }),
            _listitem(title: "Favourites",icon: const Icon(Icons.favorite),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Favourite()));
            }),
            _listitem(title: "Notifications",icon: const Icon(Icons.notifications),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Notifypage()));
            }),
            const Divider(color: Colors.white,),
            _listitem(title: "Help",icon: const Icon(Icons.help),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Privacy()));
            }),
            _listitem(title: "Report",icon: const Icon(Icons.report),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Privacy()));
            })
          ],
        ),
      ),
    ),
  );
  }

}

_listitem({required String title, required Icon icon,required VoidCallback onTap})
{
  return ListTile(
    onTap: onTap,
    leading: icon,
    iconColor: Colors.white,
      textColor: Colors.white,
    title: Text(title),
  );
}

