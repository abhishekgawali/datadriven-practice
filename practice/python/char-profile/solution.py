from collections import Counter
def char_freq(s):
  dictionary=Counter(s)








  return dict(sorted(dictionary.items() ,key=lambda x:x[0]))
