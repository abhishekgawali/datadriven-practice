def the_squeeze(s: str):
  
  if len(s)==0:
    return s
  current =s[0]
  count=1
  parts=[]
  
  for ch in s[1:]:
    if current ==ch:
      count+=1
      
    else:
      parts.append(current)
      parts.append(str(count))
      count=1
      current=ch
  
  
  parts.append(current)
  parts.append(str(count))
  
  partslen= "".join(parts)
  
  if len(partslen) >= len(s):
    return s 
      
  return partslen
