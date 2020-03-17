import 'dart:io';
class TechLearn{
  String name;
  bool isStudent;
  int age;
  String status;
  String tech;
  int hour,days;
  TechLearn participant1, participant2;
  String addStacks(status)
  {
    String tech;
     if (status == 'L')
     {
     stdout.write("Which technology do you want to learn ?  \n 1. Python \n Flutter \n 3.Go programming \n 4.UI /UX  Press Option number");
     tech = stdin.readLineSync();
     
     } 
    return tech;
  }
  
  
  String setMentorOrLearner()
  {
    stdout.write("Do you want to be mentor or learner (type M/L)");
    var status = stdin.readLineSync();
    if(status == 'M'){
      print("Wants to be mentor");
      stdout.write("In which technology do you have expertise?  \n 1. Python \n Flutter \n 3.Go programming \n 4.UI /UX  \n Type the option");
     var techMentor = stdin.readLineSync();
     print(techMentor);
   }
    else{
      print("Wants to be Learner");
    }
    return status;
  }
  
  void setAvailableTime(status)
  {
      if (status == 'M')
      {
       stdout.write("How many hours per day can you tak class?");
       var hour = stdin.readLineSync(); 
       stdout.write("How many days per week can you take class?");
       var days = stdin.readLineSync();
       print("Can take class for , $days per week and $hour per day");
      }
    
  }
  
  void getMentor(String tech,int hour,int days){
    if ((participant1.tech == participant2.tech) & (participant1.hour == participant2.hour) & (participant1.days==participant2.days))
    {
      print("Mentor is available");
    }
    else{
      print("Mentor not available");
    }
  }
}
  
  void main()
  {
    TechLearn participant1 = new TechLearn();
    print("Enter name ");
    String name = stdin.readLineSync();
    participant1.name = name;
    print("what is your age \n");
    int age = int.parse(stdin.readLineSync());
    participant1.age = age;
    String status=participant1.setMentorOrLearner();
    participant1.setAvailableTime(status);
    String tech=participant1.addStacks(status);
    if (participant1.status == 'L')
    {
       stdout.write("How many hours per day can you attend class?");
       var hour = int.parse(stdin.readLineSync());
       stdout.write("How many days per week can you take class?");
       var days = int.parse(stdin.readLineSync());
       participant1.getMentor(tech,hour,days);
     }
    TechLearn participant2 = new TechLearn();
    print("Enter name \n");
     String name2 = stdin.readLineSync();
    participant2.name = name2;
    print("what is your age \n");
    int age2 = int.parse(stdin.readLineSync());
    participant2.age = age2;
    String status2 = participant1.setMentorOrLearner();
    participant2.status=status2;
    participant2.setAvailableTime(status2);
    String tech2=participant2.addStacks(status2);
    participant2.tech=tech2;
    if (participant2.status == 'L')
    {
       stdout.write("How many hours per day can you attend class?");
       var hour = int.parse(stdin.readLineSync());
       stdout.write("How many days per week can you take class?");
       var days = int.parse(stdin.readLineSync());
       participant1.getMentor(tech,hour,days);
     }
}
