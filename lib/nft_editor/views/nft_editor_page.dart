import 'dart:math';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/components/app/app_components.dart';
import 'package:myethworld/components/components.dart';
import 'package:myethworld/app/themes.dart';
import 'package:auto_route/auto_route.dart';
import 'package:myethworld/components/toasts.dart';
import 'package:myethworld/nft_editor/mint/mint_bloc.dart';
import 'package:myethworld/nft_editor/nfts/nfts_cubit.dart';
import 'package:myethworld/services/nft_port_service/nft_port_service.dart';
import 'package:sa3_liquid/sa3_liquid.dart';
import 'package:url_launcher/url_launcher.dart';

class NftEditorPage extends StatefulWidget {
  const NftEditorPage({Key? key}) : super(key: key);

  @override
  State<NftEditorPage> createState() => _NftEditorPageState();
}

class _NftEditorPageState extends State<NftEditorPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController description = TextEditingController();
  final ScrollController controller = ScrollController();

  late List<Particle> particles;
  late List<TextParticle> texts;
  late Color backgroundColor;
  Random rgn = Random();

  Color getRandomColor() => Color.fromARGB(
        rgn.nextInt(255),
        rgn.nextInt(255),
        rgn.nextInt(255),
        rgn.nextInt(255),
      );

  @override
  void initState() {
    generateArt();
    super.initState();
  }

  void generateArt() {
    particles = List.generate(
      50,
      (_) => Particle(
        Offset(rgn.nextDouble(), rgn.nextDouble()),
        getRandomColor(),
        rgn.nextInt(40) as double,
      ),
    );
    texts = List.generate(
      2,
      (_) => TextParticle(
        Offset(rgn.nextDouble(), rgn.nextDouble()),
        TextStyle(
          fontFamily: accentTextTheme.bodyText1!.fontFamily,
          color: getRandomColor(),
          fontSize: min(36.0, rgn.nextInt(60) as double),
        ),
      ),
    );
    backgroundColor = getRandomColor().withAlpha(255);
  }

  Future<void> mint(BuildContext context, String address) async {
    final image = await rendered;
    final pngBytes =
        await image.toByteData(format: ui.ImageByteFormat.rawUnmodified);
    context.read<MintBloc>().add(MintEvent.mint(
        name.text, description.text, pngBytes!.buffer.asUint8List(), address));
  }

  Future<ui.Image> get rendered async {
    ui.PictureRecorder recorder = ui.PictureRecorder();
    Canvas canvas = Canvas(recorder);
    NFtPainter painter =
        NFtPainter(particles, backgroundColor, texts, name.text);
    painter.paint(canvas, const Size(480, 480));
    return await recorder.endRecording().toImage(480, 480);
  }

  void mintListener(BuildContext context, MintState state) {
    final fToast = FToast();
    fToast.init(context);
    state.whenOrNull(
      success: () {
        context.read<NftsCubit>().refreshNfts();
        fToast.showToast(
          child: const UpgradeStyleToast(
              text: 'NFT has been successfully minted!'),
        );
      },
      error: (e) {
        fToast.showToast(
          child:
              UpgradeStyleToast(text: 'An error occured minting your nft. $e'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final accentTitle = accentTextTheme.headline2!.copyWith(
      color: context.colorScheme.secondary,
      fontSize: 24,
    );
    final primary = context.colorScheme.primary;
    final onPrimary = context.colorScheme.onPrimary;

    return NftEditorWrapper(
      builder: (context) => IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Stack(
                children: [
                  PlasmaRenderer(
                    color: context.colorScheme.primary.withOpacity(0.05),
                    variation1: 0.3,
                    variation2: 0.6,
                    variation3: 0.9,
                    particleType: ParticleType.atlas,
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 480,
                          width: 480,
                          child: ClipRect(
                            child: InteractiveViewer(
                              child: CustomPaint(
                                size: const Size(480, 480),
                                painter: NFtPainter(
                                  particles,
                                  backgroundColor,
                                  texts,
                                  name.text,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'You can click and zoom',
                          style: context.textTheme.caption,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const VerticalDivider(),
            Expanded(
              child: CustomImprovedScrolling(
                controller: controller,
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 108),
                  controller: controller,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 16),
                        Text('1. Write a Name', style: accentTitle),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 200,
                          child: TextField(
                            controller: name,
                            textAlign: TextAlign.center,
                            decoration: const InputDecoration(hintText: 'Name'),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text('2. Write a Description', style: accentTitle),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 400,
                          child: TextField(
                            controller: description,
                            decoration: const InputDecoration(
                              hintText: 'Description',
                              border: OutlineInputBorder(),
                            ),
                            maxLines: 3,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text('3. Press Generate', style: accentTitle),
                        const SizedBox(height: 16),
                        TransparentButton(
                          onTap: () => setState(generateArt),
                          child: Container(
                            decoration: BoxDecoration(
                              color: primary,
                              borderRadius: Radii.m,
                            ),
                            height: 50,
                            width: 200,
                            child: Center(
                              child: Text(
                                'Generate',
                                style: context.textTheme.button!
                                    .copyWith(color: onPrimary),
                              ),
                            ),
                          ),
                        ),
                        ValueListenableBuilder<TextEditingValue>(
                          valueListenable: name,
                          builder: (context, value, child) {
                            return (value.text.isNotEmpty)
                                ? child!
                                : const SizedBox.shrink();
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 16),
                              Text('4. Mint 💎', style: accentTitle),
                              const SizedBox(height: 16),
                              BlocConsumer<MintBloc, MintState>(
                                listener: mintListener,
                                builder: (context, state) {
                                  return TransparentButton(
                                    onTap: state.whenOrNull(
                                      idle: () => () => mint(
                                            context,
                                            (context.read<WalletBloc>().state
                                                    as Connected)
                                                .address,
                                          ),
                                    ),
                                    child: Container(
                                      height: 50,
                                      width: 200,
                                      child: Center(
                                        child: state.maybeWhen(
                                          loading: () =>
                                              const CupertinoActivityIndicator(),
                                          orElse: () {
                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(IconlyBroken.heart,
                                                    color: onPrimary),
                                                const SizedBox(width: 12),
                                                Text(
                                                  'Mint',
                                                  style: context
                                                      .textTheme.button!
                                                      .copyWith(
                                                          color: onPrimary),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: UpgradeThemes.colorScheme.primary
                                            .withOpacity(
                                          state.maybeWhen(
                                            loading: () => 0.5,
                                            orElse: () => 1,
                                          ),
                                        ),
                                        borderRadius: Radii.m,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text('History', style: accentTitle),
                        const SizedBox(height: 16),
                        BlocBuilder<NftsCubit, NftsState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              nfts: (nfts) {
                                if (nfts.isEmpty) {
                                  return const Text('You have no NFTs');
                                }
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: nfts
                                      .map(
                                        (e) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8.0),
                                          child: UnderlinedButton(
                                            child: Text('OpenSea #$e'),
                                            onTap: () => launch(
                                                'https://opensea.io/assets/matic/${NftPortService.deployedCollection}/$e'),
                                          ),
                                        ),
                                      )
                                      .toList(),
                                );
                              },
                              orElse: () {
                                return const CupertinoActivityIndicator();
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NftEditorWrapper extends StatefulWidget {
  const NftEditorWrapper({Key? key, required this.builder}) : super(key: key);

  final Widget Function(BuildContext) builder;

  @override
  State<NftEditorWrapper> createState() => _NftEditorWrapperState();
}

class _NftEditorWrapperState extends State<NftEditorWrapper> {
  final NftsCubit nfts = NftsCubit();

  @override
  void initState() {
    nfts.refreshNfts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                'NFT Editor',
                style: accentTextTheme.headline4!.copyWith(color: Colors.white),
              ),
            ),
            actions: const [
              UpgradeButton(),
              SizedBox(width: 8),
              ConnectButton(),
            ],
          ),
          Expanded(
            child: WalletGuard(
              builder: (BuildContext context, Connected state) {
                return SubscriptionGuard(
                  builder: (_, __) {
                    return MoralisGuard(
                      builder: (context, state) {
                        return MultiBlocProvider(
                          providers: [
                            BlocProvider.value(value: MintBloc()),
                            BlocProvider.value(value: nfts),
                          ],
                          child: widget.builder(context),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NFtPainter extends CustomPainter {
  final List<Particle> particles;
  final List<TextParticle> texts;
  final Color backgroundColor;
  final String name;

  NFtPainter(this.particles, this.backgroundColor, this.texts, this.name);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height),
        Paint()..color = backgroundColor);
    for (Particle p in particles) {
      double dx = p.position.dx * size.width, dy = p.position.dy * size.height;

      final paint = Paint()..color = p.color;
      canvas.drawCircle(Offset(dx, dy), p.radius, paint);
    }
    for (TextParticle t in texts) {
      final textSpan = TextSpan(text: name, style: t.style);
      final textPainter =
          TextPainter(text: textSpan, textDirection: TextDirection.ltr);
      textPainter.layout(minWidth: 0, maxWidth: size.width);
      textPainter.paint(canvas, t.position.scale(size.width, size.height));
    }
  }

  @override
  bool shouldRepaint(NFtPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(NFtPainter oldDelegate) => false;
}

class Particle {
  Offset position;
  Color color;
  double radius;

  Particle(this.position, this.color, this.radius);
}

class TextParticle {
  TextStyle style;
  Offset position;
  TextParticle(this.position, this.style);
}
