# AvatarCircle

[![pub package](https://img.shields.io/pub/v/video_player.svg)](https://pub.dev/packages/video_player)

Avatar circle para mostrar un texto o una imagen.

|             | Android|
|-------------|--------|
| **Support** | SDK 16+|

![The example app running in iOS](https://github.com/flutter/plugins/blob/main/packages/video_player/video_player/doc/demo_ipod.gif?raw=true)


## Example

```dart
import 'package:avatar_circle_bapp/avatar_circle_bapp.dart';

AvatarSmartWidget(text: 'JS', radius: 60),

AvatarSmartWidget(image:'https://cdn.pixabay.com/photo/2016/03/31/20/27/avatar-1295773_960_720.png',
radius: 60)
```

## Usage
Hay dos formas de usar:
* Declarando un texto y el tamaño del radio
* Declarando la url de la imagen y el tamaño del radio
