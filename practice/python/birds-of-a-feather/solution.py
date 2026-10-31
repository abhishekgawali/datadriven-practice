def partition_by(records, key):
  
  results =dict()
  
  for record in records:
      results.setdefault(record[key],[]).append(record)








  return results
