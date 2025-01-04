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