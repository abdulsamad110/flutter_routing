import 'package:flutter/material.dart';
import 'package:new_router/toast_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          "GO ROUTER",
          maxLines: 1,
          style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            ToastComponent.showToast(context, 'Back Button Pressed');
          },
        ),
      ),
      body: const Center(
        child: Text(
          "This is the Home Screen of the go route",
          maxLines: 3,
          style: TextStyle(
            color: Colors.white,
          ),
          overflow: TextOverflow.clip,
        ),
      ),
    );
  }
}
