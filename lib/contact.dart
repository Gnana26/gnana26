import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Contact Information Section
              Column(
                children: [
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                      'Corporate Office',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                        'No 4/39, Ground Floor, Sriram Nagar Main Road, Thiruvanmiyur, Chennai - 600041.'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.location_on),
                    title: Text(
                      'Dubai Office',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                        'Building A1, Dubai Digital Park, Dubai Silicon Oasis, Dubai, UAE'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.phone),
                    title: Text(
                      'Let\'s Talk',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('+91 9080248247'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.email),
                    title: Text(
                      'Send us Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('contact@wisewebtek.com'),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Social Media Section with Image Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/icon/facebook.png', // Facebook Image
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/icon/instagram.png', // Instagram Image
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/icon/whatsapp.png', // WhatsApp Image
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/icon/twitter.png', // Twitter Image
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/icon/youtube.png', // YouTube Image
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    'assets/images/icon/linkedin.png', // LinkedIn Image
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
