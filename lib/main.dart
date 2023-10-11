import 'package:drawer/account.dart';
import 'package:drawer/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("HomePage "),
          centerTitle: true,
        ),
        body: Container(
              child: Text("""This is Homepage how are you i ma fine and you , 
                                          nice to meet you , 
                                          i want to go with you in flutter"""),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blue.shade200
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      child: Image.network(
                        'https://scontent.fdac31-1.fna.fbcdn.net/v/t39.30808-6/350777557_255859590450839_1419064578877732114_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=a2f6c7&_nc_eui2=AeEivcDvR972kzdTTPmLM8685SahwI4PI_HlJqHAjg8j8clf9C7bRXdqjL4FD2LsGN0RQAW69Rkbm02-HCmwZ1Dw&_nc_ohc=poRAerYhFzYAX-vMdh3&_nc_ht=scontent.fdac31-1.fna&oh=00_AfBmnak3d6DMpLuSgkZAg8hLHi23JBmc07OsbHNSy6u4iQ&oe=6517049D',
                        height: 100,
                        width: 100,),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    Text("\nAshik Ahmed Sajib", style: TextStyle(
                        fontSize: 15.5, fontWeight: FontWeight.bold),)

                  ],
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  ListTile(
                    title: Text('Account'),
                    leading: Icon(Icons.account_box),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                  ),
                  ListTile(
                    title: Text('Cart'),
                    leading: Icon(Icons.shopping_cart_rounded),
                    onTap: ()=>
                        {
                          Navigator.pop(context),
                          Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Cart()))

                        },
                  ),
                  ListTile(
                    title: Text('Logout'),
                    leading: Icon(Icons.logout),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}