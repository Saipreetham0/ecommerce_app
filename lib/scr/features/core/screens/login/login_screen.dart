import 'package:ecommerce_app/scr/services/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter Password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _login();
                  },
                  child: const Text('Login'),
                ),
              ],
            ),
          )),
    );
  }

  void _login() async {
    if (_formKey.currentState!.validate()) {
      await context.read<AuthProvider>().login(
            _emailController.text.trim(),
            _passwordController.text.trim(),
          );
      Navigator.pushNamed(context, '/home');
    }
  }
}
