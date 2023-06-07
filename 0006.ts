function sumEachSquared(n: number): number {
    let sum = 0;
    for(let i = 0; i < n; i++) sum += i ** 2;

    return sum;
}

function sumAllSquared(n: number): number {
    return (n * (n + 1) / 2) ** 2;
}

const diff = Math.abs(sumAllSquared(100) - sumEachSquared(100));
console.log(diff);