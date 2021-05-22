import '../imports.dart';

class OnBoard extends StatefulWidget {
  @override
  _OnBoardState createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                "assets/images/onboard_2.jpg", 
                width: double.infinity, 
                height: double.infinity
              ),
            ),
            Padding(
              padding: EdgeInsets.all(k_size),
              child: Text("Aurora", style: TextStyle(fontSize: k_fontSize * 2.5)),
            ),
            Padding(
              padding: EdgeInsets.all(k_size * 4),
              child: Material(
                color: k_appColor,
                borderRadius: BorderRadius.circular(k_radius * 2),
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.9),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn())),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: k_size * 2, vertical:  k_size * 3),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          "Get Started", 
                          style: TextStyle(
                            fontSize: k_fontSize * 1.2,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}