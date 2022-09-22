void main() => checkPi();

checkPi() => getPalindromicAndPrime("Put your PI value here!");

getPalindromicAndPrime(String pi) {
  String number = "";
  String numberReverse = "";

  for (int piIndex = 0; piIndex < pi.length; piIndex++) {
    number += pi[piIndex];
    if (number.length == 9) {
      reversePi(number, numberReverse, piIndex);
      number = "";
      numberReverse = "";
    }
  }
}

reversePi(String number, String numberReverse, int piIndex) {
  for (int reverseIndex = 0; reverseIndex < number.length; reverseIndex++) {
    numberReverse += number[8 - reverseIndex];
  }
  if (number == numberReverse && isPrime(int.parse(numberReverse))) {
    print("iteration number - $piIndex");
    print("number - $number");
    print("numberReverse - $numberReverse\n");
  }
}

bool isPrime(int N) {
  for (var i = 2; i <= N / i; ++i) {
    if (N % i == 0) {
      return false;
    }
  }
  return true;
}
