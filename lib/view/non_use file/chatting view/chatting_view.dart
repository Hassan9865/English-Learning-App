import 'package:eng_learning_app/components/chatBubble.dart';
import 'package:eng_learning_app/view/non_use%20file/chatting%20view/chatting_viewModel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ChattingView extends StatelessWidget {
  const ChattingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ChattingViewmodel(),
      builder: (context, ChattingViewmodel viewModel, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            flexibleSpace: SafeArea(
              child: Container(
                padding: const EdgeInsets.only(right: 16),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pic2.jpg"),
                      maxRadius: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            " ",
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Online",
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.03,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.settings,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 1.25,
                    width: MediaQuery.of(context).size.width,
                    child:
                        // child: StreamBuilder(
                        //   // Use an actual stream here
                        //   builder: (context, snapshot) {
                        //     if (snapshot.hasData) {
                        //       return
                        ListView.builder(
                      // itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        // Example for Firebase data extraction
                        // DocumentSnapshot document = snapshot.data!.docs[index];
                        // Map<String, dynamic> usermessage = document.data() as Map<String, dynamic>;

                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              // Replace usermessage['message'] with actual data
                              ChatBubble(message: "Example message"),
                              const SizedBox(height: 5),
                            ],
                          ),
                        );
                      },
                    ),
                    //     } else {
                    //       return const Center(
                    //         child: Text("No message"),
                    //       );
                    //     }
                    //   },
                    // ),
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding:
                          const EdgeInsets.only(left: 10, bottom: 10, top: 10),
                      height: MediaQuery.of(context).size.height * 0.09,
                      width: double.infinity,
                      color: Colors.grey[200],
                      child: Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.1,
                              width: MediaQuery.of(context).size.width * 0.1,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: MediaQuery.of(context).size.width * 0.08,
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04),
                          Expanded(
                            child: TextField(
                              // controller: viewModel.sendMessageController,
                              decoration: const InputDecoration(
                                hintText: "Write message...",
                                hintStyle: TextStyle(color: Colors.black54),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width * 0.04),
                          FloatingActionButton(
                            onPressed: () {
                              // viewModel.onSendMessage();
                            },
                            backgroundColor: Colors.blue,
                            elevation: 0,
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: MediaQuery.of(context).size.width * 0.06,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
