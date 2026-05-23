import 'package:flutter/material.dart';

class RideHistoryScreen extends StatelessWidget {
  const RideHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Mock data for demo
    final rides = [
      {
        'date': '2026-05-22',
        'pickup': 'Sule Pagoda',
        'dropoff': 'Shwedagon Pagoda',
        'fare': '15,000 MMK',
        'status': 'Completed',
      },
      {
        'date': '2026-05-20',
        'pickup': 'Yangon Intl Airport',
        'dropoff': 'Downtown',
        'fare': '25,000 MMK',
        'status': 'Completed',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride History'),
      ),
      body: ListView.builder(
        itemCount: rides.length,
        itemBuilder: (context, index) {
          final ride = rides[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.directions_car, color: Colors.white),
              ),
              title: Text(ride['date']!),
              subtitle: Text('${ride['pickup']} → ${ride['dropoff']}'),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    ride['fare']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Text(
                    ride['status']!,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
