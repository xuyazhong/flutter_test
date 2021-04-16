import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<SecondPageState> buildReducer() {
  return asReducer(
    <Object, Reducer<SecondPageState>>{
      SecondPageAction.action: _onAction,
    },
  );
}

SecondPageState _onAction(SecondPageState state, Action action) {
  final SecondPageState newState = state.clone();
  return newState;
}
