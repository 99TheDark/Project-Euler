const ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
const tens = ["teen", "twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninety"];

function calculateLength(num: number): number {
    switch(String(num).length) {
        default: return -1;
        case 1: return ones[num].length;
        case 2:
            if(num == 12) {
                return 6;
            } else if(num == 13) {
                return 8;
            } else {
                const ten = tens[Math.floor(num / 10) - 1];
                const one = ones[num % 10];

                let len = ten.length + (one == "zero" ? 0 : one.length);
                if(one[one.length - 1] == ten[0]) len--;

                return len;
            }
        case 3:
            const hundred = ones[Math.floor(num / 100)];
            const left = num % 100;
            if(left == 0) {
                return hundred.length + 7;
            } else {
                return hundred.length + 10 + calculateLength(left);
            }
    }
}

let sum = 11;
for(let i = 1; i < 1000; i++) sum += calculateLength(i);

console.log(sum);