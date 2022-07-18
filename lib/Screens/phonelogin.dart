import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:mtstreamapp/widgets/color.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  String? email = '';
  String? password = '';
  bool showspinner = false;

  FirebaseAuth _auth = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showspinner,
      child: Scaffold(
        backgroundColor: colors.gradient2pink,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PHONE NUMBER',
                    style: TextStyle(
                        fontSize: 20,
                        color: colors.mywhite,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Enter Your Phone Number',
                    style: TextStyle(fontSize: 18, color: colors.mywhite),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 300, left: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Container(
                        decoration: BoxDecoration(
                          color: colors.whitegrey,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: TextFormField(
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'EmailID',
                              labelText: 'EmailID',
                              prefixIcon: Icon(Icons.mail),
                              border: OutlineInputBorder()),
                          onChanged: (String value) {
                            email = value;
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'enter mail' : null;
                          },
                        ),
                        height: 50,
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Container(
                        decoration: BoxDecoration(
                          color: colors.whitegrey,
                          borderRadius: BorderRadiusDirectional.circular(10),
                        ),
                        child: TextFormField(
                          controller: passwordcontroller,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'password',
                              labelText: 'password',
                              prefixIcon: Icon(Icons.lock),
                              border: OutlineInputBorder()),
                          onChanged: (String value) {
                            password = value;
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'enter password' : null;
                          },
                        ),
                        height: 50,
                        width: 350,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  showspinner = true;
                                });
                                try {
                                  final user = await _auth
                                      .createUserWithEmailAndPassword(
                                          email: email.toString().trim(),
                                          password: password.toString().trim());

                                  if (user != null) {
                                    print('sucess');
                                    toastMessages("user succesfull");
                                    setState(() {
                                      showspinner = true;
                                    });
                                    Navigator.pushNamed(context, '/home');
                                  }
                                } catch (e) {
                                  print(e.toString());
                                  toastMessages(e.toString());
                                }
                              }
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  showspinner = true;
                                });
                                try {
                                  final user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: email.toString().trim(),
                                          password: password.toString().trim());

                                  if (user != null) {
                                    print('sucess');
                                    toastMessages("user succesfull");
                                    setState(() {
                                      showspinner = true;
                                    });
                                    Navigator.pushNamed(context, '/home');
                                  }
                                } catch (e) {
                                  print(e.toString());
                                  toastMessages(e.toString());
                                }
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                border: Border.all(
                                  color: colors.mywhite,
                                  width: 1.5,
                                ),
                              ),
                              child: Center(
                                  child: Text(
                                "Register",
                                style: TextStyle(
                                    fontSize: 18, color: colors.mywhite),
                              )),
                            ),
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
      ),
    );
  }

  void toastMessages(String message) {
    Fluttertoast.showToast(
        msg: message.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: colors.myred,
        textColor: colors.mywhite,
        fontSize: 16.0);
  }
}
