import '../imports.dart';

class LogIn extends StatefulWidget {

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

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
                      child: LoginBackgroundHeader(title: "Log In"),
                    ),
                    CustomInput(label: "Email"),
                    CustomInput(label: "Password"),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: k_size, horizontal: k_size * 3),
                            child: Text("New Here?", style: TextStyle(fontSize: k_fontSize * 1.4)),
                          ),
                          LoginButton(
                            width: 100, 
                            height: 100,
                            title: "Sign Up",
                            icon: Icons.arrow_forward_ios,
                            action: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()))
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