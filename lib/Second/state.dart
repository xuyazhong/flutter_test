import 'package:fish_redux/fish_redux.dart';

class SecondPageState implements Cloneable<SecondPageState> {

  @override
  SecondPageState clone() {
    return SecondPageState();
  }
}

SecondPageState initState(Map<String, dynamic> args) {
  return SecondPageState();
}
