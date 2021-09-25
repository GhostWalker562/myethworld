part of 'components.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    this.actions,
    this.leading,
    this.color,
    this.onLogoTap,
  }) : super(key: key);

  final List<Widget>? actions;
  final Widget? leading;
  final Color? color;
  final VoidCallback? onLogoTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: color ?? context.colorScheme.surface,
      child: Row(
        children: [
          const SizedBox(width: 48),
          TransparentButton(child: const Logo(), onTap: onLogoTap),
          if (leading != null) leading!,
          const Spacer(flex: 10),
          Row(
            children: [if (actions != null) ...actions!],
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}
