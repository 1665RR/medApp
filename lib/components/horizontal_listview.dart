import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
            image_caption: 'Allergies',
          ),
          Category(
            image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
            image_caption: 'Allergies',
          ),
          Category(
            image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
            image_caption: 'Allergies',
          ),
          Category(
            image_location: 'https://thumbs.dreamstime.com/b/allergy-icon-beautiful-meticulously-designed-perfect-use-designing-developing-websites-printed-materials-presentations-111629680.jpg',
            image_caption: 'Allergies',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption,
  });
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 90.0,
            child: ListTile(
              subtitle: Text(image_caption),
            ),
          ),
        ),
      );
    }
  }

