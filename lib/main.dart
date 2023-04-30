import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'PREM Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
 List <String> messages = [] ;
 
 final TextEditingController _textEditingController = TextEditingController();
 List<String> reply_text = ["Hello","fine",'what about you',"good Morning",];

  void storeMess(data){
    _textEditingController.clear();
      setState(() {
        messages.add(data);
      });
    print(messages);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('@prem'),
      ),
      body:Column(
            children: [
              Expanded(child: MessageList(messages: messages),),
              const Divider(height: 1.0),
              Container(
                decoration: BoxDecoration(color: Theme.of(context).cardColor),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: TextField(
                          controller: _textEditingController,
                          onSubmitted: storeMess,
                          decoration: const InputDecoration(
                            hintText: 'Type a message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        final String message = _textEditingController.text.trim();
                        if (message.isNotEmpty){
                          storeMess(message);

                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
    );
  }
}

class MessageList  extends StatelessWidget {
  final List<String> messages;

  const MessageList({required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (BuildContext context, int index) {
          final message = messages[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             Expanded(
              child: Container(
                // padding: const EdgeInsets.all(2.0),
                padding: const EdgeInsets.all(12.0),
                // margin: const EdgeInsets.only(left: 699),//{ left : 0.0,  top: 0.0,  right: 0.0,  bottom: 0.0}),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Prem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Text('P'),
                ),
              ),
           ],
          );
        },
      );
  }
}

class AutoReply  extends StatelessWidget {
  final List<String> reply_text;

  const AutoReply({required this.reply_text});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: reply_text.length,
        itemBuilder: (BuildContext context, int index) {
          final message = reply_text[index];
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
             Expanded(
              child: Container(
                // padding: const EdgeInsets.all(2.0),
                padding: const EdgeInsets.all(12.0),
                // margin: const EdgeInsets.only(left: 699),//{ left : 0.0,  top: 0.0,  right: 0.0,  bottom: 0.0}),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Prem',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    Text(
                      message,
                      style: const TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Text('P'),
                ),
              ),
           ],
          );
        },
      );
  }
}
