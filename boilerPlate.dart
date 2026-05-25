import 'package:flutter/material.dart';

// STEP 1: Entry point — every Dart program starts here, always the same, never changes
void main() {
  runApp(const MyApp());
}

// STEP 2: Root widget — always StatelessWidget, always returns MaterialApp
// StatelessWidget = no memory, no changing data, just a fixed recipe
class MyApp extends StatelessWidget {

  @override // createState() already exists in parent as blank, we are replacing it with ours
  Widget build(BuildContext context) {
    // Widget = return type, everything in Flutter is a widget
    // BuildContext = this widget's address/position in the widget tree
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the debug ribbon on top right
      home: const FirstScreen(),         // the first screen to show when app launches
    );
  }
}

// STEP 3: The actual screen — StatefulWidget because this screen needs to remember things
// StatefulWidget splits into TWO parts: the widget and the state

// PART 1: The widget shell — lightweight, Flutter can recreate this freely
class FirstScreen extends StatefulWidget {

  @override
  // createState()'s only job: answer Flutter's question —
  // "what State object should I create for this widget?"
  // Return type State<FirstScreen> means: a State tied specifically to FirstScreen, not just any State
  State<FirstScreen> createState() => _FirstScreenState();
  // _FirstScreenState() — the _ means private, only visible inside this file
}

// PART 2: The state object — persistent, Flutter protects this, never discards it freely
// This is where ALL your data and logic live
// extends State<FirstScreen> means: inherit everything State knows
// (setState, lifecycle hooks, the widget property) and tie it to FirstScreen
class _FirstScreenState extends State<FirstScreen> {

  // DECLARE YOUR STATE VARIABLES HERE
  // anything this screen needs to remember goes here, above build()
  // example: bool isPressed = false;

  // LIFECYCLE (how Flutter uses this state object):
  // 1. Flutter calls createState()                        → _FirstScreenState is created
  // 2. Flutter stores and protects _FirstScreenState      → data is safe across rebuilds
  // 3. Flutter calls build()                              → UI appears on screen
  // 4. User does something → setState() is called         → data changes
  // 5. Flutter calls build() again on the SAME object     → UI updates to reflect new data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold = the room. it has named slots:
      // appBar:                → top bar
      // body:                  → main content, your primary workspace
      // floatingActionButton:  → circular button (optional)
      // bottomNavigationBar:   → bottom nav (optional)
      // drawer:                → side menu (optional)

      appBar: AppBar(
        title: const Text('First Screen'),
      ),

      body: // YOUR UI GOES HERE

    );
  }
}