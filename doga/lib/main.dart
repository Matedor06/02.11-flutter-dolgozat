import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Counter App',
      home: const CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => counterScreenState();
}

class counterScreenState extends State<CounterScreen> {
  int counter = 100;

  final Color bgCream = const Color.fromARGB(255, 250, 243, 225);
  final Color orange = const Color.fromARGB(255, 250, 129, 18);
  final Color dark = const Color.fromARGB(255, 34, 34, 34);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgCream,
      appBar: AppBar(
        backgroundColor: orange,
        elevation: 0,
        title: const Text('Counter App'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Current counter value',
                style: TextStyle(
                  fontSize: 20,
                  color: dark,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 20),

              Text(
                '$counter',
                style: TextStyle(
                  fontSize: 40,
                  color: dark,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() => counter -= 1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 6,
                    ),
                    child: const Text('-1'),
                  ),

                  const SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () => setState(() => counter += 1),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: orange,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(100, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 6,
                    ),
                    child: const Text('+1'),
                  ),
                ],
              ),

              const SizedBox(height: 80),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 60,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () => setState(() => counter -= 10),
                      color: bgCream,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('-10'),
                    ),
                  ),

                  const SizedBox(width: 20),

                  SizedBox(
                    height: 60,
                    width: 120,
                    child: MaterialButton(
                      onPressed: () => setState(() => counter += 10),
                      color: bgCream,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text('+10'),
                    ),
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
