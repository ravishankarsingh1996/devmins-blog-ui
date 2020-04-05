import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'back_button.dart';

/// The height of the toolbar component of the [AppBar].
const double kToolbarHeight = 56.0;

class NeuAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NeuAppBar({
    this.leading,
    this.title,
    Key key,
  }) : super(key: key);

  final Widget leading;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    final MediaQueryData media = MediaQuery.of(context);
    final TextTheme textTheme = Theme.of(context).textTheme;
    final ModalRoute<dynamic> parentRoute = ModalRoute.of(context);
    final ScaffoldState scaffold = Scaffold.of(context, nullOk: true);
    final bool hasDrawer = scaffold?.hasDrawer ?? false;
    final bool canPop = parentRoute?.canPop ?? false;
    final bool useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    Widget leading = this.leading;
    if (leading == null) {
      if (hasDrawer) {
        leading = IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => Scaffold.of(context).openDrawer(),
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      } else if (canPop) {
        leading = useCloseButton ? const CloseButton() : const NeuBackButton();
      }
    }
    if (leading != null) {
      leading = ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: kToolbarHeight),
        child: leading,
      );
    }

    return Container(
      margin: EdgeInsets.only(top: media.padding.top),
      child: Row(
        children: [
         leading != null?  leading: Container(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16)
                  .copyWith(right: (leading != null) ? kToolbarHeight : 0),
              child: DefaultTextStyle(
                style: textTheme.headline.copyWith(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
                child: title,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
