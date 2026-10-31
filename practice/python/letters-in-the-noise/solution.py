def character_occurrence_map(s):
  counts = {}
  for char in s:
    if char.isalpha():
      lower_char = char.lower()
      counts[lower_char] = counts.get(lower_char, 0) + 1
  return [[key, counts[key]] for key in sorted(counts)]
