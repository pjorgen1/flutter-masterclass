import 'package:flutter/material.dart';
import 'package:fmc_part_3/models/character.dart';
import 'package:fmc_part_3/theme.dart';

class FaveButton extends StatefulWidget {
  const FaveButton({super.key, required this.character});

  final Character character;

  @override
  State<FaveButton> createState() => _FaveButtonState();
}

class _FaveButtonState extends State<FaveButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _sizeAnimation;

  @override
  void initState() {
    
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this
    );

    _sizeAnimation = TweenSequence([
      TweenSequenceItem<double>(
        tween: Tween(begin: 25, end: 30),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: 30, end: 25),
        weight: 50,
      ),
    ]).animate(_controller);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return IconButton(
          icon: Icon(Icons.favorite,
            color: widget.character.isFav ? AppColors.primaryColor : Colors.grey[800],
            size: _sizeAnimation.value,
          ),
          onPressed: () {
            _controller.reset();
            _controller.forward();
            
            widget.character.toggleIsFav();
          },
        );
      }
    );
  }
}