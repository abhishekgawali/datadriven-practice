def dice_roll_scoring(dice: list[int]):
  counts = {}
  for d in dice:
    if d not in counts:
      counts[d] = 0
    counts[d] += 1
  freq = sorted(counts.values(), reverse=True)
  dice_sum = 0
  for d in dice:
    dice_sum += d
  if freq == [5]:
    return 50
  if freq == [4, 1]:
    return 40
  if freq == [3, 2]:
    return 25
  return dice_sum
    
