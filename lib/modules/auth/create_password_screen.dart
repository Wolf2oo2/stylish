import 'package:flutter/material.dart';
import 'package:stylish/widgets/app_text_field.dart';
import 'package:stylish/widgets/custom_elevated_button.dart';

class CreatePasswordScreen extends StatefulWidget {
  static const String screenRoute = '/createPassWord';

  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePasswordScreen> {
  late TextEditingController _passwordTextEditingController;
  String? _errorPassWordValue;
  bool _obscure = true;

  @override
  void initState() {
    super.initState();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Color(0xFF763AFF),
            )),
        centerTitle: true,
        title: const Text(
          'Create Password',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color(0xFF211F36)),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 64, left: 64, bottom: 60),
            child: Text(
              'Your password must have at least one symbol & 8 or more characters.',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
            ),
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 68, vertical: 46),
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
    );
  }

  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_passwordTextEditingController.text.isNotEmpty) {
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
      _errorPassWordValue =
          _passwordTextEditingController.text.isEmpty ? 'Enter Password' : null;
    });
  }

  void login() {
  }
}
