import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutterbook/flutterbook.dart';
import 'package:myethworld/app/app_bloc_observer.dart';
import 'package:myethworld/app/themes.dart';

import 'components/components.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const Storyboard()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class Storyboard extends StatelessWidget {
  const Storyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterBook(
      theme: theme,
      categories: [
        Category(
          categoryName: 'Components',
          organizers: [
            Component(
              componentName: 'Header',
              states: [
                ComponentState.child(stateName: 'Default', child: const Header()),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
