part of '../pages/pages.dart';

class Jakarta extends StatefulWidget {
  const Jakarta({super.key});

  @override
  State<Jakarta> createState() => _JakartaState();
}

class _JakartaState extends State<Jakarta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Jakarta', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
