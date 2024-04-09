import 'package:ecommerceai/userscreens/addresslist.dart';
import 'package:ecommerceai/userscreens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerceai/userscreens/profileedit.dart';
import 'package:ecommerceai/userscreens/notification screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AccountPage(),
    );
  }
}

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.notifications), // Notification icon
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => NotificationScreen()),
                            );
                            // Add onPressed functionality for notification icon
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.chat),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChatScreen()),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 33.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  margin: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child:Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.person,
                            size: 50,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John Doe',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '+1234567890',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Navigate to the profile edit page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AddressList()),
                          );
                        },
                        child: _buildListItem(
                          icon: Icons.account_circle,
                          title: 'Orders',
                          subheading: 'Check your Order Status',
                          context: context,
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildListItem(
                        icon: Icons.favorite,
                        title: 'Wishlist',
                        subheading: 'Check items in your wishlist',
                        context: context,

                      ),

                      SizedBox(height: 10),

                      GestureDetector(
                        onTap: () {
                          // Navigate to the profile edit page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EditProfilePage(name: "John Deo",phoneNumber: "+1234567890",)),
                          );
                        },
                        child: _buildListItem(
                          icon: Icons.account_circle,
                          title: 'Account',
                          subheading: 'Edit your profile',
                          context: context,
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildListItem(
                        icon: Icons.lock,
                        title: 'Password',
                        subheading: 'Change your password',
                        context: context,
                      ),
                      SizedBox(height: 10),
                      _buildListItem(
                        icon: Icons.logout,
                        title: 'Logout',
                        subheading: 'Logout from your account',
                        context: context,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200], // Example color
        selectedItemColor: Colors.red, // Example color
        unselectedItemColor: Colors.grey, // Example color
        type: BottomNavigationBarType.fixed,
        currentIndex: 4, // Index of the "Account" icon
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Account"),
        ],
      ),
    );
  }

  Widget _buildListItem({
    required IconData icon,
    required String title,
    required String subheading,
    required BuildContext context,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subheading),
        onTap: () {
          if (title == 'Account') {
            // Navigate to the profile edit page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditProfilePage(name: "",phoneNumber: "",)),
            );
          }else if (title == 'Orders') {
            // Navigate to the AddressList
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AddressList()),
            );
          } // Add functionality for each list item onTap
        },
        //
      ),

    );
  }
}
