import 'package:flutter/material.dart';
import 'contact_page.dart'; // Assuming you have this page created
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValuationScreen(),
    );
  }
}

class ValuationScreen extends StatelessWidget {
  final List<Map<String, dynamic>> announcements = [
    {'title': 'Fast Track Webinar Series – IBBI Valuation Exam (S&FA) Batch XVIII'},
    {'title': 'Valuation under Income Tax Act'},
    {'title': 'Valuation under Ind AS'},
    {'title': 'Valuation under Companies Act'},
    {'title': 'Valuation of shares/share valuation'},
    {'title': 'ESG Valuation'},
    {'title': 'Mergers & Acquisitions - Valuation'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valuation Announcements'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: announcements.map((announcement) {
            return ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    announcement['title'],
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnrollFormPage(),
                        ),
                      );
                    },
                    child: Text('Enroll Now'),
                  ),
                ],
              ),
              children: [],
            );
          }).toList(),
        ),
      ),
    );
  }
}

class EnrollFormPage extends StatefulWidget {
  const EnrollFormPage({super.key});

  @override
  _EnrollFormPageState createState() => _EnrollFormPageState();
}

class _EnrollFormPageState extends State<EnrollFormPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController memberNoController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  String selectedTopic = '';
  String selectedCvaMember = 'yes';

  bool showOtpSection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Enrollment Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // Member No.
                TextFormField(
                  controller: memberNoController,
                  decoration: const InputDecoration(labelText: 'Member No'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Member No' : null,
                ),
                const SizedBox(height: 10),
                // Name
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Name' : null,
                ),
                const SizedBox(height: 10),
                // Mobile
                TextFormField(
                  controller: mobileController,
                  decoration: const InputDecoration(labelText: 'Mobile'),
                  keyboardType: TextInputType.phone,
                  validator: (value) => value?.length != 10 ? 'Enter a valid 10-digit mobile number' : null,
                ),
                const SizedBox(height: 10),
                // Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Email' : null,
                ),
                const SizedBox(height: 10),
                // Qualification
                TextFormField(
                  controller: qualificationController,
                  decoration: const InputDecoration(labelText: 'Qualification'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Qualification' : null,
                ),
                const SizedBox(height: 10),
                // Address
                TextFormField(
                  controller: addressController,
                  decoration: const InputDecoration(labelText: 'Address'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Address' : null,
                ),
                const SizedBox(height: 10),
                // Topic Selection
                DropdownButtonFormField<String>(
                  value: selectedTopic.isEmpty ? null : selectedTopic,
                  items: [
                    'Fast Track Webinar Series – IBBI Valuation Exam (S&FA) Batch XVIII',
                    'Valuation under Income Tax Act',
                    'Valuation under Ind AS',
                    'Valuation under Companies Act',
                    'Valuation of shares/share valuation',
                    'ESG Valuation',
                    'Mergers & Acquisitions - Valuation',
                    'Ind AS',
                    'Insolvency',
                    'Social Audit',
                    'ISA'
                  ].map((topic) {
                    return DropdownMenuItem<String>(
                      value: topic,
                      child: Text(topic),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    setState(() {
                      selectedTopic = newValue ?? '';
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Select Topic'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please select a Topic' : null,
                ),
                const SizedBox(height: 10),
                // City
                TextFormField(
                  controller: cityController,
                  decoration: const InputDecoration(labelText: 'City'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter City' : null,
                ),
                const SizedBox(height: 10),
                // Pincode
                TextFormField(
                  controller: pincodeController,
                  decoration: const InputDecoration(labelText: 'Pincode'),
                  keyboardType: TextInputType.number,
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter Pincode' : null,
                ),
                const SizedBox(height: 10),
                // State
                TextFormField(
                  controller: stateController,
                  decoration: const InputDecoration(labelText: 'State'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please enter State' : null,
                ),
                const SizedBox(height: 10),
                // CVA Member Selection
                DropdownButtonFormField<String>(
                  value: selectedCvaMember,
                  items: [
                    const DropdownMenuItem<String>(value: 'yes', child: Text('Yes')),
                    const DropdownMenuItem<String>(value: 'no', child: Text('No')),
                  ],
                  onChanged: (newValue) {
                    setState(() {
                      selectedCvaMember = newValue ?? 'yes';
                      showOtpSection = selectedCvaMember == 'yes'; // Show OTP if 'yes'
                    });
                  },
                  decoration: const InputDecoration(labelText: 'Are you willing to become a CVA India Member?'),
                  validator: (value) => value?.isEmpty ?? true ? 'Please select Yes or No' : null,
                ),
                if (showOtpSection)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Enter OTP:', style: TextStyle(fontSize: 16)),
                      TextFormField(
                        controller: otpController,
                        decoration: const InputDecoration(labelText: 'OTP'),
                        keyboardType: TextInputType.number,
                        validator: (value) => value?.isEmpty ?? true ? 'Please enter OTP' : null,
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ContactPage(),
                        ),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Assuming you already have a ContactPage widget
class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Page'),
      ),
      body: Center(
        child: Text('Thank you for enrolling! We will contact you soon.'),
      ),
    );
  }
}
