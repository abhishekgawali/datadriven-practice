def activity_time_ledger(activities: list[dict], targets: list[str]) -> int:
  total=0
  
  for dict_in in activities:
    if dict_in["name"] in targets:
      total+=dict_in["minutes"]
      
  return total
    
   
    
    
    
