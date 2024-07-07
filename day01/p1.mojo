from pathlib import Path

fn main() raises:
  var total = 0

  for line in Path("day01/data.txt").read_text().splitlines():
    var first = Optional[String]()
    var last = Optional[String]()

    for i in range(len(line[])):
        var char = line[][i]

        if char in "0123456789":
          if not first:
            first = Optional(char)
            last = Optional(char)
          else:
            last = Optional(char)

    if first and last:
      var value = int(first.value()[] + last.value()[])
      total += value
    else:
      raise Error("Invalid line")

  print("total = " + str(total))

