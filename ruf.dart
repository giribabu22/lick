
// import 'package:flutter/material.dart';
void main() {
  List<int> num = [1,3,5,7];
  print(num);
}

// class MyChatPage extends StatefulWidget {
//   const MyChatPage({Key? key}) : super(key: key);

//   @override
//   _MyChatPageState createState() => _MyChatPageState();
// }

// class _MyChatPageState extends State<MyChatPage> {
//   final List<String> _messages = [];

//   final TextEditingController _textEditingController = TextEditingController();

//   void _addMessage(String message) {
//     setState(() {
//       _messages.add(message);
//     });
//   }

//   void _handleSubmitted(String text) {
//     _textEditingController.clear();
//     _addMessage(text);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Chat'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: _messages.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final message = _messages[index];
//                 return ListTile(
//                   title: Text(message),
//                 );
//               },
//             ),
//           ),
//           const Divider(height: 1.0),
//           Container(
//             decoration: BoxDecoration(color: Theme.of(context).cardColor),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: TextField(
//                       controller: _textEditingController,
//                       onSubmitted: _handleSubmitted,
//                       decoration: const InputDecoration(
//                         hintText: 'Type a message',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: const Icon(Icons.send),
//                   onPressed: () {
//                     _handleSubmitted(_textEditingController.text);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
