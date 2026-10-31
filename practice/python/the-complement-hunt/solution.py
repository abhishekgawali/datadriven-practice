def earliest_partners(amounts, target):
  res=[-1]*len(amounts)
  map_dict=dict()
  
  for val in range(len(amounts)):
    complement= target-amounts[val]
    
    if complement in map_dict:
      res[val]=map_dict[complement]
    
    if amounts[val] not in map_dict:
      map_dict[amounts[val]]=val
    
  return res
