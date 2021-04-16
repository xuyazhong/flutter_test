import 'package:fish_redux/fish_redux.dart';

class FirstPageState implements Cloneable<FirstPageState> {

  @override
  FirstPageState clone() {
    return FirstPageState();
  }
}

FirstPageState initState(Map<String, dynamic> args) {
  return FirstPageState();
}
