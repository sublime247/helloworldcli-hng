import 'package:helloworldcli/helloworldcli.dart';

void main(List<String> arguments) {
  print('Hello World!');
  Future.delayed(Duration(seconds: 1), () {
    print('Data from the Api');
  });

  Future.delayed(Duration(seconds: 2), () {
    fromApi().then((value) => value.forEach((element) {
          print(element.title);
          print(element.id);
        }));
  });
}
