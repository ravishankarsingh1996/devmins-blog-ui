import 'package:flutter/widgets.dart';
import 'fa_icon.dart';
import 'icon_data.dart';

/// Special icon style which can have two colors
class FaDuotoneIcon extends StatelessWidget {
  /// The icon to display. The available icons are described in
  /// [FontAwesomeIcons]. Applicable icons start with "duotone".
  final IconDataDuotone icon;

  /// The font size of the icon.
  ///
  /// Defaults to the current [IconTheme] size, if any. If there is no
  /// [IconTheme], or it does not specify an explicit size, then it defaults to
  /// 24.0.
  ///
  /// If this [FaIcon] is being placed inside an [IconButton], then use
  /// [IconButton.iconSize] instead, so that the [IconButton] can make the
  /// splash area the appropriate size as well. The [IconButton] uses an
  /// [IconTheme] to pass down the size to the [FaIcon].
  final double size;

  /// Color used for the icon's main body
  final Color primaryColor;

  /// Color used for the icon's accents
  final Color secondaryColor;

  /// Semantic label for the icon.
  ///
  /// Announced in accessibility modes (e.g TalkBack/VoiceOver).
  /// This label does not show in the UI.
  ///
  /// See also:
  ///
  ///  * [Semantics.label], which is set to [semanticLabel] in the underlying
  ///    [Semantics] widget.
  final String semanticLabel;

  const FaDuotoneIcon(
    this.icon, {
    Key key,
    this.size,
    this.primaryColor,
    this.secondaryColor,
    this.semanticLabel,
  })  : assert(icon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: semanticLabel,
      child: Stack(
        key: key,
        children: <Widget>[
          FaIcon(
            IconDataDuotone(icon.codePoint),
            size: size,
            color: secondaryColor,
          ),
          FaIcon(
            IconDataDuotone(icon.codePoint + 0x100000),
            size: size,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
