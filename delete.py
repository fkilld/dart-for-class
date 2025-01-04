li = [20, 12, 11, 15, 12, 18, 3, 4, 14, 10, 7, 8, 5, 5, 13]
len = len(li)
i = 0
s = set()
while i < len:
    s.add(li[i])
    i += 1
s = list(s)
print(s)