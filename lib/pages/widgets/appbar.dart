import 'package:flutter/material.dart';
import 'package:githubstatus/pages/widgets/themeF.dart';
// import 'package:wyi_app/pages/mentoria/encuesta/encuesta.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;

  /// you can add more fields that meet your needs

  const BaseAppBar({Key key, this.title, this.appBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title:title,
        shadowColor: AppColor.principalColor,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: AppColor.principalColor),
    );
  }
  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
