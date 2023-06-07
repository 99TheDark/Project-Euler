void main() {
  var tripleProduct;
  top:
  for (var k = 1; k <= 997; k++) {
    for (var j = 1; j <= 997; j++) {
      for (var i = 1; i <= 997; i++) {
        if (i * i + j * j + k * k == 1000) {
          tripleProduct = i * j * k;
          break top;
        }
      }
    }
  }

  print(tripleProduct);
}
