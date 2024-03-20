import 'package:flutter/material.dart';

enum ProfileSize {
  small,
  medium,
  large,
}

class ProfileWidget extends StatelessWidget {
  final ProfileSize size;
  final ImageProvider<Object>? image;

  const ProfileWidget({
    super.key,
    this.size = ProfileSize.medium,
    this.image,
  });

  double get pixel {
    switch (size) {
      case ProfileSize.small:
        return 30;
      case ProfileSize.medium:
        return 42;
      case ProfileSize.large:
        return 50;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: pixel,
      height: pixel,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.grey,
      ),
      clipBehavior: Clip.antiAlias,
      child: Center(
        child: image != null
            ? Image(
                image: image!,
              )
            : const Icon(
                Icons.person_outline,
                size: 28,
                color: Colors.white,
              ),
      ),
    );
  }
}
