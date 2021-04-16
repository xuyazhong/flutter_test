import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Effect<SecondPageState> buildEffect() {
  return combineEffects(<Object, Effect<SecondPageState>>{
    SecondPageAction.action: _onAction,
  });
}

void _onAction(Action action, Context<SecondPageState> ctx) {
}
