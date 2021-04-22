import 'dart:math';

class Card {
  String rank;
  String suit;
  Card(this.rank, [this.suit]);
}

class Deck {
  int number_of_cards = 56;
  List<String> suits = ['Clubs', 'Diamonds', 'Hearts', 'Spades'];
  List<String> ranks = [
    'Ace',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Page',
    'Knight',
    'Queen',
    'King'
  ];
  List<String> major_arcana = [
    'The Fool',
    'The Magician',
    'The High Priestess',
    'The Empress',
    'The Emperor',
    'The Hierophant',
    'The Lovers',
    'The Chariot',
    'Justice',
    'The Hermit',
    'Wheel of Fortune',
    'Strength',
    'The Hanged Man',
    'Death',
    'Temperance',
    'The Devil',
    'The Tower',
    'The Star',
    'The Moon',
    'The Sun',
    'Judgement',
    'The World'
  ];

  List<Card> deck_of_cards = [];

  Deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        var card = Card(rank, suit);
        deck_of_cards.add(card);
      }
    }
    for (var major_arcana_card in major_arcana) {
      var major_card = Card(major_arcana_card);
      deck_of_cards.add(major_card);
    }
  }

  Card getRandomCard(List<Card> deck_of_cards) {
    if (deck_of_cards.isNotEmpty) {
      return deck_of_cards[Random().nextInt(deck_of_cards.length)];
    } else {
      throw Exception('No cards in deck');
    }
  }

  // 3 cards
  List dealCards(List<Card> deck_of_cards) {
    var dealt_cards = [];
    var dealt_card = getRandomCard(deck_of_cards);
    for (var i = 0; i < 3; i++) {
      while (dealt_cards.contains(dealt_card)) {
        dealt_card = getRandomCard(deck_of_cards);
      }
      dealt_cards.add(dealt_card);
    }
    return dealt_cards;
  }
}

void main(List<String> arguments) {
  var time = ['Past', 'Present', 'Future'];
  var a = Deck();
  var b = a.dealCards(Deck().deck_of_cards);



  for (var i = 0; i < b.length; i++ ) {
         if (b[i].suit != null) {
          print(time[i] + ': ' + b[i].rank + ' of ' + b[i].suit);
      } else {
          print(time[i] + ': ' + b[i].rank);
        }
  }

}
