User.delete_all
Level.delete_all

User.create!([
  {username: "test", level: 1, point: 0}
  ])

Level.create!([
  {level: 1, point: 5000, time: 600},
  {level: 2, point: 5500, time: 600},
  {level: 3, point: 6000, time: 600},
  {level: 4, point: 6500, time: 600},
  {level: 5, point: 7000, time: 600},
  {level: 6, point: 7500, time: 600},
  {level: 7, point: 8000, time: 600},
  {level: 8, point: 8500, time: 600},
  {level: 9, point: 9000, time: 600},
  {level: 10, point: 9500, time: 600},
  {level: 11, point: 10000, time: 570},
  {level: 12, point: 11000, time: 570},
  {level: 13, point: 12000, time: 570},
  {level: 14, point: 13000, time: 570},
  {level: 15, point: 14000, time: 570},
  {level: 16, point: 15000, time: 570},
  {level: 17, point: 16000, time: 570},
  {level: 18, point: 17000, time: 570},
  {level: 19, point: 18000, time: 570},
  {level: 20, point: 19000, time: 570},
  ])
