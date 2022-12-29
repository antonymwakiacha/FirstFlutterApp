import 'package:flutter/material.dart';

class FormEx extends StatefulWidget {
  const FormEx({Key? key}) : super(key: key);

  @override
  State<FormEx> createState() => _FormExState();
}

class _FormExState extends State<FormEx> {
  //To handle form input changes
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;

  void _submit() {
    final isValid = _formKey.currentState?.validate();
    if (!isValid!) {
      return;
    }
    _formKey.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: AppBar(
        title: Text("Form Validation"),
        leading: IconButton(
          icon: Icon(Icons.filter_vintage),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
      ),
    );
  }
}
