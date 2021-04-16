import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class HomePagePage extends Page<HomePageState, Map<String, dynamic>> {
  static const String routePath = '/home_page/:param';
  static const String rootPath = '/home_page';
  HomePagePage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<HomePageState>(
                adapter: null,
                slots: <String, Dependent<HomePageState>>{
                }),
            middleware: <Middleware<HomePageState>>[
            ],);

}
