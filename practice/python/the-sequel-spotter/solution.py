def find_sequels(titles: list[str]) -> list[str]:
  
  result = []

  for title in titles:
    for other in titles:
      if (
        title != other
        and len(other) < len(title)
        and title.startswith(other)
      ):
        result.append(title)
        break

  return result
  
    
