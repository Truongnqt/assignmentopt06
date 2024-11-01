import 'package:assignmentopt06/ProfileComponents/MenuSectionComponent.dart';
import 'package:assignmentopt06/ProfileComponents/NavMenuComponent.dart';
import 'package:assignmentopt06/ProfileComponents/ProfileInforComponent.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true,
          child: ListView(
            controller: _scrollController,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    BackButton(),
                    SizedBox(width: 16),
                    Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              ProfileInfo(),
              MenuSection(),
              const SizedBox(height: 16),
              NavMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
