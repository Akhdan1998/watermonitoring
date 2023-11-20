part of 'pages.dart';

List<String> list = <String>[
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
];

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  String? button = '1';
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  DateTime? _selectedDay1;
  DateTime? _selectedDay2;
  CalendarFormat _calenderFormat1 = CalendarFormat.month;
  CalendarFormat _calenderFormat2 = CalendarFormat.month;
  bool date = false;
  String dropdownValue = list.first;
  PageController controller = PageController();
  int _selectedIndex = 0;

  void _navigasiBottomBar(int index) {
    setState(() {
      _selectedIndex = index;

      controller.animateToPage(_selectedIndex,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOutCirc);
    });
  }

  void _onDaySelected1(DateTime day1, DateTime focusedDay1) {
    if (!isSameDay(_selectedDay1, day1)) {
      setState(() {
        _selectedDay1 = day1;
        selectedDate1 = focusedDay1;
      });
    }
  }

  void _onDaySelected2(DateTime day2, DateTime focusedDay2) {
    if (!isSameDay(_selectedDay2, day2)) {
      setState(() {
        _selectedDay2 = day2;
        selectedDate2 = focusedDay2;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedDay1 = selectedDate1;
    _selectedDay2 = selectedDate2;
    controller = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Container(
          width: 780,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/monitoring.png',
                scale: 7,
              ),
              Text(
                'Waste Water Monitoring',
                style: GoogleFonts.poppins().copyWith(
                  color: '444444'.toColor(),
                ),
              ),
            ],
          ),
        ),
        // centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.circle_notifications_rounded,
                color: '444444'.toColor(),
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.account_circle_rounded,
                  color: '444444'.toColor())),
        ],
      ),
      body: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            width: 250,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  '08489F'.toColor(),
                  '04276F'.toColor(),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Row(
                      children: [
                        SizedBox(width: 40),
                        Text(
                          'Nama Tanaman',
                          style: GoogleFonts.poppins()
                              .copyWith(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '1';
                          _navigasiBottomBar(0);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '1')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.home,
                                color: (button == '1')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'WWTP',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '1')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '2';
                          _navigasiBottomBar(1);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '2')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.location_on,
                                color: (button == '2')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Jakarta',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '2')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    Row(
                      children: [
                        SizedBox(width: 40),
                        Text(
                          'Navigation',
                          style: GoogleFonts.poppins()
                              .copyWith(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '3';
                          _navigasiBottomBar(2);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '3')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.dashboard,
                                color: (button == '3')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Dashboard',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '3')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '4';
                          _navigasiBottomBar(3);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '4')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.trending_up,
                                color: (button == '4')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Trending Report',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '4')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '5';
                          _navigasiBottomBar(4);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '5')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.alarm,
                                color: (button == '5')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Alarm',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '5')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '6';
                          _navigasiBottomBar(5);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '6')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.api,
                                color: (button == '6')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Api Logs',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '6')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '7';
                          _navigasiBottomBar(6);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '7')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.wifi,
                                color: (button == '7')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Connection Logs',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '7')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          button = '8';
                          _navigasiBottomBar(7);
                        });
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '8')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 40),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.settings,
                                    color: (button == '8')
                                        ? '04276F'.toColor()
                                        : Colors.white,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Settings',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: (button == '8')
                                        ? '04276F'.toColor()
                                        : Colors.white,
                                  ),
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.expand_more,
                                color: (button == '8')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    GestureDetector(
                      onTap: () {
                        Get.to(signin());
                      },
                      child: Container(
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: (button == '9')
                              ? Colors.white
                              : Colors.transparent,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 40),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.power_settings_new,
                                color: (button == '9')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Logout',
                              style: GoogleFonts.poppins().copyWith(
                                fontSize: 14,
                                color: (button == '9')
                                    ? '04276F'.toColor()
                                    : Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 250,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Wwtp(),
                Jakarta(),
                Dashboard(),
                TrendingReport(),
                Alarm(),
                ApiLogs(),
                ConnectionLogs(),
                Settings(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow buildRow1(List<String> cells, {bool isHeader = false}) => TableRow(
        children: cells.map((cell) {
          final style = TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
              fontSize: 14);
          return Container(
            color: Colors.grey.shade200,
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                cell,
                style: style,
              ),
            ),
          );
        }).toList(),
      );

  TableRow buildRow2(List<String> cells) => TableRow(
        children: cells.map((cell) {
          final style = TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
          return Container(
            padding: EdgeInsets.all(8),
            child: Center(
              child: Text(
                cell,
                style: style,
              ),
            ),
          );
        }).toList(),
      );
}
