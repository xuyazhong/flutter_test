import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FirstPageAction { action }

class FirstPageActionCreator {
  static Action onAction() {
    return const Action(FirstPageAction.action);
  }
}
