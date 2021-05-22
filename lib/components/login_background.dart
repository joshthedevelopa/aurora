import '../imports.dart';

class LoginBackgroundHeader extends StatelessWidget {
  final String? title;

  LoginBackgroundHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: _Clipper(),
              child: Container(
                color: k_appColor,
                child: SizedBox(
                  width: double.infinity, 
                  height: double.infinity,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Stack(
                      children: [                      
                        Positioned(
                          bottom: -constraints.maxHeight * .1,
                          right: constraints.maxWidth * .05,
                          child: Triangle(),
                        ),
                        Positioned(
                          top: constraints.maxHeight * .1,
                          left: constraints.maxWidth * .7,
                          child: RoundedSquare(),
                        ),
                        Positioned(
                          top: constraints.maxHeight * .1,
                          left: constraints.maxWidth * .3,
                          child: Circle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: LayoutBuilder(
              builder: (context, constraints) => Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * .5, left: k_size * 3), 
                child:  Text("$title", style: TextStyle(fontSize: k_fontSize * 2, fontWeight: FontWeight.w500)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    path.cubicTo(
      size.width * .5, 0, 
      size.width * .5, size.height,
      size.width, size.height
    );

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    return path;  
  }
  
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}