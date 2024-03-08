import 'package:custom_widget_239/app_widgets/app_custom_container.dart';
import 'package:custom_widget_239/app_widgets/app_custom_elvated_btn.dart';
import 'package:custom_widget_239/utils/app_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppCustomElevatedBtn(
              onTap: (){
                print("Started Playing..");
              },
              mBorderRadius: 5,
              mSize: Size(350, 40),
                mTitle: "Play",
                mIconData: Icons.play_arrow,
              mBgColor: Colors.grey,
              mFgColor: Colors.black,
            ),
            TextField(
              decoration: getAppInputDecoration()
            ),
            AppCustomContainer(onTap: (){
              print("THis will not print");
            }, isEnable: false,),

            AppCustomContainer(onTap: (){
              print("THis will print");
            }),
            SizedBox(
              height: 11,
            ),
            AppCustomElevatedBtn(
              onTap: (){
                print("Login..");
              },
                mTitle: "Login", mSize: Size(300, 40)),
            SizedBox(
              height: 11,
            ),
            AppCustomElevatedBtn(
              onTap: (){
                print("Logout..");
              },
              mTitle: "Logout", mBorderRadius: 25,)
          ],
        ),
      ),
    );
  }

}
