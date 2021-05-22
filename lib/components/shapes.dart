import '../imports.dart';

class Triangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _ClipTriangle(),
      child: Container(
        width: 60,
        height: 60,
        color: Colors.white.withOpacity(.2),
      ),
    );
  }
}

class _ClipTriangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * .5, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width * .5, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
  
}

class RoundedSquare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(k_radius),
        color: Colors.white.withOpacity(.2),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(radius: 40, backgroundColor: Colors.white.withOpacity(.2));
  }
}