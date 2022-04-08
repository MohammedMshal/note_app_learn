import 'package:flutter/material.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  List notes = [
    {'note': 'test cat cat cat cat bat value ', 'image': '2.jpg'},
    {'note': 'test cat cat cat cat bat value ', 'image': '2.jpg'},
    {'note': 'test cat cat cat cat bat value ', 'image': '2.jpg'},
    {'note': 'test cat cat cat cat bat value ', 'image': '2.jpg'},
  ];

  Widget _buildListView() {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(2),
        child: ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) {
            return _BuildListNotes(notes[index]);
          },
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add),onPressed: (){
        Navigator.of(context).pushNamed('addNote');
      },),
      appBar: AppBar(
        title: const Center(
          child: Text('HomePage'),
        ),
      ),
      body: _buildListView(),
    );
  }
}

class _BuildListNotes extends StatelessWidget {
  final notes;
  const _BuildListNotes(this.notes);
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      child: Card(
        child: Row(
          children: [
            Expanded(flex: 1, child: Image.asset('assets/images/2.png')),
            Expanded(
              flex: 2,
              child: ListTile(
                  title: const Text('Title') ,
                subtitle: Text("${notes['note']}") ,
                ),
              ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
