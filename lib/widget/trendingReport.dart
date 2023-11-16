// part of '../pages/pages.dart';
//
// class TrendingReport extends StatefulWidget {
//   const TrendingReport({super.key});
//
//   @override
//   State<TrendingReport> createState() => _TrendingReportState();
// }
//
// class _TrendingReportState extends State<TrendingReport> {
//   DateTime selectedDate1 = DateTime.now();
//   DateTime selectedDate2 = DateTime.now();
//   DateTime? _selectedDay1;
//   DateTime? _selectedDay2;
//   CalendarFormat _calenderFormat1 = CalendarFormat.month;
//   CalendarFormat _calenderFormat2 = CalendarFormat.month;
//   bool date = false;
//   String dropdownValue = list.first;
//   PageController controller = PageController();
//
//   TableRow buildRow1(List<String> cells, {bool isHeader = false}) => TableRow(
//     children: cells.map((cell) {
//       final style = TextStyle(
//           fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
//           fontSize: 14);
//       return Container(
//         color: Colors.grey.shade200,
//         padding: EdgeInsets.all(8),
//         child: Center(
//           child: Text(
//             cell,
//             style: style,
//           ),
//         ),
//       );
//     }).toList(),
//   );
//
//   TableRow buildRow2(List<String> cells) => TableRow(
//     children: cells.map((cell) {
//       final style = TextStyle(fontWeight: FontWeight.normal, fontSize: 14);
//       return Container(
//         padding: EdgeInsets.all(8),
//         child: Center(
//           child: Text(
//             cell,
//             style: style,
//           ),
//         ),
//       );
//     }).toList(),
//   );
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedDay1 = selectedDate1;
//     _selectedDay2 = selectedDate2;
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//   void _onDaySelected1(DateTime day1, DateTime focusedDay1) {
//     if (!isSameDay(_selectedDay1, day1)) {
//       setState(() {
//         _selectedDay1 = day1;
//         selectedDate1 = focusedDay1;
//       });
//     }
//   }
//
//   void _onDaySelected2(DateTime day2, DateTime focusedDay2) {
//     if (!isSameDay(_selectedDay2, day2)) {
//       setState(() {
//         _selectedDay2 = day2;
//         selectedDate2 = focusedDay2;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       right: 0,
//       child: Container(
//         width: MediaQuery.of(context).size.width - 250,
//         height: MediaQuery.of(context).size.height,
//         color: 'F1F1F1'.toColor(),
//         child: Stack(
//           children: [
//             Positioned(
//               child: Container(
//                 padding: EdgeInsets.all(30),
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: Container(
//                     height: MediaQuery.of(context).size.height + 800,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment:
//                           CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'pH',
//                               style: GoogleFonts.poppins().copyWith(
//                                   fontSize: 20,
//                                   color: '38464D'.toColor()),
//                             ),
//                             Container(
//                               width: 28,
//                               child: Divider(
//                                 height: 0,
//                                 thickness: 2,
//                                 color: '52AB92'.toColor(),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 30),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                             ),
//                             color: Colors.white,
//                           ),
//                           width: MediaQuery.of(context).size.width,
//                           height: 607,
//                         ),
//                         SizedBox(height: 30),
//                         Container(
//                           padding: EdgeInsets.all(25),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                             ),
//                             color: Colors.white,
//                           ),
//                           width:
//                           MediaQuery.of(context).size.width - 500,
//                           // width: MediaQuery.of(context).size.width,
//                           // height: 161,
//                           child: Column(
//                             crossAxisAlignment:
//                             CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Icon(Icons.filter_list),
//                                   SizedBox(width: 8),
//                                   Text(
//                                     'Filter Report',
//                                     style: GoogleFonts.poppins()
//                                         .copyWith(
//                                         fontSize: 14,
//                                         color:
//                                         '444444'.toColor()),
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 20),
//                               Row(
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'From :',
//                                         style: GoogleFonts.poppins()
//                                             .copyWith(
//                                             fontSize: 14,
//                                             color: '444444'
//                                                 .toColor()),
//                                       ),
//                                       SizedBox(height: 8),
//                                       Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           GestureDetector(
//                                             onTap: () {
//                                               setState(() {
//                                                 date = !date;
//                                               });
//                                             },
//                                             child: Container(
//                                               width: 320,
//                                               padding:
//                                               EdgeInsets.all(5),
//                                               decoration:
//                                               BoxDecoration(
//                                                 color: Colors.white,
//                                                 borderRadius:
//                                                 BorderRadius
//                                                     .circular(5),
//                                                 border: Border.all(
//                                                   width: 1,
//                                                   color: 'AAAAAA'
//                                                       .toColor(),
//                                                 ),
//                                               ),
//                                               child: Row(
//                                                 mainAxisAlignment:
//                                                 MainAxisAlignment
//                                                     .spaceBetween,
//                                                 children: [
//                                                   Text(selectedDate1
//                                                       .toString()
//                                                       .split(' ')[0]),
//                                                   (date == false)
//                                                       ? Icon(Icons
//                                                       .arrow_drop_down)
//                                                       : Icon(Icons
//                                                       .arrow_drop_up),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(height: 10),
//                                           (date == false)
//                                               ? Container()
//                                               : Container(
//                                             decoration:
//                                             BoxDecoration(
//                                               // color: Colors.red,
//                                               borderRadius:
//                                               BorderRadius
//                                                   .circular(
//                                                   8),
//                                               border:
//                                               Border.all(
//                                                 width: 1,
//                                                 color: 'AAAAAA'
//                                                     .toColor(),
//                                               ),
//                                             ),
//                                             width: 350,
//                                             child:
//                                             TableCalendar(
//                                               calendarFormat:
//                                               _calenderFormat1,
//                                               headerStyle: HeaderStyle(
//                                                   formatButtonVisible:
//                                                   false,
//                                                   titleCentered:
//                                                   true),
//                                               availableGestures:
//                                               AvailableGestures
//                                                   .all,
//                                               rowHeight: 35,
//                                               focusedDay:
//                                               selectedDate1,
//                                               firstDay:
//                                               DateTime(
//                                                   1945),
//                                               lastDay: DateTime(
//                                                   2500),
//                                               calendarStyle:
//                                               CalendarStyle(
//                                                 outsideDaysVisible:
//                                                 false,
//                                               ),
//                                               onFormatChanged:
//                                                   (format) {
//                                                 setState(() {
//                                                   _calenderFormat1 =
//                                                       format;
//                                                 });
//                                               },
//                                               onDaySelected:
//                                               _onDaySelected1,
//                                               selectedDayPredicate:
//                                                   (day) =>
//                                                   isSameDay(
//                                                       day,
//                                                       selectedDate1),
//                                               onPageChanged:
//                                                   (focusedDay) {
//                                                 selectedDate1 =
//                                                     focusedDay;
//                                               },
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     crossAxisAlignment:
//                                     CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'To :',
//                                         style: GoogleFonts.poppins()
//                                             .copyWith(
//                                             fontSize: 14,
//                                             color: '444444'
//                                                 .toColor()),
//                                       ),
//                                       SizedBox(height: 8),
//                                       Column(
//                                         crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                         children: [
//                                           Row(
//                                             children: [
//                                               GestureDetector(
//                                                 onTap: () {
//                                                   setState(() {
//                                                     date = !date;
//                                                   });
//                                                 },
//                                                 child: Container(
//                                                   width: 320,
//                                                   padding:
//                                                   EdgeInsets.all(
//                                                       5),
//                                                   decoration:
//                                                   BoxDecoration(
//                                                     color:
//                                                     Colors.white,
//                                                     borderRadius:
//                                                     BorderRadius
//                                                         .circular(
//                                                         5),
//                                                     border:
//                                                     Border.all(
//                                                       width: 1,
//                                                       color: 'AAAAAA'
//                                                           .toColor(),
//                                                     ),
//                                                   ),
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                     children: [
//                                                       Text(selectedDate2
//                                                           .toString()
//                                                           .split(
//                                                           ' ')[0]),
//                                                       (date == false)
//                                                           ? Icon(Icons
//                                                           .arrow_drop_down)
//                                                           : Icon(Icons
//                                                           .arrow_drop_up),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               SizedBox(width: 50),
//                                               Container(
//                                                 padding: EdgeInsets
//                                                     .fromLTRB(
//                                                     25, 7, 25, 7),
//                                                 decoration:
//                                                 BoxDecoration(
//                                                   borderRadius:
//                                                   BorderRadius
//                                                       .circular(
//                                                       5),
//                                                   color: '488A99'
//                                                       .toColor(),
//                                                 ),
//                                                 child: Text(
//                                                   'Submit',
//                                                   style: GoogleFonts
//                                                       .poppins()
//                                                       .copyWith(
//                                                       fontSize:
//                                                       14,
//                                                       color: Colors
//                                                           .white),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                           SizedBox(height: 10),
//                                           (date == false)
//                                               ? Container()
//                                               : Container(
//                                             decoration:
//                                             BoxDecoration(
//                                               // color: Colors.red,
//                                               borderRadius:
//                                               BorderRadius
//                                                   .circular(
//                                                   8),
//                                               border:
//                                               Border.all(
//                                                 width: 1,
//                                                 color: 'AAAAAA'
//                                                     .toColor(),
//                                               ),
//                                             ),
//                                             width: 350,
//                                             child:
//                                             TableCalendar(
//                                               calendarFormat:
//                                               _calenderFormat2,
//                                               headerStyle: HeaderStyle(
//                                                   formatButtonVisible:
//                                                   false,
//                                                   titleCentered:
//                                                   true),
//                                               availableGestures:
//                                               AvailableGestures
//                                                   .all,
//                                               rowHeight: 35,
//                                               focusedDay:
//                                               selectedDate2,
//                                               firstDay:
//                                               DateTime(
//                                                   1945),
//                                               lastDay: DateTime(
//                                                   2500),
//                                               calendarStyle:
//                                               CalendarStyle(
//                                                 outsideDaysVisible:
//                                                 false,
//                                               ),
//                                               onFormatChanged:
//                                                   (format) {
//                                                 setState(() {
//                                                   _calenderFormat2 =
//                                                       format;
//                                                 });
//                                               },
//                                               onDaySelected:
//                                               _onDaySelected2,
//                                               selectedDayPredicate:
//                                                   (day) =>
//                                                   isSameDay(
//                                                       day,
//                                                       selectedDate2),
//                                               onPageChanged:
//                                                   (focusedDay) {
//                                                 selectedDate2 =
//                                                     focusedDay;
//                                               },
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 30),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topRight: Radius.circular(50),
//                             ),
//                             color: Colors.white,
//                           ),
//                           padding: EdgeInsets.all(25),
//                           child: Column(
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Text(
//                                         'Show',
//                                         style: GoogleFonts.poppins()
//                                             .copyWith(
//                                           fontSize: 14,
//                                           color: '444444'.toColor(),
//                                         ),
//                                       ),
//                                       SizedBox(width: 8),
//                                       Container(
//                                         width: 46,
//                                         height: 30,
//                                         child:
//                                         DropdownButtonFormField<
//                                             String>(
//                                           value: dropdownValue,
//                                           icon: Icon(
//                                             Icons
//                                                 .expand_more_outlined,
//                                             color: 'B8B8B8'.toColor(),
//                                           ),
//                                           decoration: InputDecoration(
//                                             contentPadding:
//                                             EdgeInsets.only(
//                                                 left: 10,
//                                                 top: 5,
//                                                 right: 5),
//                                             focusedBorder:
//                                             OutlineInputBorder(
//                                               borderRadius:
//                                               BorderRadius.all(
//                                                   Radius.circular(
//                                                       5)),
//                                               borderSide: BorderSide(
//                                                 width: 1,
//                                                 // color: 'FF6969'.toColor(),
//                                               ),
//                                             ),
//                                             border:
//                                             OutlineInputBorder(
//                                               borderRadius:
//                                               BorderRadius
//                                                   .circular(5),
//                                             ),
//                                           ),
//                                           onChanged: (String? value) {
//                                             setState(() {
//                                               dropdownValue = value!;
//                                             });
//                                           },
//                                           items: list.map<
//                                               DropdownMenuItem<
//                                                   String>>(
//                                                   (String value) {
//                                                 return DropdownMenuItem<
//                                                     String>(
//                                                   value: value,
//                                                   child: Text(
//                                                     value,
//                                                     style: GoogleFonts
//                                                         .poppins()
//                                                         .copyWith(
//                                                       fontSize: 11,
//                                                       fontWeight:
//                                                       FontWeight.w300,
//                                                       // color: '989797'.toColor(),
//                                                     ),
//                                                   ),
//                                                 );
//                                               }).toList(),
//                                         ),
//                                       ),
//                                       SizedBox(width: 8),
//                                       Text(
//                                         'Entries',
//                                         style: GoogleFonts.poppins()
//                                             .copyWith(
//                                           fontSize: 14,
//                                           color: '444444'.toColor(),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Row(
//                                     children: [
//                                       Container(
//                                         width: 200,
//                                         height: 35,
//                                         child: TextFormField(
//                                           decoration: InputDecoration(
//                                               focusedBorder:
//                                               OutlineInputBorder(
//                                                 borderRadius:
//                                                 BorderRadius.all(
//                                                     Radius
//                                                         .circular(
//                                                         5)),
//                                                 borderSide: BorderSide(
//                                                     width: 1,
//                                                     color: 'AAAAAA'
//                                                         .toColor()),
//                                               ),
//                                               contentPadding:
//                                               EdgeInsets.only(
//                                                   left: 10,
//                                                   top: 10),
//                                               border:
//                                               OutlineInputBorder(),
//                                               hintText: 'Search',
//                                               suffixIcon:
//                                               Icon(Icons.search)),
//                                         ),
//                                       ),
//                                       SizedBox(width: 5),
//                                       Container(
//                                         padding: EdgeInsets.all(6),
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                           BorderRadius.circular(
//                                               5),
//                                           color: '6AB187'.toColor(),
//                                         ),
//                                         child: Row(
//                                           children: [
//                                             Text(
//                                               'Download',
//                                               style: GoogleFonts
//                                                   .poppins()
//                                                   .copyWith(
//                                                   fontSize: 14,
//                                                   color: Colors
//                                                       .white),
//                                             ),
//                                             Icon(
//                                               Icons.arrow_drop_down,
//                                               color: Colors.white,
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 20),
//                               Table(
//                                 columnWidths: {
//                                   0: FractionColumnWidth(0.1),
//                                   1: FractionColumnWidth(0.2),
//                                 },
//                                 // defaultVerticalAlignment: TableCellVerticalAlignment.top,
//                                 border: TableBorder.all(
//                                     width: 1,
//                                     color: 'AAAAAA'.toColor()),
//                                 children: [
//                                   buildRow1([
//                                     'NO',
//                                     'DAY/ DATE/ MONTH/ YEAR',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ], isHeader: true),
//                                   buildRow2([
//                                     '1',
//                                     'Senin, 23 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                   buildRow2([
//                                     '2',
//                                     'Senin, 25 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                   buildRow2([
//                                     '3',
//                                     'Senin, 26 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                   buildRow2([
//                                     '4',
//                                     'Senin, 27 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                   buildRow2([
//                                     '5',
//                                     'Senin, 28 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                   buildRow2([
//                                     '6',
//                                     'Senin, 29 November 2023',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                     '',
//                                   ]),
//                                 ],
//                               ),
//                               SizedBox(height: 5),
//                               Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.end,
//                                 children: [
//                                   Container(
//                                     alignment: Alignment.center,
//                                     decoration: BoxDecoration(
//                                       borderRadius:
//                                       BorderRadius.circular(5),
//                                       color: '3D93F9'.toColor(),
//                                     ),
//                                     width: 30,
//                                     height: 30,
//                                     // padding: EdgeInsets.all(10),
//                                     child: Text(
//                                       '1',
//                                       style: GoogleFonts.poppins()
//                                           .copyWith(
//                                           fontSize: 14,
//                                           color: Colors.white),
//                                     ),
//                                   ),
//                                   IconButton(
//                                     onPressed: () {},
//                                     icon: Icon(
//                                       Icons.arrow_forward_ios,
//                                       color: '3D93F9'.toColor(),
//                                       size: 20,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
