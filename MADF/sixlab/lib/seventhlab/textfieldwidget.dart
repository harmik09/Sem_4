import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key});

  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Field Widget'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: textController,
                decoration: InputDecoration(
                  labelText: 'Enter Text',
                  hintText: 'Enter some text',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20), // Adds spacing
              ElevatedButton(
                onPressed: () {
                  // Retrieve and print the entered text
                  String inputText = textController.text;
                  if (inputText.isNotEmpty) {
                    print('Entered Text: $inputText');
                  } else {
                    print('No text entered.');
                  }
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
