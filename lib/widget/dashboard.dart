part of '../pages/pages.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool socket = true;
  bool device = true;
  DateTime data = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Dashboard',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 20,
                    color: '38464D'.toColor(),
                  ),
                ),
                Container(
                  width: 115,
                  child: Divider(
                    height: 0,
                    thickness: 2,
                    color: '488A99'.toColor(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 20,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 148,
                        padding: EdgeInsets.all(25),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                          ),
                          color: '636C79'.toColor(),
                        ),
                        constraints: BoxConstraints(maxWidth: 325),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                (socket == false)
                                    ? Text(
                                  'ON',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                                    : Text(
                                  'OFF',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Transform.scale(
                                  alignment: Alignment.centerLeft,
                                  scale: 0.70,
                                  child: Switch.adaptive(
                                    activeColor: '3D93F9'.toColor(),
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Colors.grey,
                                    value: socket,
                                    onChanged: (value) => setState(() {
                                      this.socket = value;
                                    }),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 10),
                            Image.asset(
                              'assets/socket.png',
                              scale: 2,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: '4F5661'.toColor(),
                        ),
                        width: MediaQuery.of(context).size.width,
                        constraints: BoxConstraints(maxWidth: 325),
                        padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
                        child: Text(
                          'Socket Status',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        height: 148,

                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                          ),
                          color: '8BB7A2'.toColor(),
                        ),
                        constraints: BoxConstraints(maxWidth: 325),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                (device == false)
                                    ? Text(
                                  'ON',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                                    : Text(
                                  'OFF',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Transform.scale(
                                  alignment: Alignment.centerLeft,
                                  scale: 0.70,
                                  child: Switch.adaptive(
                                    activeColor: '3D93F9'.toColor(),
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Colors.grey,
                                    value: device,
                                    onChanged: (value) => setState(() {
                                      this.device = value;
                                    }),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 10),
                            Image.asset(
                              'assets/device.png',
                              scale: 2,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: '6F9282'.toColor(),
                        ),
                        width: MediaQuery.of(context).size.width,
                        constraints: BoxConstraints(maxWidth: 325),
                        padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
                        child: Text(
                          'Device Status',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(25),
                        height: 148,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 0), // changes position of shadow
                            ),
                          ],
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                          ),
                          color: '4D4E8F'.toColor(),
                        ),
                        constraints: BoxConstraints(maxWidth: 325),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                    DateFormat.EEEE().format(data) +
                                        "," + " " + DateFormat.M().format(data) +
                                        "-" + DateFormat.d().format(data) +
                                        "-"+ DateFormat.y().format(data),
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Container(
                                  width: MediaQuery.of(context).size.width - 1165,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text('Hour',
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            DateFormat.H().format(data),
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(':',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text('Minute',
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            DateFormat.m().format(data),
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(':',
                                        style: GoogleFonts.poppins().copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text('Second',
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            DateFormat.s().format(data),
                                            style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/alarm.png',
                                        scale: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 10),
                            // Image.asset(
                            //   'assets/alarm.png',
                            //   scale: 2,
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset:
                              Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: '3E3E72'.toColor(),
                        ),
                        width: MediaQuery.of(context).size.width,
                        constraints: BoxConstraints(maxWidth: 325),
                        padding: EdgeInsets.only(left: 15, top: 8, bottom: 8),
                        child: Text(
                          'Date Time',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
