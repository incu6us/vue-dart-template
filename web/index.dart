import 'package:vue/vue.dart';

import 'package:thrift2graphql_ui/my_component.dart';

@VueApp(el: '#app', components: [MyComponent])
class App extends VueAppBase {
}

App app;

void main() {
  app = App();
  app.create();
}
