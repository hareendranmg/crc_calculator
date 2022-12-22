import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String result = '';
  final inputTextController = TextEditingController();

  void calculateCrc() {
    final input = inputTextController.text;

    if (input.isEmpty) showSnackBar(context, 'Please enter input.');

    setState(() {
      result = '12 32 43 F# 4E TW';
    });
  }

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const Text(
                'Sudheerthan\'s CRC Calculator',
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 48),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextFormField(
                  controller: inputTextController,
                  decoration: const InputDecoration(
                    labelText: 'Input',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.06,
                child: ElevatedButton(
                  onPressed: calculateCrc,
                  child: const Text('Calculate'),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                result,
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w300,
                  color: Colors.green.shade900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      action: SnackBarAction(
        label: 'Okay',
        textColor: Colors.black87,
        onPressed: () {},
      ),
      backgroundColor: Colors.grey,
      content: Text(
        message,
        style: const TextStyle(color: Colors.black, fontSize: 16),
      ),
    ),
  );
}
