import 'dart:async';

import 'package:flutter/material.dart';

class LoaderPage extends StatefulWidget {
  final String message;
  final Color color;
  final Widget? child;

  const LoaderPage({
    Key? key,
    this.message = '',
    this.color = const Color(0xFFFB8C00),
    this.child,
  }) : super(key: key);

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> with TickerProviderStateMixin {
  late AnimationController b1controller;
  late AnimationController b2controller;
  late AnimationController b3controller;
  late AnimationController b4controller;
  late AnimationController b5controller;
  late Animation<Offset> b1animation;
  late Animation<Offset> b2animation;
  late Animation<Offset> b3animation;
  late Animation<Offset> b4animation;
  late Animation<Offset> b5animation;

  AnimationController _createController() {
    return AnimationController(
      duration: Duration(milliseconds: 400),
      vsync: this,
    );
  }

  Animation<Offset> _createAnimation({
    required Offset begin,
    required Offset end,
    required AnimationController controller,
  }) {
    return Tween<Offset>(
      begin: begin,
      end: end,
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    ));
  }

  Future<void> _runb2Animations() async {
    b2animation = _createAnimation(
      begin: Offset(37, 56),
      end: Offset(37, 26),
      controller: b2controller,
    );
    await b2controller.forward().orCancel;
    b2controller.reset();

    b2animation = _createAnimation(
      begin: Offset(37, 26),
      end: Offset(67, 26),
      controller: b2controller,
    );
    await b2controller.forward().orCancel;
    _runb3Animations();
    b2controller.reset();

    b2animation = _createAnimation(
      begin: Offset(67, 26),
      end: Offset(67, 56),
      controller: b2controller,
    );
    await b2controller.forward().orCancel;
  }

  Future<void> _runb3Animations() async {
    b3animation = _createAnimation(
      begin: Offset(67, 56),
      end: Offset(67, 86),
      controller: b3controller,
    );
    await b3controller.forward().orCancel;
    b3controller.reset();

    b3animation = _createAnimation(
      begin: Offset(67, 86),
      end: Offset(97, 86),
      controller: b3controller,
    );
    await b3controller.forward().orCancel;
    _runb4Animations();
    b3controller.reset();

    b3animation = _createAnimation(
      begin: Offset(97, 86),
      end: Offset(97, 56),
      controller: b3controller,
    );
    await b3controller.forward().orCancel;
  }

  Future<void> _runb4Animations() async {
    b4animation = _createAnimation(
      begin: Offset(97, 56),
      end: Offset(97, 26),
      controller: b4controller,
    );
    await b4controller.forward().orCancel;
    b4controller.reset();

    b4animation = _createAnimation(
      begin: Offset(97, 26),
      end: Offset(127, 26),
      controller: b4controller,
    );
    await b4controller.forward().orCancel;
    _runb5Animations();
    b4controller.reset();

    b4animation = _createAnimation(
      begin: Offset(127, 26),
      end: Offset(127, 56),
      controller: b4controller,
    );
    await b4controller.forward().orCancel;
  }

  Future<void> _runb5Animations() async {
    b5animation = _createAnimation(
      begin: Offset(127, 56),
      end: Offset(127, 86),
      controller: b5controller,
    );
    await b5controller.forward().orCancel;
    _runb5AnimationsBack();
  }

  Future<void> _runAnimation() async {
    b1animation = _createAnimation(
      begin: Offset(37, 86),
      end: Offset(37, 56),
      controller: b1controller,
    );
    b1controller.forward().orCancel;
    await _runb2Animations();
  }

  Future<void> _runb5AnimationsBack() async {
    b5controller.reset();
    b5animation = _createAnimation(
      begin: Offset(127, 86),
      end: Offset(97, 86),
      controller: b5controller,
    );
    await b5controller.forward().orCancel;
    b5controller.reset();

    b5animation = _createAnimation(
      begin: Offset(97, 86),
      end: Offset(97, 56),
      controller: b5controller,
    );
    _runb3AnimationsBack();
    await b5controller.forward().orCancel;
  }

  Future<void> _runb3AnimationsBack() async {
    b3controller.reset();
    b3animation = _createAnimation(
      begin: Offset(97, 56),
      end: Offset(97, 26),
      controller: b3controller,
    );
    await b3controller.forward().orCancel;
    b3controller.reset();
    b3animation = _createAnimation(
      begin: Offset(97, 26),
      end: Offset(67, 26),
      controller: b3controller,
    );
    await b3controller.forward().orCancel;
    b3controller.reset();
    b3animation = _createAnimation(
      begin: Offset(67, 26),
      end: Offset(67, 56),
      controller: b3controller,
    );
    _runb2AnimationsBack();
    await b3controller.forward().orCancel;
  }

  Future<void> _runb2AnimationsBack() async {
    b2controller.reset();

    b2animation = _createAnimation(
      begin: Offset(67, 56),
      end: Offset(67, 86),
      controller: b2controller,
    );
    await b2controller.forward().orCancel;
    b2controller.reset();
    b2animation = _createAnimation(
      begin: Offset(67, 86),
      end: Offset(37, 86),
      controller: b2controller,
    );
    await b2controller.forward().orCancel;

    b1controller.reset();
    b2controller.reset();
    b3controller.reset();
    b4controller.reset();
    b5controller.reset();

    b1animation = Tween<Offset>(
      begin: Offset(37, 86),
      end: Offset(37, 86),
    ).animate(b1controller);

    b3animation = Tween<Offset>(
      begin: Offset(37, 56),
      end: Offset(37, 56),
    ).animate(b3controller);

    b3animation = Tween<Offset>(
      begin: Offset(67, 56),
      end: Offset(67, 56),
    ).animate(b3controller);

    b4animation = Tween<Offset>(
      begin: Offset(97, 56),
      end: Offset(97, 56),
    ).animate(b4controller);

    b5animation = Tween<Offset>(
      begin: Offset(127, 56),
      end: Offset(127, 56),
    ).animate(b5controller);

    _runAnimation();
  }

  @override
  void initState() {
    super.initState();
    b1controller = _createController();
    b2controller = _createController();
    b3controller = _createController();
    b4controller = _createController();
    b5controller = _createController();

    b3animation = Tween<Offset>(
      begin: Offset(67, 56),
      end: Offset(67, 56),
    ).animate(b3controller);

    b4animation = Tween<Offset>(
      begin: Offset(97, 56),
      end: Offset(97, 56),
    ).animate(b4controller);

    b5animation = Tween<Offset>(
      begin: Offset(127, 56),
      end: Offset(127, 56),
    ).animate(b5controller);

    _runAnimation();
  }

  @override
  void dispose() {
    super.dispose();
    b1controller.dispose();
    b2controller.dispose();
    b3controller.dispose();
    b4controller.dispose();
    b5controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
              width: 182,
              child: Stack(children: [
                AnimatedBuilder(
                  animation: b1controller,
                  builder: (context, child) {
                    return Positioned(
                      left: b1animation.value.dx,
                      top: b1animation.value.dy,
                      child: child!,
                    );
                  },
                  child:_buildBox(),
                ),
                AnimatedBuilder(
                  animation: b2controller,
                  builder: (context, child) {
                    return Positioned(
                      left: b2animation.value.dx,
                      top: b2animation.value.dy,
                      child: child!,
                    );
                  },
                  child:_buildBox(),
                ),
                AnimatedBuilder(
                  animation: b3controller,
                  builder: (context, child) {
                    return Positioned(
                      left: b3animation.value.dx,
                      top: b3animation.value.dy,
                      child: child!,
                    );
                  },
                  child:_buildBox(),
                ),
                AnimatedBuilder(
                  animation: b4controller,
                  builder: (context, child) {
                    return Positioned(
                      left: b4animation.value.dx,
                      top: b4animation.value.dy,
                      child: child!,
                    );
                  },
                  child:_buildBox(),
                ),
                AnimatedBuilder(
                  animation: b5controller,
                  builder: (context, child) {
                    return Positioned(
                      left: b5animation.value.dx,
                      top: b5animation.value.dy,
                      child: child!,
                    );
                  },
                  child:_buildBox(),
                ),
              ]),
            ),
            Text(
              widget.message,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 22,
                height:  22/28,
                letterSpacing: 0,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBox() {
    if (widget.child != null) {
      return SizedBox(
        height: 24,
        width: 24,
        child: widget.child,
      );
    }

    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: widget.color,
      ),
    );
  }

}

