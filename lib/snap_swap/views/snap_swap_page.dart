import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/components/components.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/services/swap/swap_token.dart';
import 'package:myethworld/snap_swap/swap/swap_bloc.dart';
import 'package:myethworld/snap_swap/swap_tokens/swap_tokens_cubit.dart';
import 'package:quiver/strings.dart';

class SnapSwapPage extends StatefulWidget {
  const SnapSwapPage({Key? key}) : super(key: key);

  @override
  State<SnapSwapPage> createState() => _SnapSwapPageState();
}

class _SnapSwapPageState extends State<SnapSwapPage> {
  final ScrollController controller = ScrollController();
  final TextEditingController inputController = TextEditingController();

  void _checkAllowance(BuildContext context, SwapToken from, String val) {
    if (inputController.text.isNotEmpty) {
      context
          .read<SwapBloc>()
          .add(CheckAllowance(from.address, double.parse(val)));
    }
  }

  void _onApprove(BuildContext context, SwapToken from) =>
      context.read<SwapBloc>().add(Approve(from.address));

  void _onSwap(
          BuildContext context, SwapToken from, SwapToken to, String val) =>
      context
          .read<SwapBloc>()
          .add(Swap(from.address, to.address, double.parse(val)));

  void _swapBlocListener(BuildContext context, SwapState state) => state
      .whenOrNull(swapped: () => context.read<SwapBloc>().add(const Reset()));

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      // https://colorhunt.co/palette/11052c3d087bf43b86ffe459
      data: context.theme.copyWith(
        colorScheme: RetroThemes.colorScheme,
        scaffoldBackgroundColor: RetroThemes.scaffoldBackgroundColor,
        textTheme: context.textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      builder: (context) {
        final onSurface = context.colorScheme.onSurface;

        return SnapSwapWrapper(
          children: [
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(36),
                  decoration: BoxDecoration(
                    borderRadius: Radii.m,
                    color: context.colorScheme.surface,
                  ),
                  width: 800,
                  child: BlocBuilder<SwapTokensCubit, SwapTokensState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        (_, from, to) => const SizedBox.shrink(),
                        data: (tokens, from, to) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              //* Form

                              //* From
                              Row(
                                children: [
                                  SelectableText(
                                    'from',
                                    style: accentTextTheme.headline4!.copyWith(
                                      color: onSurface,
                                      fontSize: 36,
                                    ),
                                  ),
                                  const Spacer(),
                                  FutureBuilder(
                                    builder: (context, snapshot) {
                                      return const Text('Balance: ');
                                    },
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: CustomDropdownSearch(
                                      item: from,
                                      tokens: tokens,
                                      onChanged: (SwapToken? token) {
                                        if (token == null) return;
                                        context
                                            .read<SwapTokensCubit>()
                                            .changeInputToken(token);
                                      },
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: TextField(
                                      controller: inputController,
                                      textDirection: TextDirection.rtl,
                                      cursorColor: onSurface,
                                      cursorWidth: 1,
                                      style: context.textTheme.subtitle1,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp(r'(^\-?\d*\.?\d*)'))
                                      ],
                                      onChanged: (val) =>
                                          _checkAllowance(context, from!, val),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              SelectableText(
                                from?.name ?? '',
                                style: context.textTheme.caption,
                              ),

                              //* Divider
                              const SizedBox(height: 24),
                              Row(
                                children: [
                                  Expanded(child: Divider(color: onSurface)),
                                  const SizedBox(width: 12),
                                  SvgPicture.asset(
                                    'images/circle_down.svg',
                                    height: 32,
                                    color: onSurface,
                                  ),
                                  const SizedBox(width: 12),
                                  Expanded(child: Divider(color: onSurface)),
                                ],
                              ),
                              const SizedBox(height: 12),

                              //* To
                              Row(
                                children: [
                                  SelectableText(
                                    'to',
                                    style: accentTextTheme.headline4!.copyWith(
                                      color: onSurface,
                                      fontSize: 36,
                                    ),
                                  ),
                                  const Spacer(),
                                  FutureBuilder(builder: (context, snapshot) {
                                    return const Text('Balance: ');
                                  }),
                                ],
                              ),
                              const SizedBox(height: 12),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: CustomDropdownSearch(
                                      item: to,
                                      tokens: tokens,
                                      onChanged: (SwapToken? token) {
                                        if (token == null) return;
                                        context
                                            .read<SwapTokensCubit>()
                                            .changeOutputToken(token);
                                      },
                                    ),
                                  ),
                                  const Spacer(),
                                  Expanded(
                                    flex: 2,
                                    child: Container(),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              SelectableText(
                                to?.name ?? '',
                                style: context.textTheme.caption,
                              ),
                              const SizedBox(height: 24),

                              //* Submission buttons
                              if (from != null && to != null)
                                ValueListenableBuilder<TextEditingValue>(
                                  valueListenable: inputController,
                                  builder: (context, value, child) {
                                    if (value.text.isNotEmpty) {
                                      return child!;
                                    } else {
                                      return const SizedBox.shrink();
                                    }
                                  },
                                  child: BlocConsumer<SwapBloc, SwapState>(
                                    listener: _swapBlocListener,
                                    builder: (context, state) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          if (!equalsIgnoreCase(from.address,
                                              '0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE'))
                                            TransparentButton(
                                              onTap: state.whenOrNull(
                                                unapproved: () => () =>
                                                    _onApprove(context, from),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: Radii.m,
                                                  color: context
                                                      .colorScheme.secondary,
                                                ),
                                                height: 60,
                                                alignment: Alignment.center,
                                                child: state.maybeWhen(
                                                  loading: (status) =>
                                                      const CupertinoActivityIndicator(),
                                                  orElse: () => Text(
                                                    'Approve',
                                                    style: context
                                                        .textTheme.button,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          TransparentButton(
                                            onTap: () => _onSwap(
                                              context,
                                              from,
                                              to,
                                              inputController.text,
                                            ),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: Radii.m,
                                                color: context
                                                    .colorScheme.secondary,
                                              ),
                                              height: 60,
                                              alignment: Alignment.center,
                                              child: state.maybeWhen(
                                                loading: (status) =>
                                                    const CupertinoActivityIndicator(),
                                                orElse: () => Text(
                                                  'Swap',
                                                  style:
                                                      context.textTheme.button,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                            ],
                          );
                        },
                        orElse: () {
                          return const CupertinoActivityIndicator();
                        },
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}

class CustomDropdownSearch extends StatelessWidget {
  const CustomDropdownSearch({
    Key? key,
    required this.item,
    this.tokens = const [],
    this.onChanged,
  }) : super(key: key);

  final SwapToken? item;
  final List<SwapToken> tokens;
  final ValueChanged<SwapToken?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownSearch(
      selectedItem: item,
      mode: Mode.MENU,
      items: tokens,
      showSearchBox: true,
      filterFn: (SwapToken? token, String? str) {
        if (str == null || token == null) {
          return false;
        }
        str = str.toLowerCase();
        return token.name.toLowerCase().contains(str) ||
            token.symbol.toLowerCase().contains(str) ||
            token.address.toLowerCase().contains(str);
      },
      dropdownSearchDecoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: Radii.m,
        ),
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
      popupItemBuilder: (context, SwapToken token, show) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CircleAvatar(
                foregroundImage: CachedNetworkImageProvider(token.logoURI),
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
        return SvgPicture.asset(
          'images/chevron_down.svg',
          color: context.colorScheme.onSurface,
        );
      },
      dropdownBuilder: (context, SwapToken? token) {
        if (token == null) {
          return const SizedBox.shrink();
        }
        return Row(
          children: [
            CircleAvatar(
              foregroundImage: CachedNetworkImageProvider(token.logoURI),
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

class SnapSwapWrapper extends StatelessWidget {
  SnapSwapWrapper({Key? key, required this.children}) : super(key: key);

  final ScrollController controller = ScrollController();

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: SwapTokensCubit()),
        BlocProvider.value(value: SwapBloc()),
      ],
      child: Scaffold(
        body: CustomImprovedScrolling(
          controller: controller,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            controller: controller,
            children: [
              Header(
                onLogoTap: () => context.router.pushNamed('/'),
                leading: ShaderText(
                  gradient: LinearGradient(
                    colors: [
                      context.colorScheme.primaryVariant,
                      context.colorScheme.secondary,
                      context.colorScheme.secondaryVariant,
                    ],
                  ),
                  child: Text(
                    'Snap Swap',
                    style: accentTextTheme.headline4!
                        .copyWith(color: Colors.white),
                  ),
                ),
                actions: const [
                  UpgradeButton(),
                  SizedBox(width: 8),
                  ConnectButton(),
                ],
              ),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}
