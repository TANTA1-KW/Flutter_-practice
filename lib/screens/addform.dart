import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/person.dart';

class AddFormState extends StatefulWidget {
  const AddFormState({super.key});

  @override
  State<AddFormState> createState() => _AddFormStateState();
}

class _AddFormStateState extends State<AddFormState> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  int _age = 20;
  Job? _job;

  //  @override
  //  void initState() {
  //    super.initState();
  //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ADD FORM FOR USER"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsetsGeometry.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                maxLength: 40,
                decoration: const InputDecoration(
                  label: Text("Name"),
                  hintText: "Enter your name",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your name";
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!.trim();
                },
              ),

              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text("Age"),
                  hintText: "Enter your age",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your age";
                  }
                  if (int.tryParse(value) == null) {
                    return "Please enter a valid number";
                  }
                  return null;
                },
                onSaved: (value) {
                  _age = int.parse(value.toString());
                },
              ),

              SizedBox(height: 20),

              DropdownButtonFormField<Job>(
                initialValue: _job,
                decoration: const InputDecoration(label: Text("Job")),
                items: Job.values.map((key) {
                  return DropdownMenuItem(value: key, child: Text(key.title));
                }).toList(),
                validator: (value) {
                  if (value == null) {
                    return "Please select your job";
                  }
                  return null;
                },
                onChanged: (value) {
                  _job = value;
                },
              ),

              SizedBox(height: 20),

              FilledButton(
                onPressed: () {
                  final formState = _formKey.currentState;
                  if (formState == null) return;
                  if (!formState.validate()) return;
                  formState.save();
                  if (_job == null) return;

                  data.add(
                    Person(
                      name: _name,
                      age: _age,
                      job: _job!,
                      picture: "assets/images/error404.avif",
                    ),
                  );
                  formState.reset();
                  setState(() {
                    _job = null;
                  });
                  Navigator.pop(context);
                },
                child: Text("Submit", style: TextStyle(fontSize: 20)),
              ),
            ],
          ),
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,
        ),
      ),
    );
  }
}
