import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  IconData icon;
  String title;
  String subTitle;
  CustomListTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 10, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.blue.shade700)),
              child: Icon(
                icon,
                color: Colors.blue[600],
                size: 30,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                subTitle,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class CustomExpansionTile extends StatefulWidget {
//   Widget? trailing;
//   String? title;
//   String? expTitle;
//   void Function(bool)? changeExpansion;
//   bool value = false;
//   Icon expanded = Icon(Icons.add);

//   CustomExpansionTile(
//       {Key? key,
//       this.title,
//       this.expTitle,
//       this.trailing,
//       this.changeExpansion})
//       : super(key: key);

//   @override
//   State<CustomExpansionTile> createState() => _CustomExpansionTileState();
// }

// class _CustomExpansionTileState extends State<CustomExpansionTile> {
//   Widget? trailing;
//   late final String title;
//   String? expTitle;
//   void Function(bool)? changeExpansion;
//   bool value = false;
//   Icon expanded = Icon(Icons.add);
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ExpansionTile(
//           childrenPadding: EdgeInsets.only(bottom: 6),
//           expandedCrossAxisAlignment: CrossAxisAlignment.start,
//           expandedAlignment: Alignment.centerLeft,
//           collapsedTextColor: Colors.black,
//           textColor: Colors.black,
//           onExpansionChanged: changeExpansion,
//           title: Text(title),
//           trailing: trailing,
//           children: [
//             ListTile(
//               onTap: () {
//                 if (value == true) {
//                   expanded = Icon(
//                     Icons.minimize_outlined,
//                     color: Colors.grey,
//                   );
//                 } else {
//                   expanded = Icon(Icons.add);
//                 }
//               },
//               title: Text(widget.expTitle!),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }
