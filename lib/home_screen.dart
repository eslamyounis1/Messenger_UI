import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 13.5,
        // centerTitle: true,
        backgroundColor: Colors.teal,
        leading:  IconButton(
          icon: const Icon(
          Icons.arrow_back,
          ),
          onPressed: (){
            print("back");
          },
        ),
        title: const Text(
          "Eslam Younis",
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_add,
            ),
            onPressed: () {
              print("button is clicked/pressed");
            },
          ),
          IconButton(
            icon: const Text(
              "hello",
              textAlign: TextAlign.left,
            ),
            onPressed: () {
              print("hi");
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(100.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topEnd: Radius.circular(20.0),
                  bottomStart: Radius.circular(20.0),
                  bottomEnd: Radius.circular(20.0),
                ),


              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,

              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Image(
                    image: NetworkImage(
                      'https://www.farmersalmanac.com/wp-content/uploads/2021/04/forget-me-not-flower-as309740666.jpeg',
                    ),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200,
                    // decoration: const BoxDecoration(
                    //   color: Colors.black,
                    //   backgroundBlendMode: BlendMode.overlay,
                    // ),
                    color: Colors.black.withOpacity(0.7),

                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: const Text(
                      'Eslam',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  //when notification button icon is clicked
  void onNotification() {
    print("button is clicked/pressed");
  }
}
