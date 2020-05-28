void main() {
  var deck = new Deck();
 /* use for shuffle the cards */
 /* deck.shuffle();
  print(deck.cardsWithSuit('Diamonds')); */

  /* used to pick a set of cards */
  /* print(deck);
  print(deck.deal(5));
  print(deck); */

  /*use to remove a particular card */

  deck.removeCard('Diamonds', 'Ace');
  print(deck);

}
class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = ['Ace','Two','Three','Four','Five'];
    var suits = ['Diamonds','Hearts','Clubs','Spades'];

    for (var mySuit in suits) {
      for (var rank in ranks) {
        var card = new Card(
          suit: mySuit, /*named parameters*/
          rank: rank
          );
        cards.add(card);

      }
    }

  }
  toString() {  //print will first look on toString fn
    return cards.toString();
  }
  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }
  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards.sublist(handSize);
    return hand;
  }

  removeCard(String suit, String rank) {
    cards.removeWhere((card) => (card.suit == suit) && (card.rank == rank));
  }
}

class Card {
  String suit; //spades, clubs, diamond, heart
  String rank; //ace, king, jack, queen, 10, 9,... 
  Card({this.rank,this.suit});

  toString() {
    return '$rank of $suit';
  }
}