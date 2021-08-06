# Flutter-dart több platformú app fejlesztés alapok

Teljes anyag: https://github.com/londonappbrewery/Flutter-Course-Resources

----
## Tartalom:
- [i am rich app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_rich) az itt találató leírás alapján: https://www.appbrewery.co/courses/851555/lectures/15448514
- [i am poor app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_poor) az ellentéte az [i am rich app](https://github.com/gabboraron/Flutter_appfejlesztes/tree/master/i_am_rich)-nak, azaz amit tudtam megváltoztattam
- [Sorok és oszlopok a `SafeArea`-n belül](https://github.com/gabboraron/Flutter_appfejlesztes/wiki/Sorok-&-Oszlopok)
----
> doksi: https://flutter.dev/docs/

### `.yaml` fájl beállítása
> kommentelés `#` sorkezdéssel
> 
> **számít a whitespace!** Egy bekezdés két space hosszú!
>
> Módosítás után `Pub get` kell!
>
> adhatunk fájlokat `- images/diamond.png` vagy mappákat `- images/`  mint hozzárendelt anyag

```yaml
flutter:
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - images/diamond.png
```




### Desktop támogatás
> - [Add desktop support to an existing Flutter app](https://flutter.dev/desktop#add-desktop-support-to-an-existing-flutter-app)
> - [Build and release a Linux app to the Snap Store](https://flutter.dev/docs/deployment/linux)
> 
> A projekt generálásakor bállíŧhatjuk, hogy adott desktopra is generáljon desktop appot vagy chrome appot is akár.

### Hello world
```Dart
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Center(
        child: Text('Hi World'),
      ),
    ),
  );
}
```

### Ikonok beállítása:
1. megadott képből ikonszettet generálunk itt: https://appicon.co/
2. android
   > `android`>`app`>`src`>`main`>`res` itt a `mipmap` kezdetű mappák lecserélése arra amit generáltunk
3. iOS
   > `ios`>`Runner`>`Assets.xcassets`
4. web
   > `web`>`favicon.png`
5. linux
   > jelenleg nem ismert, esetleg itt lesz ebből valami: https://github.com/flutter/flutter/issues/53229

- ikonok innen ingyen: https://icons8.com
- app képernyőikon méretező: https://appicon.co/

> Ha Az ikon alakján akarunk változtatni (kör, négyzet vagy valamilyen háttérforma) akkor *`jobb klikk res mappán`>`new`>`Image Asset` beadva a kép helyét a `path`ba* kiválogathatjuk vagy állíŧhatjuk  ahogy szeretnénk, aztán `Next`>`Finish`
-------

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

### `Card` VS `Container`
Container példa
```Java
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Column(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/ADGmqu-5GqtuL3_piw_wxvSJ_z241CUdyGsHHDJ053AV=s32-c-mo'),
                  backgroundColor: Colors.orange,
                ),
                Text(
                  'Sándor Burian',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5,
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+123456789',
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25
                  ),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'my@mail.address',
                        style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'Source Sans Pro',
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
```

Kártyás példa:
```Java
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://lh3.googleusercontent.com/ogw/ADGmqu-5GqtuL3_piw_wxvSJ_z241CUdyGsHHDJ053AV=s32-c-mo'),
                  backgroundColor: Colors.orange,
                ),
                Text(
                  'Sándor Burian',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico',
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.teal.shade100,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+123456789',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 25
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'my@mail.address',
                      style: TextStyle(
                        color: Colors.teal,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
```
