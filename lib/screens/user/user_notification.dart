import 'package:flutter/material.dart';
import 'package:garbage_management/Widgets/background.dart';
import 'package:garbage_management/screens/user/notify_model.dart';
import 'package:garbage_management/screens/user/user_home.dart';


class Usernotification extends StatefulWidget {
  const Usernotification({Key? key}) : super(key: key);

  @override
  State<Usernotification> createState() => _UsernotificationState();
}

class _UsernotificationState extends State<Usernotification> {
  List model = [
    NotifyModel(notid: "101",notify:"garbage is full"),
  NotifyModel(notid: "102",notify:"issue"),
  NotifyModel(notid: "103",notify:"issue"),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(image: 'images/2992779.jpg'),
        Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            title: Text(
              'Notifications',
              style: TextStyle(fontSize: 22, color: Colors.white, height: 1.5),
            ),
            centerTitle: true,
          ),
          body: Container(
            child: Column(children: <Widget>[
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: model.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      color: Colors.black54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Id:" + model[index].notid.toString(),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Text(model[index].notify,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Ok")),
                        ],
                      ),
                    ),
                  );
                },
              )
            ]),
          ),
        ),
      ],
    );
  }
}
    /* SingleChildScrollView(
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
                        "images/2992779.jpg",
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: double.maxFinite,
                decoration: BoxDecoration(border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 4,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ]),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Userhome()),
                  );
                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.red,
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
                      Text("Ok",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ),


          ],),),


    );
  }
}
*/