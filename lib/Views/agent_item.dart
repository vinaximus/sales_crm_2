import 'package:flutter/material.dart';
import 'package:sales_crm_2/Modal/agent.dart';

class AgentItem extends StatelessWidget{

  AgentItem({super.key,required this.agentRecord});

  Agent agentRecord;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:Text(agentRecord.agentName) ,
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(agentRecord.agentContactNumber ?? ''),
          Text(agentRecord.agentCity ?? "")
        ]
      ),
      
    );
  }
}