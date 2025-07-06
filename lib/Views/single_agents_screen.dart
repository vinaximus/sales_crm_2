import 'package:flutter/material.dart';
import 'package:sales_crm_2/Modal/agent.dart';

enum formMode { addMode, editMode }

class SingleAgentsScreen extends StatefulWidget {
  SingleAgentsScreen({super.key, this.agentRecord, required this.mode})
    : assert(
        mode == formMode.addMode ||
            (mode == formMode.editMode && agentRecord != null),
        "agentRecord can't be null when mode is editmode",
      );

  Agent? agentRecord;
  formMode mode;

  @override
  State<SingleAgentsScreen> createState() {
    return _SingleAgentsScreenState();
  }
}

class _SingleAgentsScreenState extends State<SingleAgentsScreen> {
  final _form_key = GlobalKey<FormState>();

  Agent? agentRecord;
  @override
  void initState() {
    agentRecord = widget.agentRecord;
    super.initState();
  }

  String agentName = "";

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: (AppBar(
        backgroundColor: Colors.amber,
        title: Text("Agent Details"),
      )),
      body: Form(
        key: _form_key,
        child: Container(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Column(
            children: [
              Row(
                spacing: 20,
                children: [
                  Icon(Icons.person),
                  Expanded(
                    child: TextFormField(
                      initialValue: agentRecord.agentName,
                      decoration: InputDecoration(label: Text("Agent Name")),
                      validator: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 20,
                children: [
                  Icon(Icons.phone),
                  Expanded(
                    child: TextFormField(
                      initialValue: agentRecord.agentContactNumber,
                      decoration: InputDecoration(label: Text("Contact No")),
                      validator: (value) {},
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 20,
                children: [
                  Icon(Icons.map),
                  Expanded(
                    child: TextFormField(
                      initialValue: agentRecord.agentCity,
                      decoration: InputDecoration(label: Text("City")),
                      validator: (value) {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
