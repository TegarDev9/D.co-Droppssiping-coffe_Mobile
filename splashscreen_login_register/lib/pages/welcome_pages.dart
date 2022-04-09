part of 'pages.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  _WellcomePageState createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/login.png',
                height: 380, fit: BoxFit.fill),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome",
              style: dangerTextStyle.copyWith(
                  color: brownColor, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod",
              style: dangerTextStyle.copyWith(color: brownColor, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 51,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      //NOTE : TAMPILKAN MODAL REGISTER
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return Wrap(
                                  children: [
                                    // BAGIAN MODAL
                                    Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultMargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // JARAK
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Hello",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                color:
                                                                    dangerColor),
                                                      ),
                                                      Text(
                                                        "Register",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30,
                                                                color:
                                                                    dangerColor),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        // KETIKA ICON DI TEKAN
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/close.png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),

                                              SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Enter your username",
                                                      labelText: "Username",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .person_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "example@gmail.com",
                                                      labelText: "Email",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .email_outlined)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Enter your phone number",
                                                      labelText: "Phone",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .phone_android_outlined)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Your password must be at least 6 characters",
                                                      labelText: "Password",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .lock_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Please re-enter your password",
                                                      labelText:
                                                          "Confirm password",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .lock_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              Container(
                                                  height: 51,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultMargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Register',
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    primaryColor),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: dangerColor,
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  color:
                                                                      dangerColor,
                                                                  width: 3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30))))),

                                              SizedBox(
                                                height: 9,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Already have account? ",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  dangerColor,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                  Text("Login",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                ],
                                              ),

                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          });
                    },
                    child: Text(
                      'Create Account',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: primaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: secondaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 15,
            ),
            Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 2 * defaultMargin,
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder:
                                  (BuildContext context, StateSetter setState) {
                                return Wrap(
                                  children: [
                                    // BAGIAN MODAL
                                    Container(
                                      color: Colors.transparent,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: secondaryColor,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(40),
                                                topLeft: Radius.circular(40))),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: defaultMargin),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              // JARAK
                                              SizedBox(
                                                height: 25,
                                              ),
                                              Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Hello",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontSize: 20,
                                                                color:
                                                                    dangerColor),
                                                      ),
                                                      Text(
                                                        "Login",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 30,
                                                                color:
                                                                    dangerColor),
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Center(
                                                    child: InkWell(
                                                      onTap: () {
                                                        // KETIKA ICON DI TEKAN
                                                        Navigator.pop(context);
                                                      },
                                                      child: Image.asset(
                                                        'assets/images/close.png',
                                                        height: 24,
                                                        width: 24,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),

                                              SizedBox(
                                                height: 25,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Enter your username",
                                                      labelText: "Username",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .person_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextField(
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Your password must be at least 6 characters",
                                                      labelText: "Password",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .lock_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              Container(
                                                  height: 51,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultMargin,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: Text(
                                                        'Login',
                                                        style: whiteTextStyle
                                                            .copyWith(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    primaryColor),
                                                      ),
                                                      style: ElevatedButton.styleFrom(
                                                          primary: dangerColor,
                                                          shape: RoundedRectangleBorder(
                                                              side: BorderSide(
                                                                  color:
                                                                      dangerColor,
                                                                  width: 3),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30))))),

                                              SizedBox(
                                                height: 9,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text("Don't have account? ",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  dangerColor,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                  Text("Sign up",
                                                      style: whiteTextStyle
                                                          .copyWith(
                                                              color:
                                                                  primaryColor,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700))
                                                ],
                                              ),

                                              SizedBox(
                                                height: defaultMargin,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                              },
                            );
                          });
                    },
                    child: Text(
                      'Login',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: secondaryColor, width: 3),
                            borderRadius: BorderRadius.circular(15))))),
            SizedBox(
              height: 36,
            ),
            Text(
              'All Right Reserved @2022',
              textAlign: TextAlign.center,
              style: dangerTextStyle.copyWith(color: brownColor, fontSize: 11),
            ),
            SizedBox(
              height: defaultMargin,
            ),
          ],
        ),
      ),
    );
  }

  void _tooglePasswordView() {
    setState(() {
      _isHiddenPassword = !_isHiddenPassword;
    });
  }

  void _toogleConfirmPasswordView() {
    setState(() {
      _isHiddenConfirmPassword = !_isHiddenConfirmPassword;
    });
  }
}
