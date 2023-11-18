part of '../pages/pages.dart';

class Wwtp extends StatefulWidget {
  const Wwtp({super.key});

  @override
  State<Wwtp> createState() => _WwtpState();
}

class _WwtpState extends State<Wwtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('WWTP', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
