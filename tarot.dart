import 'dart:io';
import 'dart:math';


String getRandomKey(Map map) {
  return map.keys.elementAt(Random().nextInt(map.length));
}
String getRandomMinorArcanaCard(Map map_arcana, String key) {
  return map_arcana[key][Random().nextInt(map_arcana[key].length)];
}

void main(List<String> arguments) {
  var major_arcana = {
    'The Fool': 'When The Fool comes up in a Tarot reading, '
        'you are encouraged to take on his open, \n'
        'willing energy and embrace all that lies ahead of you without worry.\n',
    'The Magician': 'When The Magician comes up in your Tarot reading, \n'
        "it's a reminder that you needn't wait -- you already hold everything you need to move forward and accomplish what you've set out to do.\n",
    'The High Priestess': 'When she arises in your Tarot reading, \n'
        'stop looking for answers in the outside world and instead, \n'
        'turn within for the guidance you seek.\n',
    'The Empress': 'She is deeply connected to Mother Nature, \n'
        'and her influence is powerful when you absorb the energy of the natural world around you.',
    'The Emperor': '4',
    'The Hierophant': '5',
    'The Lovers': '6',
    'The Chariot': '7',
    'Justice': '8',
    'The Hermit': '9',
    'Wheel of Fortune': '10',
    'Strength': '11',
    'The Hanged Man': '12',
    'Death': '13',
    'Temperance': '14',
    'The Devil': '15',
    'The Tower': '16',
    'The Star': '17',
    'The Moon': '18',
    'The Sun': '19',
    'Judgement': '20',
    'The World': '21'
  };
  var minor_arcana = {
    'Wands': [
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
    ],
    'Cups': [
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
    ],
    'Swords': [
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
    ],
    'Coins': [
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
    ],
  };


  var rand_maj_key = getRandomKey(major_arcana);
  var rand_min_key = getRandomKey(minor_arcana);

  var minor_card1 = getRandomMinorArcanaCard(minor_arcana, rand_min_key);


  print('Choose how many cards you want to pull. Input 1/3');
  var mode_choice = stdin.readLineSync();
  if (mode_choice == '1') {
    print('Which arcana do you want to pull from? Input Major/Minor');
    var arcana_choice = stdin.readLineSync();
    if (arcana_choice == 'Major') {
      print(rand_maj_key + ' \n' + major_arcana[rand_maj_key]);
    } else {
      print(minor_card1 + ' ' + rand_min_key);
    }
  } else {
    print('Do you want to include Major Arcana cards? Input Yes/No');

    var three_cards_choice = stdin.readLineSync();

    if (three_cards_choice == 'Yes') {
      print(rand_maj_key + major_arcana[rand_maj_key]);

      var rand_min_key_1a = getRandomKey(minor_arcana);
      var rand_min_key_2a = getRandomKey(minor_arcana);

      var minor_card1 = minor_arcana[rand_min_key_1a]
          [Random().nextInt(minor_arcana[rand_min_key_1a].length)];
      minor_arcana[rand_min_key_1a].remove(minor_card1);
      var minor_card2 = minor_arcana[rand_min_key_2a]
          [Random().nextInt(minor_arcana[rand_min_key_2a].length)];
      print(minor_card1 + ' of ' + rand_min_key_1a);
      print(minor_card2 + ' of ' + rand_min_key_2a);
    } else {

      var rand_min_key_1b = getRandomKey(minor_arcana);
      var rand_min_key_2b = getRandomKey(minor_arcana);
      var rand_min_key_3b = getRandomKey(minor_arcana);

      var minor_card1 = getRandomMinorArcanaCard(minor_arcana, rand_min_key_1b);
      minor_arcana[rand_min_key_1b].remove(minor_card1);

      var minor_card2 = getRandomMinorArcanaCard(minor_arcana, rand_min_key_2b);
      minor_arcana[rand_min_key_2b].remove(minor_card2);

      var minor_card3 = getRandomMinorArcanaCard(minor_arcana, rand_min_key_3b);
      minor_arcana[rand_min_key_3b].remove(minor_card3);

      print(minor_card1 + ' of ' + rand_min_key_1b);
      print(minor_card2 + ' of ' + rand_min_key_2b);
      print(minor_card3 + ' of ' + rand_min_key_3b);

    }
  }
}
