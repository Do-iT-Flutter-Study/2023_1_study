import 'package:doit_fluttter_study/domains/doit/domain/model/entities/entities.dart';
import 'package:flutter/material.dart';

class HomePageListViewWithTheTitle extends StatelessWidget {
  final String title;
  final Axis scrollDirection;
  final Iterable<Celebrity> dataIterable;

  const HomePageListViewWithTheTitle({
    super.key,
    required this.title,
    required this.scrollDirection,
    required this.dataIterable,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 32),
        ),
        Expanded(
            child: ListView(
                shrinkWrap: true,
                scrollDirection: scrollDirection,
                children: List.generate(dataIterable.length,
                    (index) => Image.network(dataIterable.elementAt(index).imgUrl))))
      ],
    ));
  }
}
