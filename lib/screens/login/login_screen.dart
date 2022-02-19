import 'package:firebase_auth/firebase_auth.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:wlstore/common/forgot_password.dart';
import 'package:wlstore/helpers/send_email.dart';
import 'package:wlstore/models/user_model.dart';
import 'package:wlstore/models/user_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:wlstore/helpers/validators.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/signup');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 6),
            ),
            child: const Text(
              'CRIAR CONTA',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: Consumer<UserManager>(
              builder: (_, userManager, child) {
                if (userManager.loadingFace || userManager.loadingGoogle) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(
                          Theme.of(context).primaryColor),
                    ),
                  );
                }

                return ListView(
                  padding: const EdgeInsets.all(16),
                  shrinkWrap: true,
                  children: <Widget>[
                    TextFormField(
                      controller: emailController,
                      enabled: !userManager.loading,
                      decoration: const InputDecoration(hintText: 'E-mail'),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      validator: (email) {
                        if (!emailValid(email)) return 'E-mail inválido';
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: passController,
                      enabled: !userManager.loading,
                      decoration: const InputDecoration(hintText: 'Senha'),
                      autocorrect: false,
                      obscureText: true,
                      validator: (pass) {
                        if (pass.isEmpty || pass.length < 6)
                          return 'Senha inválida';
                        return null;
                      },
                    ),
                    child,
                    const SizedBox(
                      height: 16,
                    ),
                    RaisedButton(
                      // TODO
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: userManager.loading
                          ? null
                          : () {
                              if (formKey.currentState.validate()) {
                                userManager.signIn(
                                  user: UserModel(
                                      email: emailController.text,
                                      password: passController.text),
                                  onFail: (e) {
                                    scaffoldKey.currentState.showSnackBar(
                                      SnackBar(
                                        content: Text('Falha ao entrar: $e'),
                                        backgroundColor: Colors.red,
                                      ),
                                    );
                                  },
                                  onEmailNotVerified:
                                      (FirebaseUser currentUser) {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor:
                                              Theme.of(context).primaryColor,
                                          title: const Text(
                                            "Email não verificado!",
                                            style: TextStyle(
                                              // color: Colors.white,
                                            ),
                                          ),
                                          content: ElevatedButton(
                                            onPressed: () async {
                                              if (!currentUser
                                                  .isEmailVerified) {
                                                await currentUser
                                                    .sendEmailVerification()
                                                    .then((email) {
                                                  Navigator.of(context)
                                                      .pushReplacement(
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          SendEmail(currentUser
                                                              .email),
                                                    ),
                                                  );
                                                }).catchError((onError) {
                                                  Flushbar(
                                                    title: 'ATENÇÃO!',
                                                    message:
                                                        "${onError.toString()}",
                                                    flushbarPosition:
                                                        FlushbarPosition.TOP,
                                                    flushbarStyle:
                                                        FlushbarStyle.GROUNDED,
                                                    isDismissible: true,
                                                    backgroundColor:
                                                        Theme.of(context)
                                                            .primaryColor,
                                                    duration: const Duration(
                                                        seconds: 5),
                                                    icon: const Icon(
                                                      Icons.shopping_cart,
                                                      // color: Colors.white,
                                                    ),
                                                  ).show(context);
                                                });
                                              } else {
                                                Navigator.of(context).pop();
                                              }
                                            },
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                      vertical: 20),
                                              textStyle: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            child: const Text(
                                              'Enviar verificação por email',
                                              style: TextStyle(
                                                // color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  onSuccess: () {
                                    Navigator.of(context).pop();
                                  },
                                );
                              }
                            },
                      color: Theme.of(context).primaryColor,
                      disabledColor:
                          Theme.of(context).primaryColor.withAlpha(100),
                      textColor: Colors.white,
                      child: userManager.loading
                          ? const CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(Colors.white),
                            )
                          : const Text(
                              'Entrar',
                              style: TextStyle(fontSize: 15),
                            ),
                    ),
                    const SizedBox(height: 4),
                    SignInButton(
                      Buttons.Google,
                      text: 'Entrar com Google',
                      onPressed: () {
                        userManager.googleLogin(onFail: (e) {
                          scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text('Falha ao entrar: $e'),
                            backgroundColor: Colors.red,
                          ));
                        }, onSuccess: () {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    SignInButton(
                      Buttons.Facebook,
                      text: 'Entrar com Facebook',
                      onPressed: () {
                        userManager.facebookLogin(onFail: (e) {
                          scaffoldKey.currentState.showSnackBar(SnackBar(
                            content: Text('Falha ao entrar: $e'),
                            backgroundColor: Colors.red,
                          ));
                        }, onSuccess: () {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                );
              },
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) =>
                            ForgotPassword(emailController.text),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                  ),
                  child: Text(
                    'Esqueceu a senha?',
                    style: TextStyle(
                      color: Colors.blue[700],
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
