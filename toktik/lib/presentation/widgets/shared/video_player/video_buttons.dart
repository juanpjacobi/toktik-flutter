import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomItemButton(
            value: video.likes,
            iconData: Icons.favorite,
            iconColor: Colors.red),
        const SizedBox(height: 20),
        _CustomItemButton(
            value: video.likes, iconData: Icons.remove_red_eye_outlined),
        SpinPerfect(
            infinite: true,
            duration: const Duration(seconds: 5),
            child: const _CustomItemButton(
                value: 0, iconData: Icons.play_circle_outlined))
      ],
    );
  }
}

class _CustomItemButton extends StatelessWidget {
  final int value;
  final IconData iconData;
  final Color? color;
  const _CustomItemButton(
      {required this.value, required this.iconData, iconColor})
      : color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            iconData,
            color: color,
            size: 40,
          ),
        ),
        if (value > 0) Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
