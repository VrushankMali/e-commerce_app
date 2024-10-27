import 'package:ecommerce_app/pages/about_page.dart';
import 'package:flutter/material.dart';
import '../components/bottom_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget
{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  //This selected index is to control the bottom nav bar.
  int _selectedIndex = 0;

  //This method will update our selected index when user taps on the bottom bar.
  void navigateBottomBar(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Pages to display.
  final List<Widget> _pages = [
    //Shop Page
    const ShopPage(),

    //Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Padding(
                padding: EdgeInsets.only(left: 13.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                //Logo
                DrawerHeader(
                  child: Image.asset(
                    'lib/image/f1logo.png',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(color: Colors.grey[800],),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      //color: Colors.grey[300],
                      color: Colors.red[600],
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                        //color: Colors.grey[300],
                        color: Colors.red[600],
                        fontFamily: 'Monospace',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: GestureDetector(
                    onTap: () {
                      //Pop drawer first
                      Navigator.pop(context);

                      //Go to about page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutPage(),
                        ),
                      );
                    },
                    /*onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AboutPage(),
                      ),
                    ),*/
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        //color: Colors.grey[300],
                        color: Colors.red[600],
                      ),
                      title: Text(
                        'About',
                        style: TextStyle(
                          //color: Colors.grey[300],
                          color: Colors.red[600],
                          fontFamily: 'Monospace',
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                bottom: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  //color: Colors.grey[300],
                  color: Colors.red[600],
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    //color: Colors.grey[300],
                    color: Colors.red[600],
                    fontFamily: 'Monospace',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}