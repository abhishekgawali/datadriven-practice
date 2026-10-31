def merge_holds(holds):
  by_card = {}
  result = {}

  for hold in holds:
    by_card.setdefault(hold["card"], []).append(
      (hold["start"], hold["end"])
    )

  # Merge intervals for each card
  for card, windows in by_card.items():
    windows.sort(key=lambda x: x[0])

    merged = []

    for start, end in windows:
      if merged and start <= merged[-1][1]:
        merged[-1][1] = max(merged[-1][1], end)
      else:
        merged.append([start, end])

    result[card] = merged

  return result
