js


functionname() {

  letli = [20, 12, 11, 15, 12, 18, 3, 4, 14, 10, 7, 8, 5, 5, 13]

  leti = 0

  lets = newSet()

  while (i < li.length) {

    s.add(li[i])

    i++

  }

  s = Array.from(s)

  console.log(s)

}

name()
////////////////////////////////////////////
dart
void main(){
  List<int>  li = [20, 12, 11, 15, 12, 18, 3, 4, 14, 10, 7, 8, 5, 5, 13];
  int len = li.length;
  int i = 0;
  Set<int> s = <int>{};
  while(i < len){
    s.add(li[i]);
    i++;
  } 
  print(s);
  List<int> unique = s.toList();
  print(unique);
}
////////////////////////////////////////////
python
li = [20, 12, 11, 15, 12, 18, 3, 4, 14, 10, 7, 8, 5, 5, 13]
len = len(li)
i = 0
s = set()
while i < len:
    s.add(li[i])
    i += 1
s = list(s)
print(s)