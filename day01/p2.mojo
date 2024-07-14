from pathlib import Path

fn get_number(line: String) raises -> Int:
  var names = List('zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine')
  var digits = "0123456789"

  var first: Optional[String] = None
  var last: Optional[String] = None

  for i in range(len(line)):
    var char = line[i]
    var number: Optional[String] = None
    if char in digits:
      number = char
    else:
      for j in range(len(names)):
        if line[i:].startswith(names[j]):
          number = str(j)
          break

    if number:
      if not first:
        first = number
      last = number

  if first and last:
    return int(first.value()[] + last.value()[])
  else:
    raise Error('Invalid line')


fn main() raises:

  var total = 0

  for line_ref in Path('day01/data.txt').read_text().splitlines():
    var value = get_number(line_ref[])
    total += value
    

  print('total = ' + str(total))

