import 'package:flutter/material.dart';
import 'package:stylish/modules/auth/create_password_screen.dart';
import 'package:stylish/modules/settings/profile_screen.dart';
import 'package:stylish/widgets/app_text_field.dart';
import 'package:stylish/widgets/custom_elevated_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

late TabController _tabController;
late TextEditingController _emailTextEditingController;
late TextEditingController _emailTextEditingController2;
late TextEditingController _passwordTextEditingController;
String? _errorEmailValue;
String? _errorEmailValue2;
String? _errorPassWordValue;

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  int _index = 0;
  bool _obscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: _index,
    );
    _emailTextEditingController = TextEditingController();
    _emailTextEditingController2 = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _emailTextEditingController.dispose();
    _emailTextEditingController2.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: IndexedStack(
          index: _tabController.index,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Log In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 64, left: 64, bottom: 60),
                  child: Text(
                    'Enter your login details to access your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                ),
                Container(
                  height: 44,
                  width: 315,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 19,
                            color: const Color(0xFF3C80D1).withOpacity(0.1),
                            offset: const Offset(0, 10)),
                      ],
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(15)),
                  child: TabBar(
                    controller: _tabController,
                    onTap: (selectedTab) {
                      setState(() {
                        _index = selectedTab;
                      });
                    },
                    // onTap: (int www) {
                    //   if (_index == www) {
                    //     setState(() {
                    //       _index = 0;
                    //     });
                    //   }
                    // },
                    dividerColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.w300),
                    labelStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    labelColor: const Color(0xff211F36),
                    splashBorderRadius: BorderRadius.circular(15),
                    tabs: const [
                      Tab(
                        text: 'SIGN IN',
                      ),
                      Tab(
                        text: 'SIGN UP',
                      ),
                    ],
                  ),
                ),
                AppTextField(
                    errorText: _errorEmailValue,
                    keyboard: TextInputType.emailAddress,
                    controller: _emailTextEditingController,
                    hint: 'Email Address',
                    constraints: _errorEmailValue != null ? 95 : 70,
                    radiusTop: 15,
                    paddingTop: 16),
                const Divider(
                    thickness: 1, height: 1, indent: 23, endIndent: 23),
                AppTextField(
                  keyboard: TextInputType.visiblePassword,
                  obscure: _obscure,
                  errorText: _errorPassWordValue,
                  controller: _passwordTextEditingController,
                  hint: 'Password',
                  constraints: _errorPassWordValue != null ? 95 : 70,
                  radiusBottom: 15,
                  paddingBottom: 72,
                  suffix: _obscure ? Icons.visibility : Icons.visibility_off,
                  onPress: () {
                    setState(
                      () {
                        _obscure = !_obscure;
                      },
                    );
                  },
                ),
                CustomElevatedButton(
                    title: 'Continue',
                    onPressed: () {
                      performLogin();
                    },
                    buttonWidth: 300,
                    backGroundIcon: const Color(0xff2918F8),
                    buttonColor: const Color(0xff4030FF)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 68, vertical: 46),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/Button Google.png'),
                      Image.asset('images/Button Facebook.png'),
                      Image.asset('images/Button Phone.png'),
                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'New Account',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 64, left: 64, bottom: 60),
                  child: Text(
                    'Start by entering your email address below.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                  ),
                ),
                Container(
                  height: 44,
                  width: 315,
                  decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 19,
                            color: const Color(0xFF3C80D1).withOpacity(0.1),
                            offset: const Offset(0, 10)),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: TabBar(
                    controller: _tabController,
                    onTap: (selectedTap) {
                      setState(() {
                        _index = selectedTap;
                      });
                    },
                    // onTap: (int inde) {
                    //   if (index == inde) {
                    //     setState(() {
                    //       index = 1;
                    //     });
                    //   }
                    // },
                    dividerColor: Colors.black,
                    indicatorColor: Colors.transparent,
                    unselectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.w300),
                    labelStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                    labelColor: const Color(0xff211F36),
                    splashBorderRadius: BorderRadius.circular(15),
                    tabs: const [
                      Tab(
                        text: 'SIGN IN',
                      ),
                      Tab(
                        text: 'SIGN UP',
                      )
                    ],
                  ),
                ),
                AppTextField(
                  errorText: _errorEmailValue2,
                  keyboard: TextInputType.emailAddress,
                  controller: _emailTextEditingController2,
                  hint: 'Email Address',
                  constraints: _errorEmailValue2 != null ? 95 : 70,
                  radiusTop: 15,
                  radiusBottom: 15,
                  paddingTop: 16,
                  paddingBottom: 72,
                ),
                CustomElevatedButton(
                    title: 'Continue',
                    onPressed: () {
                      performSignup();
                    },
                    buttonWidth: 300,
                    backGroundIcon: const Color(0xff2918F8),
                    buttonColor: const Color(0xff4030FF)),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 68, vertical: 46),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/Button Google.png'),
                      Image.asset('images/Button Facebook.png'),
                      Image.asset('images/Button Phone.png'),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void performSignup() {
    if (checkData()) {
      signup();
    }
  }
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextEditingController.text.isNotEmpty &&
        _passwordTextEditingController.text.isNotEmpty ||
        _emailTextEditingController2.text.isNotEmpty) {
      setStateErrorValue();
      return true;
    }
    setStateErrorValue();

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        dismissDirection: DismissDirection.horizontal,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 10, vertical: 10),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: const Color(0xFFFF4343),
        content: const Text('Enter Required Data')));
    return false;
  }

  void setStateErrorValue() {
    setState(() {
      _errorEmailValue =
          _emailTextEditingController.text.isEmpty ? 'Enter Email' : null;
      _errorEmailValue2 =
          _emailTextEditingController2.text.isEmpty ? 'Enter Email' : null;
      _errorPassWordValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter Password' : null;
    });
  }

  void login() {
    Navigator.of(context).pushNamed(ProfileScreen.screenRoute);
  }

  void signup() {
    Navigator.of(context).pushNamed(CreatePasswordScreen.screenRoute);
  }
}
