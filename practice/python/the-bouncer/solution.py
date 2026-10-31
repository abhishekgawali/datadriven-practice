def door_checks(ops: list[list]) -> list:
  access_list = {}
  result = []

  for action, person in ops:
    person = person.lower()

    if action == "grant":
      access_list[person] = True

    elif action == "revoke":
      access_list[person] = False

    elif action == "check":
      result.append(access_list.get(person, False))

  return result
