import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_widget.dart';

class AddNote extends StatefulWidget {
  const AddNote({Key? key}) : super(key: key);

  @override
  State<AddNote> createState() => _AddNoteState();
}

class _AddNoteState extends State<AddNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('AddNote'),),
      ),
      body: const AddNoteWidget(),
    );
  }
}
