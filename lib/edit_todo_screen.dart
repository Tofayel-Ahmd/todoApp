import 'package:flutter/material.dart';

class EditTodoScreen extends StatelessWidget {
   EditTodoScreen({super.key});
   final GlobalKey<FormState>_formKey =GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Edit Todo Screen"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(

            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Title"
                ),
                validator: (String? value){
                  final v = value?? ' ';
                  if (v.trim().isEmpty){
                    return ("Enter your Title");
                  }
                  return null;
                },

              ),
              const SizedBox(
                height: 16,
              ),

              TextFormField(
                decoration: const InputDecoration(

                  hintText: "Descriptions"
                ),
                validator: (String? value){

                  if (value?.trim().isEmpty?? true){
                    return ("Enter your Descriptions");
                  }
                  return null;
                },
                maxLines: 5,
                maxLength: 100,
              ),
              const SizedBox(
                height: 16,
              ),

              ElevatedButton(onPressed: (){
                if (_formKey.currentState!.validate()) {
                  Navigator.pop(context);
                }
              },
                  child: const Text("Edit") )
            ],
          ),
        ),
      ),

    );
  }
}
