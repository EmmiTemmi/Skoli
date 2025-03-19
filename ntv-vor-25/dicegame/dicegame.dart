import 'dart:math';

class Dice {
  final Random _random = Random();
  int roll() => _random.nextInt(6) + 1;
}

class Player {
  final String name;
  int score = 0;
  Player(this.name);

  void rollDice(Dice dice) {
    int roundScore = dice.roll() + dice.roll();
    score += roundScore;
    print('$name rolled $roundScore. Total: $score');
  }
}

void main() {
  Player p1 = Player("Player 1"), p2 = Player("Player 2");
  Dice dice = Dice();

  for (int i = 1; i <= 4; i++) {
    print('\nRound $i:');
    p1.rollDice(dice);
    p2.rollDice(dice);
  }

  print('\nFinal Scores:\n${p1.name}: ${p1.score}\n${p2.name}: ${p2.score}');
  print(p1.score > p2.score ? 'Winner: ${p1.name}' : p1.score < p2.score ? 'Winner: ${p2.name}' : "It's a tie!");
}