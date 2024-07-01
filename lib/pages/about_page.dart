import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Stack(children: [
        Container(
          width: size.width,
          height: size.height,
          child: Image.asset(
            'assets/images/bg-about.png',
            fit: BoxFit.cover,
          ),
        ),
        const Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/109224556?v=4'),
                ),
              ),
              SizedBox(height: 10),
              Text('Muhammad Tsalman Alfarisi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                'Web Developer',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'NotesAppMobile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text('©2024 itg.ac.id'),
            ],
          ),
        ),
      ]),
    );
  }
}
