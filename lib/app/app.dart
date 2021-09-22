import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myethworld/app/router.gr.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/app/wallet/wallet_bloc.dart';
import 'package:myethworld/app/upgrade/upgrade_bloc.dart';

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
        BlocProvider(
          create: (context) => UpgradeBloc(),
        ),
        BlocProvider(
          create: (context) => WalletBloc()..add(const WalletEvent.connect()),
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
        builder: (context, child) {
          return BlocListener<WalletBloc, WalletState>(
            listener: (context, state) {
              if (state is Connected) {
                context.read<UpgradeBloc>().add(
                      UpgradeEvent.checkAccount(
                        state.address,
                        state.chainId == 4 ? true : false,
                      ),
                    );
              }
            },
            child: BlocListener<UpgradeBloc, UpgradeState>(
              listener: (context, state) {},
              child: child,
            ),
          );
        },
      ),
    );
  }
}
