import '../imports.dart';

class CustomInput extends StatelessWidget {
  final String? label;

  CustomInput({this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: k_size, horizontal: k_size * 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(k_radius),
        border: Border.all(color: k_appColor, width: 1.5)
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "$label",
          isCollapsed: true,
          contentPadding: EdgeInsets.all(k_size * 2),
          border: InputBorder.none
        ),
      ),
    );
  }
}