part of '../pages/pages.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final ButtonStyle styleConnection = ElevatedButton.styleFrom(
    textStyle: GoogleFonts.poppins().copyWith(fontSize: 14),
    backgroundColor: '5875DB'.toColor(),
  );
  final ButtonStyle styleEdit = ElevatedButton.styleFrom(
  textStyle: GoogleFonts.poppins().copyWith(fontSize: 14),
  backgroundColor: 'DB7058'.toColor(),
  );
  final ButtonStyle styleDelete = ElevatedButton.styleFrom(
    textStyle: GoogleFonts.poppins().copyWith(fontSize: 14),
    backgroundColor: 'DB5858'.toColor(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 'F1F1F1'.toColor(),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  'Device Settings',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 20,
                    color: '38464D'.toColor(),
                  ),
                ),
                Container(
                  width: 155,
                  child: Divider(
                    height: 0,
                    thickness: 2,
                    color: '488A99'.toColor(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  constraints: BoxConstraints(maxWidth: 325),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: 'DB7058'.toColor(),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.cached,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 4, top: 4, bottom: 4, right: 13),
                              decoration: BoxDecoration(
                                color: '6AB187'.toColor(),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Create Controller',
                                    style: GoogleFonts.poppins().copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        // alignment: Alignment.center,
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        padding: EdgeInsets.only(top: 13, bottom: 13, left: 16),
                        decoration: BoxDecoration(
                          color: 'DFDFDF'.toColor(),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'ENDRESS+HAUSER 127.00.0',
                          style: GoogleFonts.poppins().copyWith(
                            fontSize: 14,
                            color: '444444'.toColor(),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // width: MediaQuery.of(context).size.width - 1500,
                  // height: 607,
                ),
                SizedBox(width: 20),
                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  padding: EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  constraints: BoxConstraints(maxWidth: 795),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 11, bottom: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: 'DBAE58'.toColor(),
                        ),
                        child: Text('Status',
                          style: GoogleFonts.poppins().copyWith(
                              fontSize: 14, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 18),
                      Table(
                        border: TableBorder.all(),
                        columnWidths: const <int, TableColumnWidth>{
                          0: IntrinsicColumnWidth(),
                          1: FlexColumnWidth(),
                          2: FixedColumnWidth(64),
                        },
                        defaultVerticalAlignment: TableCellVerticalAlignment
                            .middle,
                        children: [
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                  padding: EdgeInsets.all(8),
                                  child: Text('Controller Name : ENDRESS+HAUSER', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                padding: EdgeInsets.all(8),
                                child: Text('TYPE : TCP/IP', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                padding: EdgeInsets.all(8),
                                child: Text('IP: 127.0.0.1', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                padding: EdgeInsets.all(8),
                                child: Text('PORT : 502', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                padding: EdgeInsets.all(8),
                                child: Text('DEVICE ID : MODBUS-1', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 700,
                                padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Text('STATUS : ', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: '444444'.toColor(),),),
                                    Container(
                                      padding: EdgeInsets.only(left: 17, top: 4, right: 17, bottom: 4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: '3D93F9'.toColor(),
                                      ),
                                      child: Text('ENABLE', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: Colors.white,),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 175,
                            height: 40,
                            child: ElevatedButton(
                              style: styleConnection,
                              onPressed: () {
//
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.play_circle, color: Colors.white,),
                                  SizedBox(width: 5),
                                  Text('Test Connection', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 90,
                            height: 40,
                            child: ElevatedButton(
                              style: styleEdit,
                              onPressed: () {
//
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.edit, color: Colors.white,),
                                  SizedBox(width: 5),
                                  Text('Edit', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 108,
                            height: 40,
                            child: ElevatedButton(
                              style: styleDelete,
                              onPressed: () {
//
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.delete, color: Colors.white,),
                                  SizedBox(width: 5),
                                  Text('Delete', style: GoogleFonts.poppins().copyWith(fontSize: 14, color: Colors.white),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // width: MediaQuery.of(context).size.width - 1500,
                  // height: 607,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
