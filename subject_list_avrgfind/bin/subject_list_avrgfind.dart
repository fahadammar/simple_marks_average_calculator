import 'dart:io';

/*
  NOTE: 
  * The Result Average Function takes the input of How many Marks
  * Then Take the marks of the subjects
  * Place the marks into the lists, sum them and shows the average!!
*/

//-------------------------------//
//  Subjects Average Calculator  //
//-------------------------------//
void resultAvrg() {
  //* LIST
  var subjList = [];

  // Variables
  int num_subj;
  int marks;
  double sum = 0.0;

  print('How Many Subjects: ');

  num_subj = int.parse(stdin.readLineSync());

  for (var i = 0; i < num_subj; i++) {
    print('\nEnter the marks of Subject# ${i}: ');
    marks = int.parse(stdin.readLineSync());
    subjList.add(marks);
    sum += subjList[i];
  }

  sum = sum / subjList.length;

  print('\n\tYour Average Marks Are -> ${sum}');
}

void main(List<String> arguments) {
  resultAvrg();
}
