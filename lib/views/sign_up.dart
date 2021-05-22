import '../imports.dart';

class SignUp extends StatefulWidget {

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight 
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Expanded(
                      child: LoginBackgroundHeader(title: "Sign Up"),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomInput(label: "Email"),
                          CustomInput(label: "Password"),
                          CustomInput(label: "Reset Password"),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: k_size, horizontal: k_size * 3),
                            child: Text("I've been here?", style: TextStyle(fontSize: k_fontSize * 1.4)),
                          ),
                          LoginButton(
                            width: 100, 
                            height: 100,
                            title: "Login",
                            icon: Icons.arrow_forward_ios,
                            action: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogIn()))
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}