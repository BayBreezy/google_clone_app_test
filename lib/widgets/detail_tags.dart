import 'package:flutter/material.dart';

class DetailTags extends StatelessWidget {
  const DetailTags({
    Key? key,
    required this.tags,
  }) : super(key: key);

  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemBuilder: (ctx, i) {
          var tag = tags[i];
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Chip(
              shape: StadiumBorder(
                  side: BorderSide(color: Colors.grey.withAlpha(44))),
              label: Text(
                tag,
                style: TextStyle(fontSize: 12),
              ),
              padding: EdgeInsets.all(8),
              backgroundColor: Colors.white,
            ),
          );
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
      ),
    );
  }
}
