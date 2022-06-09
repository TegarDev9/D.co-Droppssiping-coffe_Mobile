import 'package:flutter/material.dart';
import 'package:login_register/models/user_model.dart';
import 'package:login_register/providers/auth_provider.dart';
import 'package:login_register/shared/shared.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;

    TextEditingController nameController =
        TextEditingController(text: user.nama);
    TextEditingController usernameController =
        TextEditingController(text: user.username);
    TextEditingController emailController =
        TextEditingController(text: user.email);
    TextEditingController notelpController =
        TextEditingController(text: user.no_telp);

    handleEdit() async {
      if (nameController.text.isEmpty ||
          usernameController.text.isEmpty ||
          emailController.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: primaryTextColor,
            content: const Text(
              'Isi kolom terlebih dahulu',
              textAlign: TextAlign.center,
            ),
          ),
        );
      } else if (await authProvider.update(
        token: user.token.toString(),
        name: nameController.text,
        username: usernameController.text,
        email: emailController.text,
        notelp: notelpController.text,
      )) {
        Navigator.pushNamed(context, '/dashboard');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Color.fromARGB(255, 206, 224, 43),
            content: const Text(
              'Profil berhasil diperbarui',
              textAlign: TextAlign.center,
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: primaryTextColor,
            content: const Text(
              'Gagal Update Profil!',
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    PreferredSizeWidget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppbarTextColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: primaryColor,
            ),
            onPressed: handleEdit,
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "${user.nama}",
                hintStyle: AppbarTextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: dangerColor,
                  ),
                ),
              ),
              style: primaryTextStyle,
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "@${user.username}",
                hintStyle: AppbarTextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: dangerColor,
                  ),
                ),
              ),
              style: primaryTextStyle,
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "${user.email}",
                hintStyle: AppbarTextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: dangerColor,
                  ),
                ),
              ),
              style: primaryTextStyle,
            )
          ],
        ),
      );
    }

    Widget phoneInput() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Phone Number',
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
            ),
            TextFormField(
              controller: notelpController,
              decoration: InputDecoration(
                hintText: "${user.no_telp}",
                hintStyle: AppbarTextstyle,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: dangerColor,
                  ),
                ),
              ),
              style: primaryTextStyle,
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/images/Mask.png',
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            phoneInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
