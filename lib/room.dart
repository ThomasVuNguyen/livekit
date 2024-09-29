import 'package:flutter/material.dart';
import 'package:livekit_client/livekit_client.dart';

class Room extends StatefulWidget {
  const Room({super.key});

  @override
  State<Room> createState() => _RoomState();
}

class _RoomState extends State<Room> {

  final roomOptions = const RoomOptions(
    adaptiveStream: true,
    dynacast: true,
  );



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  /*Future<void> setupRoom() async{
    final room = const Room();

    await room.connect(url, token, roomOptions: roomOptions);
    try {
      // video will fail when running in ios simulator
      await room.localParticipant.setCameraEnabled(true);
    } catch (error) {
      print('Could not publish video, error: $error');
    }

    await room.localParticipant.setMicrophoneEnabled(true);
  }*/
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
