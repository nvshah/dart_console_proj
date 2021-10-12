void main() {
  var l1 = calculateSidePots1([50, 60, 100]);

  print(l1);
}

///Logic shared by HTP Team
List<int> calculateSidePots1(List<int> playerBets) {
  if (playerBets?.isEmpty ?? true) return [];
  var totalPlayers = playerBets.length;
  if (playerBets.length < 2) return [];

  playerBets.sort();

  print('Sorted :- $playerBets');

  var sidePots = <int>[];

  for (var i = 1; i < totalPlayers - 1; i++) {
    final potVal = (totalPlayers - i) * (playerBets[i] - playerBets[i - 1]);
    if (potVal > 0) {
      sidePots.add(potVal);
    }
  }
  return sidePots;
}
