import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // TODO: Settings screen
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          // Profile Header
          const CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'John Doe', // TODO: Fetch from Firebase
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            '+95 912 345 678',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 30),
          // Stats
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStat('Total Rides', '24'),
                _buildStat('Rating', '4.8'),
                _buildStat('Years', '2'),
              ],
            ),
          ),
          const SizedBox(height: 30),
          // Menu Items
          _buildMenuItem(
            icon: Icons.payment,
            title: 'Payment Methods',
            onTap: () {
              // TODO: Payment screen
            },
          ),
          _buildMenuItem(
            icon: Icons.card_giftcard,
            title: 'Promotions',
            onTap: () {
              // TODO: Promotions screen
            },
          ),
          _buildMenuItem(
            icon: Icons.headset_mic,
            title: 'Support',
            onTap: () {
              // TODO: Support screen
            },
          ),
          _buildMenuItem(
            icon: Icons.info,
            title: 'About',
            onTap: () {
              // TODO: About screen
            },
          ),
          _buildMenuItem(
            icon: Icons.privacy_tip,
            title: 'Privacy Policy',
            onTap: () {
              // TODO: Show privacy policy
            },
          ),
          _buildMenuItem(
            icon: Icons.description,
            title: 'Terms of Service',
            onTap: () {
              // TODO: Show terms
            },
          ),
          const Divider(),
          _buildMenuItem(
            icon: Icons.logout,
            title: 'Logout',
            color: Colors.red,
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              if (context.mounted) {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                  (route) => false,
                );
              }
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.grey.shade700),
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
