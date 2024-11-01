import 'package:assignmentopt06/Screen/404NotFoundComponent.dart';
import 'package:assignmentopt06/Screen/AccountSetUp/AccountSetUpStep1.dart';
import 'package:assignmentopt06/Screen/AccountSetUp/AccountSetUpStep3.dart';
import 'package:assignmentopt06/Screen/AccountSetUp/AccountSetUpStep4.dart';
import 'package:assignmentopt06/Screen/AccountSetUp/AccountSetupStep2.dart';
import 'package:assignmentopt06/Screen/AddingCard/AddCardIntroScreen.dart';
import 'package:assignmentopt06/Screen/AddingCard/AddCardScreen.dart';
import 'package:assignmentopt06/Screen/AddingCard/CardAddedScreen.dart';
import 'package:assignmentopt06/Screen/AddingCard/CardVerificationScreen.dart';
import 'package:assignmentopt06/Screen/SetUpAccountComponent.dart';
import 'package:assignmentopt06/Screen/Spending/SpendingScreen.dart';
import 'package:assignmentopt06/Screen/SupportScreen.dart';
import 'package:assignmentopt06/components/DropMenuComponent.dart';
import 'package:assignmentopt06/components/ListItemComponents.dart';
import 'package:assignmentopt06/components/MenuItemcomponent.dart';
import 'package:assignmentopt06/components/ItemComponents.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:
           AddCardFormScreen()//const MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 2;

  // Sample transaction data
  final List<Itemcomponents> transactions = [
    Itemcomponents(
      icon: Icons.shopping_cart,
      iconColor: Colors.blue,
      title: "Shopping",
      amount: "-\$120",
      amountColor: Colors.red,
      description: "Grocery shopping",
      date: DateTime.now(),
    ),
    Itemcomponents(
      icon: Icons.attach_money,
      iconColor: Colors.green,
      title: "Salary",
      amount: "+\$3,500",
      amountColor: Colors.green,
      description: "Monthly salary",
      date: DateTime.now(),
    ),
    Itemcomponents(
      icon: Icons.restaurant,
      iconColor: Colors.orange,
      title: "Restaurant",
      amount: "-\$85",
      amountColor: Colors.red,
      description: "Dinner",
      date: DateTime.now(),
    ),
    Itemcomponents(
      icon: Icons.shopping_cart,
      iconColor: Colors.blue,
      title: "Shopping",
      amount: "-\$120",
      amountColor: Colors.red,
      description: "Grocery shopping",
      date: DateTime.now(),
    ),
    Itemcomponents(
      icon: Icons.attach_money,
      iconColor: Colors.green,
      title: "Salary",
      amount: "+\$3,500",
      amountColor: Colors.green,
      description: "Monthly salary",
      date: DateTime.now(),
    ),
    Itemcomponents(
      icon: Icons.restaurant,
      iconColor: Colors.orange,
      title: "Restaurant",
      amount: "-\$85",
      amountColor: Colors.red,
      description: "Dinner",
      date: DateTime.now(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        elevation: 0,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: InputBorder.none,
              hintText: 'Search "Payments"',
              hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.7), fontFamily: 'Roboto'),
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Icon(Icons.emoji_events_outlined, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                print('Click');
              },
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Scrollbar(
        thickness: 6,
        radius: const Radius.circular(10),
        child: Container(
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              Container(
                color: Colors.blue[700],
                height: 270,
                width: double.infinity,
                child: Column(
                  children: [
                    Dropmenucomponent(),
                    const SizedBox(height: 16),
                    const Text(
                      '\$20,000',
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Available Balance",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      height: 37,
                      width: 170,
                      child: ElevatedButton(
                        onPressed: () {
                          print('Add Money button clicked');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          overlayColor: Colors.white.withOpacity(0.1),
                          side: const BorderSide(color: Colors.white, width: 2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 12,
                          ),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.payment_outlined,
                                color: Colors.white, size: 16),
                            SizedBox(width: 12),
                            Text(
                              'Add Money',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 200,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Menuitemcomponent(),
                      const SizedBox(height: 24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Transaction',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: Colors.grey[600]),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Expanded(
                        child: ListItemComponents(itemsComponent: transactions),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue[700],
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
    );
  }
}
