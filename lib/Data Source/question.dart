class Question {

  String name;
  String picURL;
  String subject;

  // Basic Question Format
  Question(this.name, this.picURL, this.subject);



  // Read JSON Data for  questions
  factory Question.fromJsonSimple(Map<String, dynamic> json) {
    return Question(
        json["name"], json["picture"], json["subject"]);
  }

  // Extract Simple Questions
  static List<Question> questionsFromSnapshotSimple(List snapshot) {
    return snapshot.map((data) {
      return Question.fromJsonSimple(data);
    }).toList();
  }

}
