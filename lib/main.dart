import 'package:flutter/material.dart';

void main() {
  runApp(const LGPWifiApp());
}

class LGPWifiApp extends StatelessWidget {
  const LGPWifiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LGP Wi-Fi Management',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LGP Wi-Fi Management'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Byenveni nan LGP Wi-Fi',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Administratè: Ychnayder LINDOR'),
            const Text('Monnen: Goud (HTG)'),
            const SizedBox(height: 25),
            dashboardCard(
              Icons.wifi,
              'Kliyan Wi-Fi',
              'Jere kliyan ki konekte yo',
            ),
            dashboardCard(
              Icons.attach_money,
              'Peman',
              'Swiv peman kliyan yo an Goud',
            ),
            dashboardCard(
              Icons.router,
              'Routeur',
              'Jesyon aparèy Wi-Fi',
            ),
            dashboardCard(
              Icons.bar_chart,
              'Rapò',
              'Swiv revni ak aktivite yo',
            ),
          ],
        ),
      ),
    );
  }

  Widget dashboardCard(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue, size: 30),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
