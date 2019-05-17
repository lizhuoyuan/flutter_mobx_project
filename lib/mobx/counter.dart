/*
 * author: Created by 李卓原 on 2019/5/16.
 * email: zhuoyuan93@gmail.com
 *
 */

import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase implements Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }

  @action
  void decrement() {
    value--;
  }

  @action
  void set(int value) {
    this.value = value;
  }
}
