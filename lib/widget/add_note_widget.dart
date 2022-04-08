import 'package:flutter/material.dart';

class AddNoteWidget extends StatefulWidget {
  const AddNoteWidget({Key? key}) : super(key: key);

  @override
  State<AddNoteWidget> createState() => _AddNoteWidgetState();
}

class _AddNoteWidgetState extends State<AddNoteWidget> {
  Widget _buildTextFormFieldTitleNote() {
    return TextFormField(
      maxLength: 30,
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: "Title Note",
        prefixIcon: Icon(Icons.note),
      ),
    );
  }

  Widget _buildTextFormFieldDescriptionNote() {
    return TextFormField(
      minLines: 1,
      maxLines: 3,
      maxLength: 200,
      decoration: const InputDecoration(
          filled: true,
          fillColor: Colors.white,
          labelText: "Note",
          prefixIcon: Icon(Icons.note)),
    );
  }

  Widget _buildAddImageNote(double widthScreen, double heightScreen) {
    return SizedBox(
      width: widthScreen - 50,
      child: ElevatedButton.icon(
        onPressed: () {
          _buildShowAddImageForNote(heightScreen, widthScreen);
        },
        label: const Text('Add image for note'),
        icon: const Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _buildAddNoteButton(double widthScreen) {
    return SizedBox(
      width: widthScreen - 70,
      child: ElevatedButton.icon(
        onPressed: () {},
        label: const Text('Save icon'),
        icon: const Icon(Icons.add),
      ),
    );
  }

  //add image for note
  Future<dynamic> _buildShowAddImageForNote(
      double heightScreen, double widthScreen) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: heightScreen - 700,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Column(
                        children: [
                          SizedBox(
                            child: Icon(
                              Icons.photo_album,
                              size: widthScreen - 310,
                            ),
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap:(){},
                      child: Column(
                        children: [
                          Icon(
                            Icons.add_a_photo,
                            size: widthScreen - 310,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(fontSize: 20),
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

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    double heightScreen = MediaQuery.of(context).size.height;
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTextFormFieldTitleNote(),
            _buildTextFormFieldDescriptionNote(),
            _buildAddImageNote(widthScreen, heightScreen),
            _buildAddNoteButton(widthScreen),
          ],
        ),
      ),
    );
  }
}
