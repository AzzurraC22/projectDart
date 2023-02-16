class Fibonacci {
  int count;

  Fibonacci({
    required this.count,
  });

  List<int> calc(){
    int n1 = 0;
    int n2 = 1;
    int n3;
    List<int> l = [];
    for (int i = 0; i <= count; i++) {
      n3 = n1 + n2;
      l.add(n3);
      n1 = n2;
      n2 = n3;
    }

    return l;
    }
}
