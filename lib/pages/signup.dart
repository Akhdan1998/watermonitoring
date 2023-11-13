part of 'pages.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool _obsecureText = true;
  bool value = true;
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: GoogleFonts.poppins().copyWith(fontSize: 14),
      backgroundColor: '488A99'.toColor());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 150,
                    bottom: 70,
                    right: 150,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                        ),
                        border: Border.all(width: 2, color: '9EF3F3'.toColor()),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 80,
                      left: 200,
                      child: Container(
                          // color: Colors.red,
                          // width: MediaQuery.of(context).size.width - 500,
                          height: MediaQuery.of(context).size.height - 200,
                          child: Image.asset('assets/waste.png'))),
                ],
              ),
            ),
          ),
          Positioned(
            right: 50,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                ),
              ),
              width: 640,
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 180,
                    child: Image.asset('assets/monitoring.png', scale: 6),
                  ),
                  Positioned(
                    top: 130,
                    left: 100,
                    right: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Register',
                          style: GoogleFonts.poppins().copyWith(
                              color: '444444'.toColor(), fontSize: 18),
                        ),
                        Container(
                          width: 75,
                          child: Divider(
                            height: 0,
                            thickness: 2,
                            color: '52AB92'.toColor(),
                          ),
                        ),
                        SizedBox(height: 32),
                        Container(
                          width: 400,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Depan',
                                    style: GoogleFonts.poppins().copyWith(
                                        color: '444444'.toColor(),
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 30,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            bottom: 5, left: 10),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: 'AAAAAA'.toColor(),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: 'AAAAAA'.toColor(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Belakang',
                                    style: GoogleFonts.poppins().copyWith(
                                        color: '444444'.toColor(),
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    height: 30,
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.only(
                                            bottom: 5, left: 10),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: 'AAAAAA'.toColor(),
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            width: 1,
                                            color: 'AAAAAA'.toColor(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Email',
                              style: GoogleFonts.poppins().copyWith(
                                  color: '444444'.toColor(), fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: 180,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: 'AAAAAA'.toColor(),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: 'AAAAAA'.toColor(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Password',
                              style: GoogleFonts.poppins().copyWith(
                                  color: '444444'.toColor(), fontSize: 14),
                            ),
                            SizedBox(height: 5),
                            Container(
                              height: 30,
                              width: 180,
                              child: TextFormField(
                                obscureText: _obsecureText,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(bottom: 5, left: 10),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: 'AAAAAA'.toColor(),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: 'AAAAAA'.toColor(),
                                    ),
                                  ),
                                  suffixIcon: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obsecureText = !_obsecureText;
                                      });
                                    },
                                    child: Icon(
                                      _obsecureText
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Transform.scale(
                                  alignment: Alignment.centerLeft,
                                  scale: 0.70,
                                  child: Switch.adaptive(
                                    activeColor: '4DA934'.toColor(),
                                    activeTrackColor: Colors.green,
                                    value: value,
                                    onChanged: (value) => setState(() {
                                      this.value = value;
                                    }),
                                  ),
                                ),
                                // SizedBox(width: 5),
                                Text(
                                  'saya setuju dengan persyaratan',
                                  style: GoogleFonts.poppins().copyWith(
                                      color: '444444'.toColor(), fontSize: 10),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),
                            ElevatedButton(
                              style: style,
                              onPressed: () {},
                              child: const Text('Buat akun'),
                            ),
                            SizedBox(height: 30),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              child: Divider(
                                height: 0,
                                thickness: 2,
                                // indent: 10,
                                // endIndent: 10,
                                color: '52AB92'.toColor(),
                              ),
                            ),
                            SizedBox(height: 65),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Sudah memiliki akun ? ',
                                  style: GoogleFonts.poppins().copyWith(
                                    fontSize: 10,
                                    color: '767676'.toColor(),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    color: Colors.white,
                                    child: Text('Login Sekarang',
                                      style: GoogleFonts.poppins().copyWith(
                                        fontSize: 10,
                                        color: '3D93F9'.toColor(),
                                      ),),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
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
