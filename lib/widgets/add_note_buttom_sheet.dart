import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_button.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
              const SizedBox(
                height: 64,
              ),
              CustomButton(
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ));
    });
  }
}
