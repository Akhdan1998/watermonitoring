part of '../pages/pages.dart';

class ConnectionLogs extends StatefulWidget {
  const ConnectionLogs({super.key});

  @override
  State<ConnectionLogs> createState() => _ConnectionLogsState();
}

class _ConnectionLogsState extends State<ConnectionLogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Connection Logs', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
