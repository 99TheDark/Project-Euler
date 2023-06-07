let sum = 0;
let previous = [1, 1];
while(true) {
    const fib = previous[0] + previous[1];
    previous = [previous[1], fib];

    if(fib % 2 == 0) sum += fib;
    if(fib > 4_000_000) break;
}

console.log(sum);