import 'package:flutter/material.dart';
import 'package:task1/common/common_variables.dart';
import 'package:task1/model/user_model.dart';

class Screen2 extends StatefulWidget {
 List<UserModel>data = [];
  Screen2({
    required this.data,
    super.key,
  });

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: const Color.fromARGB(255, 106, 104, 104),
        title: Text(
          "ID Number : ${CommonVariables.indexNo}",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Container - 1
            Padding(
              padding: const EdgeInsets.only(
                  top: 50.0, left: 20, right: 20, bottom: 10),
              child: Material(
                elevation: 5,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            height: 300,
                            width: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: widget.data[CommonVariables.indexNo].image,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                           Text(
                            widget.data[CommonVariables.indexNo].name,
                            style: TextStyle(
                                fontSize: 18,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(
                            widget.data[CommonVariables.indexNo].email,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: 170,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xff6F6F6F),
                                width: 1,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
