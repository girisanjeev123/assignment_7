import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
                        CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/user.JPG'),
            ),
            const Text.rich(
  TextSpan(
   // default text style
    children: <TextSpan>[
      TextSpan(text: '             Sanjeev Giri\n', style: TextStyle(fontStyle: FontStyle.italic)),
      TextSpan(text: '\n Kyc unverified  '),
      TextSpan(text: 'Verify now', style: TextStyle(fontWeight: FontWeight.bold)),
    
    ],
  ),
),
            const SizedBox(height: 10),
            itemProfile1( CupertinoIcons.bus,'Long travel', 'When you want to travel to long distance from one place to another'),
            const SizedBox(height: 10),
            itemProfile('Booking History'),
            const SizedBox(height: 10),
             itemProfile2('Wallet','you have not verified your kyc.'),
            const SizedBox(height: 10),
             itemProfile('Favorite Destination'),
             const SizedBox(height: 10,),
            itemProfile('settings'),
            const SizedBox(height: 10,),
            itemProfile('Feedback'),
            const SizedBox(height: 10,),
            itemProfile('Customer support'),
            const SizedBox(height: 10,),
            itemProfile('About us'),
            const SizedBox(height: 10,),
            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Log out')
              ),
            )
          ],
        ),
      ),
    );
  }

itemProfile1( IconData iconData,String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
  itemProfile2(String title, String subtitle) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
             
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
  itemProfile(String title) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          ),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}
