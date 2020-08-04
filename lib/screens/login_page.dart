import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _emailController = TextEditingController();
    var _passwordController = TextEditingController();

    ScreenUtil.init(context, width: 375, height: 812, allowFontScaling: true);

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: ScreenUtil().setWidth(296),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: ScreenUtil().setHeight(84),
                ),
                // LOGO IMAGE
                Image(
                  image: AssetImage('assets/images/logo3x.png'),
                  height: ScreenUtil().setHeight(88),
                  width: ScreenUtil().setWidth(89),
                ),
                // LOGO TEXT
                Text(
                  'Sync',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(72),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(12),
                ),
                //TAGLINE
                Text(
                  'the meeting app',
                  style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(20),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(45),
                ),
                //EMAIL INPUT
                TextField(
                  controller: _emailController,
                  autocorrect: true,
                  enableSuggestions: true,
                  cursorColor: Colors.deepOrangeAccent,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff393E41)),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff393E41)),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    disabledBorder: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Email Address',
                    hintStyle: GoogleFonts.quicksand(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 21, vertical: 16),
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(13),
                ),
                // PASSWORD INPUT
                TextField(
                  controller: _passwordController,
                  autocorrect: false,
                  enableSuggestions: false,
                  cursorColor: Colors.deepOrangeAccent,
                  obscureText: true,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff393E41)),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xff393E41)),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    disabledBorder: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Password',
                    hintStyle: GoogleFonts.quicksand(
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.w400),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 21, vertical: 16),
                  ),
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(13),
                ),
                // LOGIN BUTTON
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffEF5A53),
                          Color(0xffF48348),
                          Color(0xffEF5A53)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Center(
                        child: Text(
                          'Login',
                          style: GoogleFonts.quicksand(
                              fontSize: ScreenUtil().setSp(16),
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(13),
                ),
                // FORGOT PASSWORD BUTTON
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(49),
                ),
                // CREATE ACCOUNT BUTTON
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Create an new account',
                    style: GoogleFonts.quicksand(
                      fontSize: ScreenUtil().setSp(16),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
