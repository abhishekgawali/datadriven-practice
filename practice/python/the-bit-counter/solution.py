def count_set_bits(n: int) -> int:
  count=0
  
  while n >0:
    count+=n&1
    n>>=1
    






  return count
