import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth_ui/flutter_auth_ui.dart';
import 'package:flutter/material.dart';
import '../../../../widget/selectlist.dart';

class MyAuthPage extends StatefulWidget {
  @override
  _MyAuthPageState createState() => _MyAuthPageState();
}

class _MyAuthPageState extends State<MyAuthPage> {
  // 入力されたメールアドレス
  String newUserEmail = "";
  // 入力されたパスワード
  String newUserPassword = "";
  // 入力されたメールアドレス（ログイン）
  String loginUserEmail = "";
  // 入力されたパスワード（ログイン）
  String loginUserPassword = "";
  // 登録・ログインに関する情報を表示
  String infoText = "";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text("start ui"),
            onPressed: () async {
              final providers = [
                AuthUiProvider.email,
                AuthUiProvider.google,
              ];

              final result = await FlutterAuthUi.startUi(
                items: providers,
                tosAndPrivacyPolicy: TosAndPrivacyPolicy(
                  tosUrl: "https://www.google.com",
                  privacyPolicyUrl: "https://www.google.com",
                ),
                androidOption: AndroidOption(
                  enableSmartLock: false, // default true
                  showLogo: true, // default false
                  overrideTheme: true, // default false
                ),
                emailAuthOption: EmailAuthOption(
                  requireDisplayName: true, // default true
                  enableMailLink: false, // default false
                  handleURL: '',
                  androidPackageName: '',
                  androidMinimumVersion: '',
                ),
              );
              print(result);
            },
          ),
          ElevatedButton(
            onPressed: () async {
              await FlutterAuthUi.signOut();
              print('Signed out !');
            },
            child: Text('sign out'),
          ),
        ],
      ),
    );
  }
}
