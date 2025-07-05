import 'package:flutter/material.dart';
import 'single_agents_screen.dart';
import 'package:sales_crm_2/Modal/agent.dart';
import 'package:sales_crm_2/Views/agent_item.dart';

class AgentsScreen extends StatelessWidget{

  List<Agent> agentList=Agent(agentID: 1,agentName: "Ak").agentList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _agentAppbar(context),

        body: ListView.separated(
          itemCount: agentList.length,
          itemBuilder: (BuildContext context, int index){
            return AgentItem(agentRecord: agentList[index]);
          },
          separatorBuilder: (BuildContext context, int index)=>Divider()
          
        )
        /* body: ListView(
          
          children:
          agentList.map((ele)=>AgentItem(agentRecord: ele)).toList()
        ), */
        
      ),
    );
  }

}


AppBar _agentAppbar (context) {
  return AppBar(
  title: Text("Agents"),
  backgroundColor: Colors.blueAccent,
  actions: [
    IconButton(
      onPressed: ((){
        
        Navigator.push(context, MaterialPageRoute(builder:(context)=>SingleAgentsScreen() ));
      }), 
      color: Colors.white,
      iconSize: 44,
      icon: Icon(Icons.add_box_rounded)),
  ],
);
}