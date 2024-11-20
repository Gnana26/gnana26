import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'contact.dart'; // Import the Contact screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMenuExpanded = false;
  void toggleMenu() {
    setState(() {
      isMenuExpanded = !isMenuExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Header(
          isMenuVisible: isMenuExpanded,
          toggleMenu: toggleMenu,
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.blueAccent, // BlueAccent background color
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Image.asset(
                          'assets/images/hero/02.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Your Website Should Be Your Best Salesperson. Let Us Design It',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'A great website doesn’t just look good—it sells your business. We’ll build a site that attracts visitors, converts leads, and grows your revenue.',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(height: 24),
                            const Text(
                              'Get Started Today',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    // Navigate to ContactScreen when pressed
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ContactScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.white),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text('Request a Quote'),
                                ),
                                const SizedBox(width: 26),
                                ElevatedButton(
                                  onPressed: () {
                                    // Navigate to ContactScreen when pressed
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const PortfolioScreen()),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    foregroundColor: Colors.white,
                                    side: const BorderSide(color: Colors.white),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text('See Our Work'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    height: 10,
                    color: Colors.blueAccent,
                    child: CustomPaint(
                      painter: ShapePainter(),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: Image.asset(
                          'assets/images/about/03.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: AutoRotatingIcon(),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: 'Get Noticed, Get Results: \n',
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Professional Web Design',
                              style: TextStyle(
                                fontSize: 32.0,
                                color: Color(0xFF1360EF),
                              ),
                            ),
                            TextSpan(
                              text: ' for Serious Business Growth',
                              style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        'Your business is unique—your website should be too. '
                        'Let’s create a personalized, cutting-edge website that '
                        'captures attention and drives real results.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Welcome to WiseWebTek Your Digital Growth Partner',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'At WiseWebTek, we specialize in crafting innovative, user-friendly websites that drive results. '
                        'As a team of passionate web design experts, we are dedicated to helping businesses elevate their online presence '
                        'with visually stunning, functional, and responsive websites.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      const Text(
                        'With a blend of creativity, technical expertise, and strategic thinking, we create websites that not only look '
                        'great but also convert visitors into loyal customers. Whether you\'re a startup looking to make your mark, or an '
                        'established company aiming to modernize your digital footprint, we tailor our solutions to meet your unique needs.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      // Replacing GridView with ListView
                      ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          _counterCard(
                              'Websites Created', 1000, Colors.blue), // Blue
                          SizedBox(height: 20),
                          _counterCard('Years of Experience', 10,
                              Colors.white70), // White
                          SizedBox(height: 20),
                          _counterCard(
                              'Successful SEO', 200, Colors.white70), // White
                          SizedBox(height: 20),
                          _counterCard(
                              'Happy Clients', 1000, Colors.orange), // Orange
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 50),
                    height: 10,
                    color: Color(0xFF0B0E2B),
                    child: CustomPaint(
                      painter: ShapePainter(),
                    ),
                  ),
                ),
                // "What We Offer" Section
                Container(
                  color: Color(0xFF0B0E2B),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'What We Offer',
                        style: TextStyle(
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Column(
                        children: [
                          _offerCard(
                            'Custom Website Design',
                            'Tailored to your brand and audience for\n a unique onlin presence.',
                            Colors.transparent,
                            'assets/images/icon/01.png', // Image path for Website Design
                          ),
                          _offerCard(
                            'E-Commerce Solutions',
                            'Secure, easy-to-manage online stores\n to boost your sales.',
                            Colors.transparent,
                            'assets/images/icon/02.png', // Image path for E-commerce Solutions
                          ),
                          _offerCard(
                            'Search Engine Optimization (SEO)',
                            'Websites that not only look great but rank\n well on search engines.',
                            Colors.transparent,
                            'assets/images/icon/03.png', // Image path for SEO & Digital Marketing
                          ),
                          _offerCard(
                            'Responsive Design',
                            'Websites that are mobile-friendly,\n ensuring a seamless experience for users\n on any device.',
                            Colors.transparent,
                            'assets/images/icon/04.png', // Image path for Mobile App Development
                          ),
                          _offerCard(
                            'Ongoing Support',
                            'We don’t just build and walk away; we offer\n continuous support to help\n your site evolve.',
                            Colors.transparent,
                            'assets/images/icon/05.png', // Image path for Mobile App Development
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          if (isMenuExpanded)
            Positioned.fill(
              child: Container(
                color: Colors.blueAccent.withOpacity(0.6),
                child: ListView.builder(
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _pages[index]['title'],
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      trailing:
                          const Icon(Icons.arrow_forward, color: Colors.white),
                      onTap: () {
                        if (_pages[index]['title'] == 'Home') {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => _pages[index]['page']),
                          );
                        }
                        toggleMenu();
                      },
                    );
                  },
                ),
              ),
            ),
        ],
      ),
    );
  }

  List<Map<String, dynamic>> _pages = [
    {'title': 'Home', 'page': const HomeScreen()},
    {'title': 'About Us', 'page': const AboutScreen()},
    {'title': 'Services', 'page': const ServicesScreen()},
    {'title': 'Portfolio', 'page': const PortfolioScreen()},
    {'title': 'Contact Us', 'page': const ContactScreen()},
  ];

  Widget _counterCard(String title, int count, Color color) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: color, // Set the background color as per your requirement
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 12),
            AnimatedCounter(
                count: count,
                color: color == Colors.blue ? Colors.black : Colors.black),
          ],
        ),
      ),
    );
  }

  Widget _offerCard(
      String title, String description, Color color, String imagePath) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 60.0, // Adjust size according to your design
              height: 60.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AnimatedCounter extends StatefulWidget {
  final int count;
  final Color color;
  const AnimatedCounter({
    Key? key,
    required this.count,
    required this.color,
  }) : super(key: key);
  @override
  _AnimatedCounterState createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter> {
  late int _counter;
  late int _target;
  @override
  void initState() {
    super.initState();
    _counter = 0;
    _target = widget.count;
    _animateCounter();
  }

  void _animateCounter() {
    Future.delayed(Duration.zero, () {
      for (int i = 0; i <= _target; i++) {
        Future.delayed(Duration(milliseconds: (i * 20).toInt()), () {
          if (mounted) {
            setState(() {
              _counter = i;
            });
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_counter+',
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: widget.color,
      ),
    );
  }
}

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white;
    final path = Path()
      ..lineTo(0, size.height - 20)
      ..quadraticBezierTo(
          size.width / 2, size.height + 30, size.width, size.height - 20)
      ..lineTo(size.width, 0)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Home Screen')),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About Us')),
      body: const Center(child: Text('About Us Screen')),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Services')),
      body: const Center(child: Text('Services Screen')),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Portfolio')),
      body: const Center(child: Text('Portfolio Screen')),
    );
  }
}

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _phoneController = TextEditingController();
    final _emailController = TextEditingController();
    final _subjectController = TextEditingController();
    final _messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
              left: 90.0), // Adjusted padding to move the title to the right
          child: const Text(
            'Contact Us',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/icon/bg1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Corporate Office',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'No 4/39, Ground Floor, Sriram Nagar Main Road, Thiruvanmiyur, Chennai - 600041.',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.location_on,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Dubai Office',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'Building A1, Dubai Digital Park, Dubai Silicon Oasis, Dubai, UAE',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.phone,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Let\'s Talk',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    '+91 9080248247',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Send us Email',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Text(
                    'contact@wisewebtek.com',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),

                const SizedBox(height: 20),

                // Social Media Section with Image Icons and Links
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/facebook.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/instagram.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/whatsapp.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/twitter.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/youtube.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(width: 20),
                    GestureDetector(
                      child: Image.asset(
                        'assets/images/icon/linkedin.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Contact Form Section
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Name Field
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'First Name',
                          labelStyle: TextStyle(
                              color:
                                  Colors.white), // White text color for label
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Colors.white), // White border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White focus border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White enabled border color
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.white), // White text color
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Phone Number Field
                      TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'Phone Number',
                          labelStyle: TextStyle(
                              color:
                                  Colors.white), // White text color for label
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Colors.white), // White border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White focus border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White enabled border color
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.white), // White text color
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Email Field
                      TextFormField(
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              color:
                                  Colors.white), // White text color for label
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Colors.white), // White border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White focus border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White enabled border color
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.white), // White text color
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Subject Field
                      TextFormField(
                        controller: _subjectController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'Subject',
                          labelStyle: TextStyle(
                              color:
                                  Colors.white), // White text color for label
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Colors.white), // White border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White focus border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White enabled border color
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.white), // White text color
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the subject';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),

                      // Message Field
                      TextFormField(
                        controller: _messageController,
                        maxLines: 5,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black54,
                          labelText: 'Message',
                          labelStyle: TextStyle(
                              color:
                                  Colors.white), // White text color for label
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color: Colors.white), // White border color
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White focus border color
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                                color:
                                    Colors.white), // White enabled border color
                          ),
                        ),
                        style:
                            TextStyle(color: Colors.white), // White text color
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your message';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),

                      // Submit Button
                      // Submit Button
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            // Show the success dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Success'),
                                  content: const Text(
                                      'Your form has been submitted successfully!'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        // Close the dialog
                                        Navigator.of(context).pop();

                                        // Clear form fields
                                        _nameController.clear();
                                        _phoneController.clear();
                                        _emailController.clear();
                                        _subjectController.clear();
                                        _messageController.clear();
                                      },
                                      child: const Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 12),
                        ),
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  final bool isMenuVisible;
  final Function toggleMenu;
  Header({
    Key? key,
    required this.isMenuVisible,
    required this.toggleMenu,
  }) : super(key: key);
  final List<Map<String, dynamic>> _pages = [
    {'title': 'Home', 'page': const HomeScreen()},
    {'title': 'About Us', 'page': const AboutScreen()},
    {'title': 'Services', 'page': const ServicesScreen()},
    {'title': 'Portfolio', 'page': const PortfolioScreen()},
    {
      'title': 'Contact Us',
      'page': const ContactScreen()
    }, // Updated to ContactScreen
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          backgroundColor: Colors.blueAccent,
          title: Image.asset(
            'assets/images/logo.png',
            height: 70,
            width: 100,
          ),
          leading: IconButton(
            icon: Icon(isMenuVisible ? Icons.close : Icons.menu),
            onPressed: () => toggleMenu(),
          ),
        ),
        if (isMenuVisible)
          Positioned.fill(
            child: Container(
              color: Colors.blueAccent.withOpacity(0.6),
              child: ListView.builder(
                itemCount: _pages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _pages[index]['title'],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing:
                        const Icon(Icons.arrow_forward, color: Colors.white),
                    onTap: () {
                      if (_pages[index]['title'] == 'Home') {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => _pages[index]['page']),
                        );
                      }
                      toggleMenu();
                    },
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}

class AutoRotatingIcon extends StatefulWidget {
  const AutoRotatingIcon({Key? key}) : super(key: key);
  @override
  _AutoRotatingIconState createState() => _AutoRotatingIconState();
}

class _AutoRotatingIconState extends State<AutoRotatingIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * 3.14159, // Full rotation
          child: const Icon(Icons.cached, size: 50, color: Colors.blue),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
