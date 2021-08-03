import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();

  static const String routeName = '/my-account-register';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MyAccount(),
      settings: RouteSettings(name: routeName),
    );
  }
}

class _MyAccountState extends State<MyAccount> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  bool? _obscurePassword;
  bool? _autovalidate;
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  @override
  void initState() {
    super.initState();
    _obscurePassword = true;
    _autovalidate = false;
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Information'),
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: _buildLoginForm(),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      //autovalidateMode: ,
      key: _key,

      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'CREATE A USERNAME',
                filled: true,
                isDense: true,
              ),
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              //validator: _validateEmail,
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'PASSWORD',
                filled: true,
                isDense: true,
              ),
              //obscureText: _obscurePassword,
              controller: _passwordController,
              //validator: (val) => _validateRequired(val, 'Password'),
            ),
            const SizedBox(
              height: 16,
            ),
            RaisedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                padding: const EdgeInsets.all(16),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(8.0)),
                child: Text('Join Sendi Rider'),
                onPressed: _validateFormAndLogin),
          ],
        ),
      ),
    );
  }

  void _validateFormAndLogin() {
    // Get form state from the global key
    var formState = _key.currentState;

    // check if form is valid
    if (formState!.validate()) {
      print('Form is valid');
    } else {
      // show validation errors
      // setState forces our [State] to rebuild
      setState(() {
        _autovalidate = true;
      });
    }
  }
}
