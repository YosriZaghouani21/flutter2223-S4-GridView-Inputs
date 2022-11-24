import 'dart:ui';

import 'package:flutter/material.dart';

class Param_profile extends StatefulWidget {
  Param_profile({super.key});

  @override
  State<Param_profile> createState() => _Param_profileState();
}

class _Param_profileState extends State<Param_profile> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String password;

  late String NewPass;

  late String address;

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: Image.asset("Assets/minecraft.jpg",
                    width: 460, height: 215)),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  password = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: TextFormField(
                onSaved: (newValue) {
                  NewPass = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "New password cannot be empty";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "New password"),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 20),
              child: TextFormField(
                onSaved: (newValue) {
                  address = newValue!;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "address cannot be empty";
                  }
                },
                maxLines: 4,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Adresse de facturation"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: const Size.fromHeight(40)),
                child: const Text("Enregistrer"),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
