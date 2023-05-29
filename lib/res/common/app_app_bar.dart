import 'package:flutter/material.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  // final Text title;
  // final AppBar appBar;
  final Widget action;
  const AppAppbar({Key? key, required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: Center(child: action),
        ),
      ],
      leading: const BackButton(
        style: ButtonStyle(
          elevation: MaterialStatePropertyAll(10),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(40);
}
