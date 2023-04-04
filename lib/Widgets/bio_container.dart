import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    this.trialingIcon,
    this.margin=0,
    this.onpressed,
    super.key,
  });

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final IconData? trialingIcon;
  final double margin;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left:30 , right: 30 ,bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child:  ListTile(
        leading: Icon(leadingIcon) ,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(onPressed: onpressed
        ,icon: Icon(trialingIcon),
        ),
      ),
    );
  }
}