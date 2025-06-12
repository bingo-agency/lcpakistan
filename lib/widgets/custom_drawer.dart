import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xFF212121),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20),
          children: [
            const DrawerHeader(
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            _drawerItem("Vin Decoder", () {
              print('Vin clicked');
              Navigator.pop(context);
            }),
            _drawerItem("Vehicle Listings", () {
              print('Listing clicked');
              Navigator.pop(context);
            }),
            _drawerItem("Shop", () {
              print('Shop clicked');
              Navigator.pop(context);
            }),
            _drawerItem("Tours", () {
              print('Tours clicked');
              Navigator.pop(context);
            }),
            _drawerItem("Contact", () {
              print('Contact clicked');
              Navigator.pop(context);
            }),
            const Divider(color: Colors.grey),
            ListTile(
              leading: const Icon(Icons.search, color: Colors.white),
              title: const Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart, color: Colors.white),
              title: const Text("Cart", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _drawerItem(String title, VoidCallback onTap) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}
