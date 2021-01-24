class Fibonacci {
  /*
   * c is the index and it starts with 3, because the initial values of fibonacci's
   * sequence are 0, 1, 1. After that, the list _sequence will update to the sum 
   * of the value of the c itself index, minus 1 and c itself index minus 2.
   * Repeat this until the number set as end of the sequence minus 1.
   * 
   * If, for some reason the list _sequene be incomplete, the rest ofitself will be
   * the value of -1
   */

  int _endSequence = 1;
  List<int> _sequence; // Initial value (It's default folks!)

  Fibonacci(int endSequence) {
    this._endSequence = endSequence > 0 ? endSequence : 1;
    this._sequence = new List.filled(endSequence, -1);
    this._sequence[0] = 0;
    this._sequence[1] = 1;
    this._sequence[2] = 1;
  }

  List<int> fibonacciSequence() {
    for (int c = 3; c < this._endSequence - 5; c++) {
      this._sequence[c] = this._sequence[c - 1] + this._sequence[c - 2];
    }

    return this._sequence;
  }
}
