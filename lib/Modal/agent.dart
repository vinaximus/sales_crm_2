class Agent {
  Agent({
    required this.agentID,
    required this.agentName,
    this.agentCity,
    this.agentContactNumber
  });
  

  int agentID;
  String agentName;
  String? agentContactNumber;
  String? agentCity;

  List<Agent> agentList() {
    return  [
      Agent(agentID: 1, agentName: "Ravi Sharma", agentContactNumber: "9876543210", agentCity: "Jaipur"),
      Agent(agentID: 2, agentName: "Meera Patel", agentContactNumber: "9123456789", agentCity: "Ahmedabad"),
      Agent(agentID: 3, agentName: "Amit Verma", agentContactNumber: "9988776655", agentCity: "Delhi"),
      Agent(agentID: 4, agentName: "Sunita Rao", agentContactNumber: "9871234567", agentCity: "Mumbai"),
      Agent(agentID: 5, agentName: "Rajesh Kumar", agentContactNumber: "9988123456", agentCity: "Bengaluru"),
      Agent(agentID: 6, agentName: "Neha Joshi", agentContactNumber: "9123456677", agentCity: "Pune"),
      Agent(agentID: 7, agentName: "Vikram Singh", agentContactNumber: "9998887776", agentCity: "Lucknow"),
      Agent(agentID: 8, agentName: "Anjali Mehta", agentContactNumber: "8877665544", agentCity: "Chandigarh"),
      Agent(agentID: 9, agentName: "Karan Desai", agentContactNumber: "9988771122", agentCity: "Surat"),
      Agent(agentID: 10, agentName: "Pooja Nair", agentContactNumber: "9877654321", agentCity: "Kochi"),
];
  }
}


