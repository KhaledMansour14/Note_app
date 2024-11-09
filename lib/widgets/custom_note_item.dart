import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return EditNoteView(note: note,);
          }));
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 12, left: 12),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 12, left: 4, bottom: 12),
                  child: Text(note.subtitle,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 69, 69, 69),
                        fontSize: 18,
                      )),
                ),
                trailing: IconButton(
                  hoverColor: Colors.grey,
                  focusColor: const Color.fromARGB(115, 29, 29, 29),
                  onPressed: () {
                    note.delete();

                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    size: 30,
                    Icons.delete,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, bottom: 8),
                child: Text(
                  note.date,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
