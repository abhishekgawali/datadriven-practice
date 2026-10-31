from collections import defaultdict
def coalesce(primary: dict, defaults: dict) -> dict:
  
  results=dict()
  
  for pri in primary:
    
    if primary[pri] != None:
      results[pri]=primary[pri]
    
    elif primary[pri] ==None and pri in defaults.keys() and defaults[pri]!=None :
      results[pri]=defaults[pri]
      
    else:
      results[pri]=None
    
    

  return results
