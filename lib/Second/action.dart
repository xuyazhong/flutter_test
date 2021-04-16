import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum SecondPageAction { action }

class SecondPageActionCreator {
  static Action onAction() {
    return const Action(SecondPageAction.action);
  }
}
