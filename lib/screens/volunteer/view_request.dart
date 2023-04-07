
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garbage_management/api.dart';
import 'package:garbage_management/screens/volunteer/Volunteer_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ViewRequest extends StatefulWidget {
  const ViewRequest({Key? key}) : super(key: key);

  @override
  State<ViewRequest> createState() => _ViewRequestState();
}

class _ViewRequestState extends State<ViewRequest> {
  String complaint='';
  late SharedPreferences localStorage;

  late String login_id;
  late bool _isExpanded;
  late bool isExpanded=false;
  List request = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  getLogin();
    viewRequest();
    _isExpanded = false;
  }

  void viewRequest()async{
    localStorage = await SharedPreferences.getInstance();
    login_id = (localStorage.getString('login_id') ?? '');

    var res = await Api().getData('/request/view-all-request');
    var body = json.decode(res.body);
    print(body);
    if (res.statusCode == 201) {
      var body = json.decode(res.body)['data'];
      print(body);
      setState(()  {
        request = body;


      });
    } else {
      setState(() {
        request = [];
        Fluttertoast.showToast(
          msg: "No Complaints yet",
          backgroundColor: Colors.grey,
        );


      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Garbage Management"),
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Volunteeerhome(),
          ));
        },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text("Requests", style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent
                  ),),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: request.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Text(request[index]['garbage_status']),
                                        request[index]['date']==null?Text("No date available"):Text( request[index]['date']),
                                      ],
                                    ),


                                  ),
                                  /*    ExpandIcon(
                          isExpanded: _isExpanded,
                          color: Colors.black,
                          expandedColor: Colors.black,
                          disabledColor: Colors.grey,
                          onPressed: (bool isExpanded) {
                            setState(() {
                              _isExpanded = isExpanded;
                            });
                          },
                        ),*/

                                ],
                              ),
                            ],
                          ),
                        )


                    );
                  },
                )
              ]),
        ),

      ),

    );
  }
  }
