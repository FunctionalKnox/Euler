import range from './utils/range';

const multOf = x => y => y % x === 0;

const multOf3 = multOf(3);
const multOf5 = multOf(5);

const multOf3Or5 = x => multOf3(x) || multOf5(x);

const sumOfMultsUpTo = n =>
  range(1, n).reduce(
    (x, y) => multOf3Or5(y) ? x + y : x,
    0
  );

console.log(sumOfMultsUpTo(1000));
