// ignore_for_file: deprecated_member_use

import 'dart:ui';

import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  //var
  GlobalKey<FormState> formKey = GlobalKey();

  late String mail;

  late String password;

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
                  mail = newValue!;
                },
                validator: (value) {
                  RegExp regex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                  if (value!.isEmpty) {
                    return "email cannot be empty";
                  } else if (!regex.hasMatch(value)) {
                    return "Email invalid";
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
              ),
            ),
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
                    border: OutlineInputBorder(), labelText: "Mot de passe"),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        minimumSize: const Size.fromHeight(40)),
                    child: const Text("Se Connecter"),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Information"),
                              content: Text(
                                  "  \n Email = $mail \n Password = $password "),
                            );
                          },
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 0.99,
                    child: ElevatedButton(
                      child: const Text("Annuler"),
                      onPressed: () {},
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Mot de pass oublié"),
                TextButton(onPressed: () {}, child: const Text("Cliquez ici !"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
