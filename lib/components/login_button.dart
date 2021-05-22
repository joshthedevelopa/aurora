import '../imports.dart';

class LoginButton extends StatelessWidget {
  final double height, width;
  final IconData icon;
  final String title;
  final Function? action;

  LoginButton({this.action, this.icon = Icons.arrow_forward_ios, this.title = "", required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _Clipper(),
      clipBehavior: Clip.hardEdge,
      child: Material(
        color: k_appColor,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () => action?.call(),
          splashColor: Colors.white.withOpacity(0.9),
          child: SizedBox(
            width: width,
            height: height,
            child: Padding(
              padding: EdgeInsets.only(left: k_size * 1.8, right: 0),
              child: Row(
                children: [
                  Text(title, style: TextStyle(color: Colors.white)),
                  SizedBox(width: k_size * .4),
                  Icon(icon, color: Colors.white)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, size.height * .4);
    path.arcToPoint(Offset(size.width * .15, size.height * .25), radius: Radius.circular(20));

    path.lineTo(size.width * .5, size.height * .25);
    path.cubicTo(size.width * .8, size.height * .25, size.width * .7, 0, size.width, 0);

    path.lineTo(size.width, size.height);
    path.cubicTo(size.width * .7, size.height, size.width * .8, size.height * .75, size.width * .5, size.height * .75);
    
    path.lineTo(size.width * .15, size.height * .75);
    path.arcToPoint(Offset(0, size.height * .6), radius: Radius.circular(20));
    path.lineTo(0, size.height * .4);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;

}