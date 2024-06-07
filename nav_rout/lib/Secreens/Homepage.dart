import 'package:flutter/material.dart'
    show
        AppBar,
        BuildContext,
        Center,
        ElevatedButton,
        Navigator,
        Scaffold,
        StatelessWidget,
        Text,
        Widget;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to First Page'),
          onPressed: () {
            Navigator.pushNamed(context, '/firstpage');
          },
        ),
      ),
    );
  }
}
