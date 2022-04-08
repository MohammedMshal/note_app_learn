import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  Widget _buildLogin() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/logo.png')),
          Form(
            child: Column(
              children: [
                _buildSizedBox(),
                _buildInputUserName(),
                _buildSizedBox(),
                _buildInputPassword(),
                _buildTextCreateAccount(),
                _buildSizedBox(),
                _buildButtonSignup(),
                _buildForgotYourPassword(),
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

  Widget _buildInputPassword() {
    return const TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          prefix: Icon(Icons.password_sharp),
          border: OutlineInputBorder(borderSide: BorderSide(width: 1))),
    );
  }

  Widget _buildTextCreateAccount() {
    return Row(
      children: [
        const Text("If you haven't account"),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('signup');
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

  Widget _buildButtonSignup() {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacementNamed('homepage');
        },
        child: const Text(
          'Signup',
          style: TextStyle(
            fontSize: 20,
          ),
        ));
  }

  _buildForgotYourPassword() {
    return InkWell(
      onTap: () {},
      child: const Text(
        'Forgot your password',
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildLogin());
  }
}
