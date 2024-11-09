import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/colors_list_view.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_date.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Form(
          key: formkey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                hint: 'title',
                onSaved: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'content',
                maxLines: 7,
                onSaved: (value) {
                  subTitle = value;
                },
              ),
              const ColorsListView(),
              const SizedBox(
                height: 64,
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return submitbuttom(state, context);
                },
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ));
    });
  }

  CustomButton submitbuttom(AddNoteState state, BuildContext context) {
    return CustomButton(
      isLoading: state is AddNoteLoading ? true : false,
      onTap: () {
        if (formkey.currentState!.validate()) {
          formkey.currentState!.save();
          String formattedCurrentDate = editDate();
          NoteModel noteModel = sumbitNoteModel(formattedCurrentDate);
          BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
        } else {
          autovalidateMode = AutovalidateMode.always;
          setState(() {});
        }
      },
    );
  }

  NoteModel sumbitNoteModel(String formattedCurrentDate) {
    var noteModel = NoteModel(
        title: title!,
        subtitle: subTitle!,
        date: formattedCurrentDate,
        color: Colors.blue.value);
    return noteModel;
  }


}

