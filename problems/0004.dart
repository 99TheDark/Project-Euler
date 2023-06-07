bool isPalindrone(num) {
  var str = num.toString();
  var left = 0;
  var right = str.length - 1;
  while (left < right) {
    if (str[left] != str[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}

void main() {
  var largest = -1;
  for (int i = 100 * 100; i < 999 * 999; i++) {
    if (isPalindrone(i)) largest = i;
  }

  print(largest);
}
