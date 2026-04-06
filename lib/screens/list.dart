import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/addform.dart';
import '../models/person.dart';
import 'package:google_fonts/google_fonts.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User List"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: data[index].job.color,
                  ),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 20,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].name,
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "${data[index].age} Job: ${data[index].job.title}",
                            style: GoogleFonts.spaceGrotesk(fontSize: 16),
                          ),
                        ],
                      ),
                      Image.asset(data[index].picture, width: 100, height: 100),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: IconButton(
              icon: const Icon(Icons.add, size: 40, color: Colors.black),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddFormState()),
                );
                setState(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
