part of '../pages/pages.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Logout', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
