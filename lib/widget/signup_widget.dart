import 'package:flutter/material.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  State<SignUpWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<SignUpWidget> {
  Widget _buildSignUpWidget() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Image.asset(
            'assets/images/logo.png',
            color: Colors.green,
          )),
          Form(
            child: Column(
              children: [
                _buildSizedBox(),
                _buildInputUserName(),
                _buildSizedBox(),
                _buildInputEmail(),
                _buildSizedBox(),
                _buildInputPassword(),
                _buildTextAccount(),
                _buildTextCreateAccount(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSizedBox() {
    return const SizedBox(
      height: 20,
    );
  }

  Widget _buildInputUserName() {
    return const TextField(
      decoration: InputDecoration(
          hintText: 'UserName',
          prefix: Icon(Icons.person),
          border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
    );
  }

  Widget _buildInputEmail() {
    return const TextField(
      decoration: InputDecoration(
          hintText: 'Input email',
          prefix: Icon(Icons.person),
          border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
    );
  }

  Widget _buildInputPassword() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          prefix: Icon(Icons.password_sharp),
          border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
    );
  }

  Widget _buildTextAccount() {
    return Row(
      children: [
        const Text("If you have account"),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('login');
          },
          child: const Text(
            'Click here',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTextCreateAccount() {
    return ElevatedButton(
        onPressed: () {},
        child: const Text(
          'Create account',
          style: TextStyle(
            fontSize: 20,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildSignUpWidget());
  }
}
