from pathlib import Path

fn main() raises:
  var total = 0

  for line in Path("day02/data.txt").read_text().splitlines():

    var game_str = line[].split(": ")
    var game_id = int(game_str[0][5:])
    print("game_id = " + str(game_id))

    var cubes_needed = Dict[String, Int]()
    cubes_needed["red"] = 0
    cubes_needed["green"] = 0
    cubes_needed["blue"] = 0

    for sample in game_str[1].split("; "):

      var cube_counts = sample[].split(", ")
      for cube_count_str in cube_counts:
        var cube_count_info = cube_count_str[].split(" ")
        var count = int(cube_count_info[0])
        var color = cube_count_info[1]

        cubes_needed[color] = max(cubes_needed[color], count)

    print("  num_red = " + str(cubes_needed["red"]) + ", num_green = " + str(cubes_needed["green"]) + ", num_blue = " + str(cubes_needed["blue"]))

    var power = 1
    for count in cubes_needed.values():
      power *= count[]

    print("  power = " + str(power))

    total += power

  print("total = " + str(total))

