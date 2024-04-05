import 'package:flutter/material.dart';
import 'package:task1/common/common_variables.dart';
import 'package:task1/screen/screen2.dart';

import '../model/user_model.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    List<UserModel> personalData = [
      UserModel(
          name: "Digvijay",
          email: "dpatil8118@gmail.com",
          image: Image.network(
              "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
      UserModel(
        name: "Rohit",
        email: "rohit8118@gmail.com",
        image: Image.network(
            "https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
      ),
      UserModel(
        name: "Amol",
        email: "amol8118@gmail.com",
        image: Image.network(
            "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
      ),
      UserModel(
        name: "Prem",
        email: "prem8118@gmail.com",
        image: Image.network(
            "https://images.pexels.com/photos/1121796/pexels-photo-1121796.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
      ),
      UserModel(
          name: "Swapnil",
          email: "swapnil8118@gmail.com",
          image: Image.network(
              "https://images.pexels.com/photos/428333/pexels-photo-428333.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 106, 104, 104),
        title: Text(
          "Contacts",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 3.0, left: 3, top: 3, bottom: 3),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: personalData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5, top: 1),
                      child: Card(
                        color: Colors.white,
                        elevation: 5,
                        child: ListTile(
                          title: Text(personalData[index].name),
                          subtitle: Text(personalData[index].email),
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: personalData[index].image,
                          ),
                          trailing: InkWell(
                              onTap: () {
                                // access userId
                                CommonVariables.indexNo = index;

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen2(

                                            // pass data to the Screen2
                                            data: personalData)));
                              },
                              child: const Icon(Icons.arrow_circle_right_outlined)),
                        ),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
