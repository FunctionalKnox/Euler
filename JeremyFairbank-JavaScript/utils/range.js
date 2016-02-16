export default function range(from, upto) {
  return Array.from(new Array(upto - from), (_, i) => from + i);
}
