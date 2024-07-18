
from pathlib import Path

fn main() raises:
  var total = 0
  var max_counts = Dict[String, Int]()
  max_counts["red"] = 12
  max_counts["green"] = 13
  max_counts["blue"] = 14

  for line in Path("day02/data.txt").read_text().splitlines():

    var valid_game = True
    var game_str = line[].split(": ")
    var game_id = int(game_str[0][5:])

    for sample in game_str[1].split("; "):

      var cube_counts = sample[].split(", ")
      for cube_count_str in cube_counts:
        var cube_count_info = cube_count_str[].split(" ")
        var count = int(cube_count_info[0])
        var color = cube_count_info[1]

        if count > max_counts[color]:
          valid_game = False

    if valid_game:
      total += game_id

  print("total = " + str(total))
