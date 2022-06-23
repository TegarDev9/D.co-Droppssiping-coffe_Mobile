part of 'pages.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({Key? key}) : super(key: key);

  @override
  _WellcomePageState createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  TextEditingController namaController = TextEditingController(text: '');
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool _isHiddenPassword = true;
  bool _isHiddenConfirmPassword = true;

  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    handleSignUp() async {
      if (await authProvider.register(
        nama: namaController.text,
        username: usernameController.text,
        email: emailController.text,
        no_telp: phoneController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/dashboard');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Signout,
            content: Text(
              'Gagal Register',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    handleSignIn() async {
      if (await authProvider.login(
        email: emailController.text,
        password: passwordController.text,
      )) {
        Navigator.pushNamed(context, '/dashboard');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Signout,
            content: Text(
              'Gagal Login',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/login.png',
                height: 428, fit: BoxFit.fill),
            SizedBox(
              height: 15,
            ),
            Text(
              "Welcome",
              style: dangerTextStyle.copyWith(
                  color: brownColor, fontSize: 30, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "We offer a complete dropshipping service for you. \nThis means that we roast, pick and ship your order.",
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
                                                      Text.rich(
                                                        TextSpan(
                                                          text: 'This is ',
                                                          style: dangerTextStyle
                                                              .copyWith(
                                                                  fontSize: 28,
                                                                  color:
                                                                      dangerColor),
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                              text:
                                                                  'Dropshipper Coffee',
                                                              style: dangerTextStyle.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 28,
                                                                  color:
                                                                      dangerColor),
                                                            )
                                                            // can add more TextSpans here...
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        "Sign up to Continue",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 14,
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
                                                height: 29,
                                              ),

                                              TextFormField(
                                                controller: namaController,
                                                style: dangerTextStyle.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: dangerColor),
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  hintText: "Enter your Nama",
                                                  labelText: "Nama Lengkap",
                                                  suffixIcon: InkWell(
                                                    child: Icon(
                                                        Icons.person_outline),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextFormField(
                                                  controller:
                                                      usernameController,
                                                  style:
                                                      dangerTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          color: dangerColor),
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

                                              TextFormField(
                                                  controller: emailController,
                                                  style:
                                                      dangerTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          color: dangerColor),
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

                                              TextFormField(
                                                  controller: phoneController,
                                                  style:
                                                      dangerTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          color: dangerColor),
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

                                              TextFormField(
                                                obscureText: _isHiddenPassword,
                                                style: dangerTextStyle.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: dangerColor),
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  hintText:
                                                      "Your password must be at least 6 characters",
                                                  labelText: "Password",
                                                  suffixIcon: InkWell(
                                                    child: Icon(_isHiddenPassword
                                                        ? Icons.visibility
                                                        : Icons.visibility_off),
                                                    onTap: () {
                                                      setState(() {
                                                        _isHiddenPassword =
                                                            !_isHiddenPassword;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextFormField(
                                                obscureText:
                                                    _isHiddenConfirmPassword,
                                                controller: passwordController,
                                                style: dangerTextStyle.copyWith(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14,
                                                    color: dangerColor),
                                                decoration: InputDecoration(
                                                  border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  hintText:
                                                      "Please re-enter your password",
                                                  labelText: "Confirm password",
                                                  suffixIcon: InkWell(
                                                    child: Icon(
                                                        _isHiddenConfirmPassword
                                                            ? Icons.lock_outline
                                                            : Icons.lock_clock),
                                                    onTap: () {
                                                      setState(() {
                                                        _isHiddenConfirmPassword =
                                                            !_isHiddenConfirmPassword;
                                                      });
                                                    },
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 29,
                                              ),

                                              Container(
                                                  height: 51,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultMargin,
                                                  child: ElevatedButton(
                                                      onPressed: handleSignUp,
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
                                                      style: dangerTextStyle
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
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              color:
                                                                  yellowColor,
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
                                                      Text.rich(
                                                        TextSpan(
                                                          text: 'This is ',
                                                          style: dangerTextStyle
                                                              .copyWith(
                                                                  fontSize: 28,
                                                                  color:
                                                                      dangerColor),
                                                          children: <TextSpan>[
                                                            TextSpan(
                                                              text:
                                                                  'Dropshipper Coffee',
                                                              style: dangerTextStyle.copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 28,
                                                                  color:
                                                                      dangerColor),
                                                            )
                                                            // can add more TextSpans here...
                                                          ],
                                                        ),
                                                      ),
                                                      Text(
                                                        "Sign in to Continue",
                                                        style: dangerTextStyle
                                                            .copyWith(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                fontSize: 14,
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

                                              TextFormField(
                                                  controller: emailController,
                                                  style:
                                                      dangerTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          color: dangerColor),
                                                  decoration: InputDecoration(
                                                      border:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      hintText:
                                                          "Enter your Email",
                                                      labelText: "Email",
                                                      suffixIcon: InkWell(
                                                          child: Icon(Icons
                                                              .person_outline)))),
                                              SizedBox(
                                                height: 9,
                                              ),

                                              TextFormField(
                                                  obscureText:
                                                      _isHiddenPassword,
                                                  controller:
                                                      passwordController,
                                                  style:
                                                      dangerTextStyle.copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14,
                                                          color: dangerColor),
                                                  decoration: InputDecoration(
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                    ),
                                                    hintText:
                                                        "Your password must be at least 6 characters",
                                                    labelText: "Password",
                                                    suffixIcon: InkWell(
                                                      child: Icon(
                                                          _isHiddenPassword
                                                              ? Icons
                                                                  .lock_outline
                                                              : Icons
                                                                  .lock_clock),
                                                      onTap: () {
                                                        setState(() {
                                                          _isHiddenPassword =
                                                              !_isHiddenPassword;
                                                        });
                                                      },
                                                    ),
                                                  )),
                                              SizedBox(
                                                height: 14,
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: dangerColor,
                                                            width: 3),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Checkbox(
                                                      value: _isChecked,
                                                      checkColor:
                                                          Color(0xFFbf814e),
                                                      onChanged: (value) {
                                                        setState(() {
                                                          this._isChecked =
                                                              value!;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Text("Remember me",
                                                      style: dangerTextStyle
                                                          .copyWith(
                                                              color:
                                                                  dangerColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                  Spacer(),
                                                  Text(
                                                    "Forgot your password ?",
                                                    style: dangerTextStyle
                                                        .copyWith(
                                                            color: dangerColor,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                  )
                                                ],
                                              ),

                                              SizedBox(
                                                height: 14,
                                              ),

                                              Container(
                                                  height: 51,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      2 * defaultMargin,
                                                  child: ElevatedButton(
                                                      onPressed: handleSignIn,
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
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              color:
                                                                  yellowColor,
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
              style: dangerTextStyle.copyWith(color: brownColor, fontSize: 14),
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
