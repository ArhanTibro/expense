import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  MyForm({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
          const SnackBar(content: Text('Form submitted successfully')));
    }
  }

  String? _validateUserName(value) {
    if (value!.isEmpty) {
      return "Please Enter an user name";
    }
    return null;
  }

  String? _validateEmail(value) {
    if (value!.isEmpty) {
      return "Please Enter an email";
    }
    RegExp emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "Please enter a valid email";
    }
    return null;
  }

  String? _validatePhoneNumber(value) {
    if (value!.isEmpty) {
      return "Please Enter a phone number";
    }
    if (value.length != 11) {
      return "Enter 11 digits";
    }
    return null;
  }

  String? _validatePassword(value) {
    if (value!.isEmpty) {
      return "Please Enter a password";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252634),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                const SizedBox(
                  width: 250,
                  child: Text(
                    'Create new Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: _buildInputDecoration("UserName", Icons.person),
                  validator: _validateUserName,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: _buildInputDecoration("email", Icons.email),
                  validator: _validateEmail,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.phone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration:
                      _buildInputDecoration("Phone Number", Icons.phone),
                  validator: _validatePhoneNumber,
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: _buildInputDecoration("Password", Icons.lock),
                  validator: _validatePassword,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 241, 89, 0)),
                        onPressed: _submitForm,
                        child: Text('Submit'))),
              ],
            )),
      ),
    );
  }

  InputDecoration _buildInputDecoration(String label, IconData suffixIcon) {
    return InputDecoration(
        fillColor: const Color(0xffaa494a59),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x35949494))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        filled: true,
        labelText: label,
        labelStyle: const TextStyle(color: Color(0xFF949494)),
        suffixIcon: Icon(
          suffixIcon,
          color: const Color(0xFF949494),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)));
  }
}
