part of '../pages/pages.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Alarm', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
