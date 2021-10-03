import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/services/tokens/polygon_token.dart';

class CustomDropdownSearch extends StatelessWidget {
  const CustomDropdownSearch({
    Key? key,
    required this.item,
    this.tokens = const [],
    this.onChanged,
  }) : super(key: key);

  final InchToken? item;
  final List<InchToken> tokens;
  final ValueChanged<InchToken?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch(
      selectedItem: item,
      mode: Mode.MENU,
      items: tokens,
      showSearchBox: true,
      filterFn: (InchToken? token, String? str) {
        if (str == null || token == null) {
          return false;
        }
        str = str.toLowerCase();
        return token.name.toLowerCase().contains(str) ||
            token.symbol.toLowerCase().contains(str) ||
            token.address.toLowerCase().contains(str);
      },
      dropdownSearchDecoration: const InputDecoration(
        border: OutlineInputBorder(borderRadius: Radii.m),
      ),
      searchFieldProps: TextFieldProps(
        cursorWidth: 1,
        cursorColor: context.colorScheme.onSurface,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 0),
          hintText: 'Search by name or paste address',
          hintStyle: context.textTheme.button,
        ),
      ),
      popupShape: RoundedRectangleBorder(
        borderRadius: Radii.m.subtract(
          const BorderRadius.only(
            topLeft: Radii.mRadius,
            topRight: Radii.mRadius,
          ),
        ),
      ),
      onChanged: onChanged,
      popupItemBuilder: (context, InchToken token, show) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                foregroundImage: CachedNetworkImageProvider(token.asset!),
                maxRadius: 24,
                backgroundColor: context.colorScheme.primary,
                child: Text(
                  token.name[0],
                  style: context.textTheme.headline5,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  '${token.name} (${token.symbol})',
                  style: context.textTheme.bodyText1!.copyWith(
                    color: context.colorScheme.onSurface,
                  ),
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        );
      },
      maxHeight: context.mediaQuery.height * 0.6,
      popupBackgroundColor: context.colorScheme.surface,
      dropdownButtonBuilder: (context) {
        return Icon(
          IconlyBroken.arrowDown2,
          color: context.colorScheme.onSurface,
        );
      },
      dropdownBuilder: (context, InchToken? token) {
        if (token == null) return const SizedBox.shrink();

        return Row(
          children: [
            CircleAvatar(
              foregroundImage: CachedNetworkImageProvider(token.asset!),
              maxRadius: 16,
              backgroundColor: context.colorScheme.primary,
              child: Text(
                token.name[0],
                style: context.textTheme.headline5,
              ),
            ),
            const SizedBox(width: 16),
            SelectableText(
              token.symbol,
              style: context.textTheme.subtitle1!.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        );
      },
    );
  }
}
