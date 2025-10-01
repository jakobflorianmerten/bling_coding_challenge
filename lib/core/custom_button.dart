import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final bool? primary;
  final Widget child;
  final Function onPressed;

  const CustomButton({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.primary,
    required this.onPressed,
    required this.child,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 0.95).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        _controller.forward();
      },
      onTapUp: (_) async {
        await _controller.reverse();
        if (mounted) {
          widget.onPressed();
        }
      },
      onTapCancel: () {
        _controller.reverse();
      },
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: widget.primary == true
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Center(child: widget.child),
        ),
      ),
    );
  }
}
