import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 860;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xFF303030))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo Section
          Row(
            children: const [
              Icon(Icons.crop_square, size: 20, color: Colors.white),
              SizedBox(width: 10),
              Text(
                "LandcruiserPakistan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),

          // Desktop Nav or Mobile Menu Button
          if (!isMobile)
            Row(
              children: [
                _NavItem("Vin Decoder", () {}),
                _NavItem("Vehicle Listings", () {}),
                _NavItem("Shop", () {}),
                _NavItem("Tours", () {}),
                _NavItem("Contact", () {}),
                const SizedBox(width: 10),
                _iconButton(Icons.search),
                const SizedBox(width: 6),
                _iconButton(Icons.shopping_cart),
                const SizedBox(width: 10),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuDVXQjOyCGpkEhO5oTKXtRWsiCxl-r_tbZNyideS1VtF7HjRpIO8XQ6XGCMk7TY_m0D3ieHTkLIe6nv3Iz6T0eTDNG-UiwtnxM2qeyOGWadyKYCopEM6bm5hVeops_R4lbT-1cRT4JxaHPELfpED6V9S7RiHool52GhwBZWMghxQsudU7QaeUfs7ZpJ8zVX5UWiXHyUhU_PPvjVg3xVbt-F7PwdvKmpyzfT1guUf8xu63ohl26GYSq7wEYokVOWvQCQWwNDidSIVlUL',
                  ),
                ),
              ],
            )
          else
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
              ),
            ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _NavItem(this.label, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }
}

Widget _iconButton(IconData icon) {
  return IconButton(
    onPressed: () {},
    icon: Icon(icon, color: Colors.white),
  );
}
