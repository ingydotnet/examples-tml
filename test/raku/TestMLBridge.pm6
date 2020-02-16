use TestML::Bridge;

class TestMLBridge is TestML::Bridge {

  method divide-then-multiply($x, $y) {
    Num(($x / $y) * $y);
  }

}
