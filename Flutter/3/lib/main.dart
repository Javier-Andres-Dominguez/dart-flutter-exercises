import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Overflow testing',
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Superior Bar'),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/unknown.png', cacheHeight: 90, cacheWidth: 90),
            SizedBox(height: 20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur aliquet varius leo quis mollis. Mauris nec ante rhoncus erat commodo pharetra. Integer molestie turpis ut sem sagittis, a varius sem tempus. Aenean pulvinar bibendum turpis a vehicula. Morbi vestibulum maximus nisl, vel tincidunt purus consectetur quis. Quisque nec vulputate risus, vel semper erat. Curabitur venenatis neque a lorem iaculis, feugiat tristique purus pulvinar. Sed id venenatis massa, at consectetur turpis. Phasellus quis massa lorem. Aliquam ultricies nulla mi, in molestie velit ornare nec. Curabitur nec elit vitae risus tempor finibus pellentesque vel nibh. Mauris imperdiet mi pretium arcu rutrum sodales. In nec urna tellus. Maecenas eu nisl fringilla, auctor sem non, posuere nibh.Integer tellus velit, volutpat nec vestibulum ac, convallis rhoncus erat. Sed vulputate faucibus mauris nec vehicula. Phasellus porta semper nunc at efficitur. Nam in tellus nec mi porttitor sollicitudin. Etiam sit amet posuere arcu. Vivamus tempus ipsum non dolor molestie laoreet. Quisque leo justo, cursus ac mi nec, ultricies facilisis nunc. Fusce ut vulputate velit, eu egestas purus. Aliquam aliquet laoreet mi id suscipit. Phasellus sit amet tincidunt neque. Mauris pellentesque lorem nec lectus consequat pellentesque.Sed vitae mauris nec arcu accumsan gravida sit amet eu quam. Sed congue velit eros, et tempus dui posuere in. Sed eget leo eget ex vulputate vehicula. In placerat sem ut aliquam mattis. Fusce vulputate, lorem a convallis tincidunt, augue ipsum accumsan diam, quis lacinia augue massa ut purus. Curabitur ullamcorper nibh in nibh consectetur consectetur. Phasellus rhoncus viverra augue viverra molestie. Ut in ligula id leo tincidunt bibendum vel eget dui. Etiam finibus rhoncus purus vel lobortis. Nunc quam tortor, viverra ut luctus sed, cursus vitae nunc. Aliquam a risus sed nisl rhoncus fermentum in quis metus. Nulla finibus est ac placerat fringilla. Suspendisse in viverra orci.Vestibulum id orci ut lacus imperdiet eleifend at eu leo. In lectus sapien, blandit nec arcu ut, egestas convallis quam. Suspendisse maximus felis id luctus facilisis. Curabitur nec efficitur dui. Pellentesque blandit at nisi eget rutrum. Nullam vitae justo dapibus, egestas elit nec, molestie nisl. Proin ac tristique augue, vitae placerat dui. Nullam ac luctus eros, at pellentesque elit. Vivamus sed tellus ac orci rutrum porta. Nulla sed dui quis arcu venenatis tincidunt in id dui. Quisque pharetra lectus mattis rutrum feugiat.Phasellus fermentum dui in tellus malesuada, in ultrices nisl accumsan. Nullam tellus metus, elementum at elit maximus, vestibulum consequat ex. Ut congue iaculis arcu quis commodo. Phasellus posuere lorem ut enim congue vulputate. Quisque odio risus, laoreet ac mauris id, scelerisque tempus diam. Vestibulum nibh diam, semper non rhoncus sit amet, laoreet finibus diam. Aliquam lobortis convallis ligula a fringilla. Aenean eleifend magna tellus, tempus condimentum diam congue ut.",
              style: TextStyle(fontFamily: 'BeautifulPeople'),
              maxLines: 5,
              overflow: TextOverflow.clip,
            ),
          ],
        ),
      ),
    ),
  ));
}
