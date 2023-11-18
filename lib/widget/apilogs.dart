part of '../pages/pages.dart';

class ApiLogs extends StatefulWidget {
  const ApiLogs({super.key});

  @override
  State<ApiLogs> createState() => _ApiLogsState();
}

class _ApiLogsState extends State<ApiLogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Api Logs', style: GoogleFonts.poppins().copyWith(fontSize: 30),),
      ),
    );
  }
}
