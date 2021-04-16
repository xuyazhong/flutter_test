import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class SecondPagePage extends Page<SecondPageState, Map<String, dynamic>> {
  static const String routePath = '/second_page/:param';
  static const String rootPath = '/second_page';
  SecondPagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<SecondPageState>(
                adapter: null,
                slots: <String, Dependent<SecondPageState>>{
                }),
            middleware: <Middleware<SecondPageState>>[
            ],);

}
