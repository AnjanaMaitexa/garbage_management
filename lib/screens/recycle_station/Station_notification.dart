import 'package:flutter/material.dart';
import 'package:garbage_management/screens/recycle_station/station_home.dart';

import '../volunteer/Volunteerlogin.dart';

class Stationnotification extends StatelessWidget {
  const Stationnotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        "images/Wavy_Bus-22_Single-05.jpg",
                      ),
                      fit: BoxFit.fill,
                    )),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,right: 20,),
              child: TextField(
                style: TextStyle(color: Colors.black26),
                cursorColor: Colors.blue,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.message,
                    color: Colors.black12,
                  ),
                  label: Text(
                    "Notifications",
                    style: TextStyle(color: Colors.black26),
                  ),
                  // suffixIcon: Icon(Icons.mic,color: Colors.green,),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 20),
                    child: Container(
                      height: 50,
                      width: 50,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.amber,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 4,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      child: Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Apsouce",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(

                  child: Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Stationhome()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.amber,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 4,
                                blurRadius: 5,
                                offset: Offset(0, 3),
                              ),
                            ]),
                        child: Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Reject",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "About Notifications ?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.amber),
                  ),
                )
              ],
            ),

          ],

        ),
      ),

    );
  }
}
