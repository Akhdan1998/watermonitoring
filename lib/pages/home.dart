part of 'pages.dart';

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
      body: Stack(
        children: [
          Positioned(
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
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
                  // SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          });
                          pageController.animateToPage(0,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: (button == '1')
                                ? Colors.white
                                : Colors.transparent,
                          ),
                          child: Row(
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
                          });
                          pageController.animateToPage(1,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(2,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(3,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(4,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(5,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(6,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                          });
                          pageController.animateToPage(8,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
                                  )),
                            ],
                          ),
                        ),
                      ),
                      //
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            button = '9';
                          });
                          pageController.animateToPage(9,
                              duration: Duration(milliseconds: 50),
                              curve: Curves.bounceOut);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width - 1200,
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
          ),
          Positioned(
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width - 250,
              height: MediaQuery.of(context).size.height,
              color: 'F1F1F1'.toColor(),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      padding: EdgeInsets.all(30),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Container(
                          height: MediaQuery.of(context).size.height + 800,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'pH',
                                    style: GoogleFonts.poppins().copyWith(
                                        fontSize: 20,
                                        color: '38464D'.toColor()),
                                  ),
                                  Container(
                                    width: 28,
                                    child: Divider(
                                      height: 0,
                                      thickness: 2,
                                      color: '52AB92'.toColor(),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                  ),
                                  color: Colors.white,
                                ),
                                width: MediaQuery.of(context).size.width,
                                height: 607,
                              ),
                              SizedBox(height: 30),
                              Container(
                                padding: EdgeInsets.all(25),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                  ),
                                  color: Colors.white,
                                ),
                                width: MediaQuery.of(context).size.width - 500,
                                // width: MediaQuery.of(context).size.width,
                                // height: 161,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.filter_list),
                                        SizedBox(width: 8),
                                        Text(
                                          'Filter Report',
                                          style: GoogleFonts.poppins().copyWith(
                                              fontSize: 14,
                                              color: '444444'.toColor()),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'From :',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          '444444'.toColor()),
                                            ),
                                            SizedBox(height: 8),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      date = !date;
                                                    });
                                                  },
                                                  child: Container(
                                                    width: 320,
                                                    padding: EdgeInsets.all(5),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          width: 1,
                                                          color: 'AAAAAA'.toColor(),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(selectedDate1
                                                            .toString()
                                                            .split(' ')[0]),
                                                        (date == false) ? Icon(Icons
                                                            .arrow_drop_down) : Icon(Icons
                                                            .arrow_drop_up),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                (date == false) ? Container() : Container(
                                                  decoration: BoxDecoration(
                                                    // color: Colors.red,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: 'AAAAAA'.toColor(),
                                                    ),
                                                  ),
                                                  width: 350,
                                                  child: TableCalendar(
                                                    calendarFormat: _calenderFormat1,
                                                    headerStyle: HeaderStyle(
                                                        formatButtonVisible:
                                                            false,
                                                        titleCentered: true),
                                                    availableGestures:
                                                        AvailableGestures.all,
                                                    rowHeight: 35,
                                                    focusedDay: selectedDate1,
                                                    firstDay: DateTime(1945),
                                                    lastDay: DateTime(2500),
                                                    calendarStyle: CalendarStyle(
                                                      outsideDaysVisible: false,
                                                    ),
                                                    onFormatChanged: (format) {
                                                      setState(() {
                                                        _calenderFormat1 = format;
                                                      });
                                                    },
                                                    onDaySelected:
                                                        _onDaySelected1,
                                                    selectedDayPredicate:
                                                        (day) => isSameDay(
                                                            day, selectedDate1),
                                                    onPageChanged: (focusedDay) {
                                                      selectedDate1 = focusedDay;
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'To :',
                                              style: GoogleFonts.poppins()
                                                  .copyWith(
                                                      fontSize: 14,
                                                      color:
                                                          '444444'.toColor()),
                                            ),
                                            SizedBox(height: 8),
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          date = !date;
                                                        });
                                                      },
                                                      child: Container(
                                                        width: 320,
                                                        padding: EdgeInsets.all(5),
                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                          border: Border.all(
                                                            width: 1,
                                                            color: 'AAAAAA'.toColor(),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Text(selectedDate2
                                                                .toString()
                                                                .split(' ')[0]),
                                                            (date == false) ? Icon(Icons
                                                                .arrow_drop_down) : Icon(Icons
                                                                .arrow_drop_up),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 50),
                                                    Container(
                                                      padding:
                                                      EdgeInsets.fromLTRB(25, 7, 25, 7),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(5),
                                                        color: '488A99'.toColor(),
                                                      ),
                                                      child: Text(
                                                        'Submit',
                                                        style: GoogleFonts.poppins()
                                                            .copyWith(
                                                            fontSize: 14,
                                                            color: Colors.white),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                (date == false) ? Container() : Container(
                                                  decoration: BoxDecoration(
                                                    // color: Colors.red,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        8),
                                                    border: Border.all(
                                                      width: 1,
                                                      color: 'AAAAAA'.toColor(),
                                                    ),
                                                  ),
                                                  width: 350,
                                                  child: TableCalendar(
                                                    calendarFormat: _calenderFormat2,
                                                    headerStyle: HeaderStyle(
                                                        formatButtonVisible:
                                                        false,
                                                        titleCentered: true),
                                                    availableGestures:
                                                    AvailableGestures.all,
                                                    rowHeight: 35,
                                                    focusedDay: selectedDate2,
                                                    firstDay: DateTime(1945),
                                                    lastDay: DateTime(2500),
                                                    calendarStyle: CalendarStyle(
                                                      outsideDaysVisible: false,
                                                    ),
                                                    onFormatChanged: (format) {
                                                      setState(() {
                                                        _calenderFormat2 = format;
                                                      });
                                                    },
                                                    onDaySelected:
                                                    _onDaySelected2,
                                                    selectedDayPredicate:
                                                        (day) => isSameDay(
                                                        day, selectedDate2),
                                                    onPageChanged: (focusedDay) {
                                                      selectedDate2 = focusedDay;
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        // Container(
                                        //   padding:
                                        //       EdgeInsets.fromLTRB(25, 7, 25, 7),
                                        //   decoration: BoxDecoration(
                                        //     borderRadius:
                                        //         BorderRadius.circular(5),
                                        //     color: '488A99'.toColor(),
                                        //   ),
                                        //   child: Text(
                                        //     'Submit',
                                        //     style: GoogleFonts.poppins()
                                        //         .copyWith(
                                        //             fontSize: 14,
                                        //             color: Colors.white),
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
