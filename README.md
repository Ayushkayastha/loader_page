# loader_page

A customizable animated loader widget for Flutter apps.

## Demo

**Demo 1**

![Demo 1](assets/demo1.gif)

**Demo 2**

![Demo 2](assets/demo2.gif)

## Features

- Animated loading boxes
- Custom message text
- Customizable color
- Replaceable child widget

## Usage

```dart
import 'package:loader_page/loader_page.dart';

LoaderPage(
  message: 'Loading ...',
  color: Colors.black,
  child: Image.asset('assets/frog.png'),
);
