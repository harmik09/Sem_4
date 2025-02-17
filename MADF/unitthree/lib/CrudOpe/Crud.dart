import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrudOperation extends StatefulWidget {
  const CrudOperation({super.key});

  @override
  State<CrudOperation> createState() => _CrudState();
}

class _CrudState extends State<CrudOperation> {
  List<Map<String, String>> items = [];
  List<Map<String, String>> filteredItems = [];
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterItems);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

    void _add(String name, String age) {
    setState(() {
      items.add({'name': name, 'age': age});
      _filterItems();
    });
    _nameController.clear();
    _ageController.clear();
  }

  void _update(int index, String name, String age) {
    setState(() {
      items[index] = {'name': name, 'age': age};
      _filterItems();
    });
    _nameController.clear();
    _ageController.clear();
  }

  void _delete(int index) {
    setState(() {
      items.removeAt(index);
      _filterItems();
    });
    _nameController.clear();
    _ageController.clear();
  }

  void _filterItems() {
    String query = _searchController.text.toLowerCase();
    setState(() {
      filteredItems = items
          .where((item) =>
      item['name']!.toLowerCase().contains(query) ||
          item['age']!.toLowerCase().contains(query))
          .toList();
    });
  }

  void _showEditDialog(int index) {
    _nameController.text = items[index]['name']!;
    _ageController.text = items[index]['age']!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Edit Item'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(hintText: 'Enter Name'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(hintText: 'Enter age'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              String name = _nameController.text;
              String age = _ageController.text;
              if (name.isNotEmpty &&
                  age.isNotEmpty
                  ) {
                _update(index, name, age);
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('Please enter valid name and age!'),
                ));
              }
            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'CRUD with Search',
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search by name or age',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(hintText: 'Enter Name'),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _ageController,
                  decoration: InputDecoration(hintText: 'Enter age'),
                ),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {
                    String name = _nameController.text;
                    String age = _ageController.text;
                    if (name.isNotEmpty &&
                        age.isNotEmpty ) {
                      _add(name, age);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Please enter valid name and age!'),
                      ));
                    }
                  },
                  child: Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${filteredItems[index]['name']} (${filteredItems[index]['age']})'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => _showEditDialog(index),
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () => _delete(index),
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
    );
  }
}