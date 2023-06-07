function collatzLength(num: number): number {
    let total = 1;
    while(num != 1) {
        if(num % 2 == 0) {
            num /= 2;
        } else {
            num = 3 * num + 1;
        }
        total++;
    }

    return total;
}

let longest = -1;
for(let i = 1; i < 1_000_000; i++) {
    const len = collatzLength(i);
    if(len > longest) longest = len;
}

console.log(longest);