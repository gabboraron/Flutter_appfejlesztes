# Flutter-dart több platformú app fejlesztés alapok

----
## Tartalom:
- [i am rich app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_rich) az itt találató leírás alapján: https://www.appbrewery.co/courses/851555/lectures/15448514
- [i am poor app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_poor) az ellentéte az [i am rich app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_rich)-nak, azaz amit tudtam megváltoztattam
- [Sorok és oszlopok a `SafeArea`-n belül](https://github.com/gabboraron/Flutter_appfejlesztes/wiki/Sorok-&-Oszlopok)
----
> doksi: https://flutter.dev/docs/

### Ikonok beállítása:
#### android
> `android`>`app`>`src`>`main`>`res`
#### iOS
> `ios`>`Runner`>`Assets.xcassets`
- ikonok innen ingyen: https://icons8.com
- app képernyőikon méretező: https://appicon.co/

### Sorok/oszlopok/konténerek elrendezése:
A következő példa kódja ([`SafeArea`](https://api.flutter.dev/flutter/widgets/SafeArea-class.html)n belül):
![feladat](https://drive.google.com/uc?export=download&id=1k7oW5qVLJqzw_lEFsOFS_qKmkGjBX1pL)
```Flutter
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          body:
            Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.yellow,
                        width: 100,
                        height: 100,
                      ),
                      Container(
                        color: Colors.yellowAccent,
                        width: 100,
                        height: 100,
                      )
                    ],
                  )
                ),
                Container(
                  color: Colors.blue,
                  width: 100,
                ),
              ],
            ),
        ),
      ),
    );
  }
}
```
