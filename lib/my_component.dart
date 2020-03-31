import 'package:vue/vue.dart';

@VueComponent(template: '<<')
class MyComponent extends VueComponentBase {
  @prop
  String name = "test";
}
