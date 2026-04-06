import 'package:flutter/material.dart';

enum Job {
  student(title: "Student", color: Colors.purple),
  developer(title: "Developer", color: Colors.orange),
  designer(title: "Designer", color: Colors.green),
  ceo(title: "CEO", color: Colors.red),
  manager(title: "Manager", color: Colors.yellow),
  sleep(title: "Sleep Eat Code", color: Colors.blue),
  notfilled(title: "Null", color: Colors.grey);

  const Job({required this.title, required this.color});
  final String title;
  final Color color;
}

class Person {
  Person({
    required this.name,
    required this.age,
    required this.job,
    required this.picture,
  });

  String name;
  int age;
  Job job;
  String picture;
}

List<Person> data = [
  Person(
    name: "Praew",
    age: 20,
    job: Job.student,
    picture: "assets/images/cat1.jpg",
  ),
  Person(
    name: "John",
    age: 30,
    job: Job.developer,
    picture: "assets/images/cat2.jpg",
  ),
  Person(
    name: "Jane",
    age: 25,
    job: Job.designer,
    picture: "assets/images/cat3.jpg",
  ),
  Person(
    name: "June",
    age: 25,
    job: Job.ceo,
    picture: "assets/images/cat4.jpg",
  ),
  Person(
    name: "Jan",
    age: 25,
    job: Job.manager,
    picture: "assets/images/cat5.jpg",
  ),
  Person(
    name: "Tan",
    age: 25,
    job: Job.sleep,
    picture: "assets/images/cat6.jpg",
  ),
];
