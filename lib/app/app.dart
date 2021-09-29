import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/app/router.gr.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/app/premium/premium_bloc.dart';

import 'app/app_bloc.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:myethworld/counter/counter.dart';
// import 'package:myethworld/l10n/l10n.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppBloc()),
        BlocProvider(create: (context) => PremiumBloc()),
        BlocProvider(
          create: (context) =>
              WalletBloc()..add(const WalletEvent.checkSupported()),
        ),
      ],
      child: MaterialApp.router(
        theme: theme,
        // localizationsDelegates: [
        //   AppLocalizations.delegate,
        //   GlobalMaterialLocalizations.delegate,
        // ],
        // supportedLocales: AppLocalizations.supportedLocales,
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return BlocListener<WalletBloc, WalletState>(
            listener: (context, state) {
              if (state is Connected) {
                context.read<PremiumBloc>().add(CheckAccount(state));
              }
            },
            child: BlocListener<PremiumBloc, PremiumState>(
              listener: (context, state) {},
              child: child,
            ),
          );
        },
      ),
    );
  }
}
