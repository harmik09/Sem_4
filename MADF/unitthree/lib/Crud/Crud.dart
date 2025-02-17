import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  List<Map<String, dynamic>> UserList = [];
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  void insert({required firstname, required lastname, required age}) {
    Map<String, dynamic> map = {};
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['age'] = age;
    UserList.add(map);
  }

  void delete({required index}) {
    UserList.removeAt(index);
  }

  void update(
      {required firstname, required lastname, required age, required index}) {
    Map<String, dynamic> map = {};
    map['firstname'] = firstname;
    map['lastname'] = lastname;
    map['age'] = age;
    UserList[index] = map;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'CRUD Operation',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Here',
                labelText: 'Serach Here',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                hintText: 'First Name',
                labelText: 'First Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                hintText: 'Last Name',
                labelText: 'Last Name',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                hintText: 'Age',
                labelText: 'Age',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    insert(
                        firstname: firstnameController,
                        lastname: lastnameController,
                        age: ageController);
                  });
                  print(UserList);
                },
                child: Text('Add')),
            Expanded(
              child: ListView.builder(
                itemCount: UserList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      "${UserList[index]['firstname']} ${UserList[index]['lastname']} ",
                    ),
                    subtitle: Text(
                      "Age is ${UserList[index]['age']}",
                    ),
                    trailing: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Edit'),
                              ),
                            );
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            delete(index: index);
                          },
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
