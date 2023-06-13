import 'package:flutter/material.dart';

import 'home_screen.dart';

class CreatePostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade100,
        title: Text('Create Post',
        style: TextStyle(
          color: Colors.white,
        ),),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Implement post creation logic here
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.shade500,
                    width: 1.0,
                  ),
                ),
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Write a caption...',
                    contentPadding: EdgeInsets.all(16.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                // Implement image upload logic here
              },
              child: Container(
                height: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: Colors.grey.shade400,
                    width: 1.0,
                  ),
                ),
                child: Icon(
                  Icons.camera_alt,
                  size: 64.0,
                  color: Colors.grey[400],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement image upload logic here
              },
              child: Text('Upload Image'),
             // color: Colors.blue.shade100,
              //textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
