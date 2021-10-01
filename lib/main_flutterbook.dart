import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutterbook/flutterbook.dart';
import 'package:myethworld/app/app_bloc_observer.dart';
import 'package:myethworld/app/themes.dart';
import 'package:myethworld/components/token_icon.dart';

import 'components/components.dart';
import 'services/tokens/polygon_token.dart';

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
    final defaultContainer = Container(
      height: 50,
      width: 50,
      color: Colors.red,
    );

    return FlutterBook(
      theme: theme,
      categories: [
        Category(
          categoryName: 'Components',
          organizers: [
            Component(
              componentName: 'Header',
              states: [
                ComponentState.child(
                    stateName: 'Default', child: const Header()),
              ],
            ),
            Component(
              componentName: 'Transparent Button',
              states: [
                ComponentState.child(
                  stateName: 'Default',
                  child: TransparentButton(child: defaultContainer),
                ),
              ],
            ),
            Component(
              componentName: 'Logo',
              states: [
                ComponentState.child(
                  stateName: 'Default',
                  child: const Logo(),
                ),
              ],
            ),
            Component(
              componentName: 'Perspective Transform',
              states: [
                ComponentState.child(
                  stateName: 'Default',
                  child: PerspectiveTransform(child: defaultContainer),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
