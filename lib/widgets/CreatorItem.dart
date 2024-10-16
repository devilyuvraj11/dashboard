import 'package:flutter/material.dart';

class CreatorItem extends StatefulWidget{
  final String name;
  final int rating;
  final ImageProvider image;
  final double max;

  const CreatorItem({Key? key, required this.name, required this.rating, required this.image, required this.max});
  @override
  State<CreatorItem> createState() => CreatorItemState();
}

class CreatorItemState extends State<CreatorItem> {
@override
Widget build(BuildContext context) {

  RangeValues values = RangeValues(0.0, widget.max);
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 15,
        backgroundImage: widget.image,
      ),
        Text(widget.name, style: const TextStyle(color: Colors.white),),
        Text(widget.rating.toString(), style: const TextStyle(color: Colors.white),),
        SizedBox(
          width: 80,
          child: SliderTheme(
            
            data: SliderTheme.of(context).copyWith(
              activeTrackColor: Colors.deepPurple,
              inactiveTrackColor: Colors.blue,
              thumbColor: Colors.transparent,
              thumbShape: SliderComponentShape.noThumb,
                overlayShape: SliderComponentShape.noOverlay,
                trackShape: const RoundedRectSliderTrackShape(),
                trackHeight: 8.0
            ),
            child: RangeSlider(
            
              values: values,
              min: 0.0,
            max: 10.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                values = newValues;
              });
              },
            ),
          ),
        )
      ]
    );

}
}