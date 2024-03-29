import 'package:e_commers_app/pages/home.dart';
import 'package:e_commers_app/pages/myProduct.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/img/eg2.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("assets/img/mm.jpg"),
                  ),
                  currentAccountPictureSize: Size.square(100),
                  accountName: Text("Mahmoud Adel"),
                  accountEmail: Text("mahmoud@yahoo.com")),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: ((context) => Home())));
                },
              ),
              ListTile(
                leading: const Icon(Icons.add_shopping_cart),
                title: const Text("My Product"),
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MyProduct())));
                },
              ),
              ListTile(
                leading: const Icon(Icons.help_center),
                title: const Text("Help"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Logout"),
                onTap: () {},
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Devoloped by \"Mahmoud Adel Ali\"",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
