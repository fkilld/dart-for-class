function name() {
  let li = [20, 12, 11, 15, 12, 18, 3, 4, 14, 10, 7, 8, 5, 5, 13]
  let i = 0
  let s = new Set()
  while (i < li.length) {
    s.add(li[i])
    i++
  }
  s = Array.from(s)
  console.log(s)
}
name()