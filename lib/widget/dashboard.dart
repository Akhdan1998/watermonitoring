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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
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
                                Offset(0, 0),
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
                          child: Column(
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
              SizedBox(height: 25),
              Container(
                width: double.infinity,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
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
                        color: Colors.white,
                      ),
                      width: 210,
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 1, right: 1, bottom: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 139,
                                  height: 70,
                                  child: CustomPaint(
                                    painter: HalfCirclePainter(),
                                  ),
                                ),
                                Positioned(
                                  // top: 20,
                                  left: 60,
                                  bottom: 0,
                                  child: Transform.rotate(
                                    angle: 50,
                                    child: ClipPath(
                                      clipper: CustomClipPath(),
                                      child: Container(
                                        color: Colors.red,
                                        height: 60,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   width: 139,
                            //   height: 70,
                            //   child: CustomPaint(
                            //     painter: HalfCirclePainter(),
                            //   ),
                            // ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '1300.09',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 24,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'm3/h',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '04276F'.toColor(),
                                      '08489F'.toColor(),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Text('Flow Meter',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      // height: 175,
                    ),
                    Container(
                      decoration: const BoxDecoration(
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
                        color: Colors.white,
                      ),
                      width: 210,
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 1, right: 1, bottom: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 139,
                                  height: 70,
                                  child: CustomPaint(
                                    painter: HalfCirclePainter(),
                                  ),
                                ),
                                Positioned(
                                  // top: 20,
                                  left: 50,
                                  bottom: 0,
                                  child: Transform.rotate(
                                    angle: 150,
                                    child: ClipPath(
                                      clipper: CustomClipPath(),
                                      child: Container(
                                        color: Colors.red,
                                        height: 60,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   width: 139,
                            //   height: 70,
                            //   child: CustomPaint(
                            //     painter: HalfCirclePainter(),
                            //   ),
                            // ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '1309',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 24,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'pH',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '04276F'.toColor(),
                                      '08489F'.toColor(),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Text('pH',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      // height: 175,
                    ),
                    Container(
                      decoration: const BoxDecoration(
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
                        color: Colors.white,
                      ),
                      width: 210,
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 1, right: 1, bottom: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 139,
                                  height: 70,
                                  child: CustomPaint(
                                    painter: HalfCirclePainter(),
                                  ),
                                ),
                                Positioned(
                                  // top: 20,
                                  right: 45,
                                  // left: 65,
                                  bottom: 0,
                                  child: Transform.rotate(
                                    angle: 20,
                                    child: ClipPath(
                                      clipper: CustomClipPath(),
                                      child: Container(
                                        color: Colors.red,
                                        height: 60,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   width: 139,
                            //   height: 70,
                            //   child: CustomPaint(
                            //     painter: HalfCirclePainter(),
                            //   ),
                            // ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '1309',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 24,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'mg/I',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '04276F'.toColor(),
                                      '08489F'.toColor(),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Text('TSS',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      // height: 175,
                    ),
                    Container(
                      decoration: const BoxDecoration(
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
                        color: Colors.white,
                      ),
                      width: 210,
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 1, right: 1, bottom: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 139,
                                  height: 70,
                                  child: CustomPaint(
                                    painter: HalfCirclePainter(),
                                  ),
                                ),
                                Positioned(
                                  // top: 20,
                                  left: 65,
                                  bottom: 0,
                                  child: ClipPath(
                                    clipper: CustomClipPath(),
                                    child: Container(
                                      color: Colors.red,
                                      height: 60,
                                      width: 10,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   width: 139,
                            //   height: 70,
                            //   child: CustomPaint(
                            //     painter: HalfCirclePainter(),
                            //   ),
                            // ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '130.09',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 24,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'mg/I',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '04276F'.toColor(),
                                      '08489F'.toColor(),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Text('COD',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      // height: 175,
                    ),
                    Container(
                      decoration: const BoxDecoration(
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
                        color: Colors.white,
                      ),
                      width: 210,
                      child: Container(
                        padding: EdgeInsets.only(top: 15, left: 1, right: 1, bottom: 1),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 139,
                                  height: 70,
                                  child: CustomPaint(
                                    painter: HalfCirclePainter(),
                                  ),
                                ),
                                Positioned(
                                  // top: 50,
                                  // top: 20,
                                  right: 50,
                                  // left: 65,
                                  bottom: 0,
                                  child: Transform.rotate(
                                    angle: 120,
                                    child: ClipPath(
                                      clipper: CustomClipPath(),
                                      child: Container(
                                        color: Colors.red,
                                        height: 60,
                                        width: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // Container(
                            //   width: 139,
                            //   height: 70,
                            //   child: CustomPaint(
                            //     painter: HalfCirclePainter(),
                            //   ),
                            // ),
                            SizedBox(height: 10),
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '11143.09',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 24,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'm3',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 8,
                                      color: '444444'.toColor(),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: 35,
                              padding: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      '04276F'.toColor(),
                                      '08489F'.toColor(),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                              ),
                              child: Text('Totalizer',
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ),
                          ],
                        ),
                      ),
                      // height: 175,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(0, 100);
    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5, h - 100, w, h,
    );
    // path.lineTo(w, h);
    // path.lineTo(w, 0);
    // path.lineTo(0, w);

    return path;
  }
  @override
  bool souldReclip(CustomClipper<Path>oldClipper){
    return false;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw false;
  }
}

class HalfCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = '1587DA'.toColor()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 15.0
      ..style = PaintingStyle.stroke;

    double progress = 0.5;

    double centerX = size.width / 2;
    double centerY = size.height;

    double radius = min(centerX, centerY);

    double startAngle = pi;
    double sweepAngle = 2 * pi * progress;

    canvas.drawArc(
        Rect.fromCircle(center: Offset(centerX, centerY), radius: radius),
        startAngle,
        sweepAngle,
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}