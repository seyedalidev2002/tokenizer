part of tokenizer;

class PlatformAppBar extends PlatformWidget {
  final Widget? leading;
  final Widget title;
  final List<Widget> actions;
  final double? toolbarHeight;
  final bool? centerTitle;
  final Color? backgroundColor;
  final double? elevation;

  const PlatformAppBar({
    required this.title,
    this.leading,
    this.actions = const <Widget>[],
    this.toolbarHeight,
    this.centerTitle,
    this.backgroundColor,
    this.elevation,
  });

  @override
  Widget buildCupertinoWidget(BuildContext context) {
    return CupertinoNavigationBar(
      leading: leading,
      middle: title,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: actions,
      ),
      backgroundColor: backgroundColor,
    );
  }

  @override
  Widget buildMaterialWidget(BuildContext context) {
    return AppBar(
      leading: leading,
      title: title,
      actions: actions,
      toolbarHeight: toolbarHeight,
      centerTitle: centerTitle,
      backgroundColor: backgroundColor,
      elevation: elevation,
    );
  }
}
