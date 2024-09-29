import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LiveKit Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Connect to Room'),
            onPressed: () => _connectToRoom(),
          ),
        ),
      ),
    );
  }

  void _connectToRoom() async {
    try {
      final room = Room();

      await room.connect(
        'wss://your-livekit-server-url',
        'your-token-here',
      );

      print('Connected to room: ${room.name}');
    } catch (error) {
      print('Failed to connect to room: $error');
    }
  }
}