function isPrime(num) {
    for(let i = 2; i <= num / 2; i++) {
        if(num % i == 0) return false;
    }
    return true;
}

let lastPrime = -1;
for(let i = 2, primeNumber = 0; primeNumber < 10001; i++) {
    if(isPrime(i)) {
        lastPrime = i;
        primeNumber++;
    }
}

console.log(lastPrime);