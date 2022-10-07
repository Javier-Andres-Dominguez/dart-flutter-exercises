//Javier Andrés Domínguez
import 'dart:io';

Future<void> writeMessage() async {
  print('Wait...');
  var message = await fetchOrder();
  print('This message was retarded. $message');
}

Future<String> fetchOrder() {
  return Future.delayed(
      const Duration(seconds: 4), () => 'This is the original message.');
}

void main() async {
  time(4);
  await writeMessage();
}

void time(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
