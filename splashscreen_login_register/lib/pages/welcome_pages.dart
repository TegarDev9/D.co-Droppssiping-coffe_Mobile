part of 'pages.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({Key? key}) : super(key: key);

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
              style: dangerTextStyle.copyWith(color: brownColor),
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
                    onPressed: () {},
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
                    onPressed: () {},
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
}
