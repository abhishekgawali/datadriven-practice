def filter_records(records, criteria):
  result = []
  for record in records:
    matches = True
    for key in criteria:
      if record.get(key) != criteria[key]:
        matches = False
        break
    if matches:
      result.append(record)
  return result
 
