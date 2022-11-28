import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:learn_cooking/models/meal.dart';

class SliderItem extends StatelessWidget {
  final String title;
  final String image;
  final Complexity complexity;
  final int prepareTime;
  final int processingTime;

  const SliderItem({
    Key? key,
    required this.title,
    required this.image,
    required this.complexity,
    required this.prepareTime,
    required this.processingTime,
  }) : super(key: key);

  String get _complexityText {
    switch (complexity) {
      case Complexity.simple:
        return "Đơn giản";
      case Complexity.medium:
        return "Trung bình";
      case Complexity.hard:
        return "Khó";
      default:
        return "Không xác định";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      height: 200,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.25),
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 80,
            child: Container(
              height: 90,
              width: 200,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(1, 1),
                    spreadRadius: 1,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          _complexityText,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.history,
                            color: Colors.grey,
                          ),
                          Text(
                            '$prepareTime phút',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                            color: Colors.grey,
                          ),
                          Text(
                            '$processingTime phút',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
