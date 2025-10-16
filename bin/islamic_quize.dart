import 'dart:io';

void main() {
  var questions = [
    {
      "Q": "1. Who was the first Caliph after the Prophet Muhammad (PBUH)?",
      "A": "A) Umar ibn al-Khattab",
      "B": "B) Abu Bakr as-Siddiq",
      "C": "C) Uthman ibn Affan",
      "Correct": "B",
    },
    {
      "Q":
          "2. In which year did the Hijra (migration from Makkah to Madinah) take place?",
      "A": "A) 610 CE",
      "B": "B) 622 CE",
      "C": "C) 632 CE",
      "Correct": "B",
    },
    {
      "Q":
          "3. Which battle was the first major battle fought by Muslims after the Hijra?",
      "A": "A) Battle of Uhud",
      "B": "B) Battle of Badr",
      "C": "C) Battle of Khandaq",
      "Correct": "B",
    },
    {
      "Q": "4. Who compiled the Qur’an into a single book form?",
      "A": "A) Caliph Umar ibn al-Khattab",
      "B": "B) Caliph Ali ibn Abi Talib",
      "C": "C) Caliph Uthman ibn Affan",
      "Correct": "C",
    },
    {
      "Q": "5. The Umayyad Caliphate established its capital in which city?",
      "A": "A) Baghdad",
      "B": "B) Damascus",
      "C": "C) Cairo",
      "Correct": "B",
    },
  ];
  var score = 0;
  print("Welcome To Islamic Quize");
  for (var q in questions) {
    void quize() {
      print(" ");

      print("Give Your Ans Like Example:'A'");

      print(q["Q"]);
      print(q["A"]);
      print(q["B"]);
      print(q["C"]);
      print(" ");

      stdout.write("Enter Your Ans Like 'A': \t");
      var ans = stdin.readLineSync().toString().toUpperCase();

      if (ans == 'A' || ans == 'B' || ans == 'C') {
        if (q["Correct"] == ans) {
          score++;
        }
      } else {
        print("Please Ans In Only One Alphabet Like A,B,C");
        quize();
      }
    }

    quize();
  }
  var scorePercentage = score ~/ 5 * 100;

  print(" ");
  print("Your Score is $scorePercentage%");
  print(" ");
  print(
    "${scorePercentage >= 80
        ? 'Execellent'
        : scorePercentage >= 60
        ? 'Good'
        : scorePercentage >= 50
        ? 'Not Bad'
        : 'Poor'}",
  );
}
