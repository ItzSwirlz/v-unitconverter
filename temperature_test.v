module unitconverter

fn test_celsius_to_farenheit() {
  // -273.15 C = ~-459.67 F, absolute zero
  mut x := celsius_to_fahrenheit(-273.15)
  assert x == -459.66999999999996

  // 0 C = 32 F, freezing point
  x = celsius_to_fahrenheit(0)
  assert x == 32

  // 22.2 C = 71.96, close enough to room temperature of 72F
  x = celsius_to_fahrenheit(22.2)
  assert x == 71.96

  // 100 C = 212 F, boiling point
  x = celsius_to_fahrenheit(100)
  assert x == 212
}

fn test_celsius_to_kelvin() {
  // -273.15 C = 0 K, absolute zero
  mut x := celsius_to_kelvin(-273.15)
  assert x == 0

  // 0 C = 273.15 K, freezing point
  x = celsius_to_kelvin(0)
  assert x == 273.15

  // 22.2 C = ~295.35, close enough to room temperature of 72F
  x = celsius_to_kelvin(22.2)
  assert x == 295.34999999999997

  // 100 C = 373.15 K, boiling point
  x = celsius_to_kelvin(100)
  assert x == 373.15
}

fn test_fahrenheit_to_celsius() {
  // ~-459.67 F = -273.15 C, absolute zero
  mut x := fahrenheit_to_celsius(-459.66999999999996  )
  assert x == -273.15

  // 32 F = 0 C, freezing point
  x = fahrenheit_to_celsius(32)
  assert x == 0

  // 71.96 F = ~22.2 C, close enough to room temperature of 72F
  x = fahrenheit_to_celsius(71.96)
  assert x == 22.199999999999996

  // 212 F = 100 C, boiling point
  x = fahrenheit_to_celsius(212)
  assert x == 100
}

fn test_fahrenheit_to_kelvin() {
  // -459.67 F = 0 K, absolute zero
  mut x := fahrenheit_to_kelvin(-459.67)
  assert x == 0

  // 32 F = 273.15 K, freezing point
  x = fahrenheit_to_kelvin(32)
  assert x == 273.15

  // 72 F = ~295.372 K, room temperature
  x = fahrenheit_to_kelvin(72)
  assert x == 295.3722222222222

  // 100 F = ~310.928 K, boiling point
  x = fahrenheit_to_kelvin(100)
  assert x == 310.92777777777775
}

fn test_kelvin_to_celsius() {
  // 0 K = -273.15 C, absolute zero
  mut x := kelvin_to_celsius(0)
  assert x == -273.15
  
  // 273.15 K = 0 C, freezing point
  x = kelvin_to_celsius(273.15)
  assert x == 0
  
  // ~295.35 K = ~22.2 C, close enough to room temperature of 72F
  x = kelvin_to_celsius(295.34999999999997)
  assert x == 22.19999999999999
  
  // 373.15 K = 100 C, boiling point
  x = kelvin_to_celsius(373.15)
  assert x == 100
}


fn test_kelvin_to_fahrenheit() {
  // 0 K = -459.67 F, absolute zero
  mut x := kelvin_to_farenheit(0)
  assert x == -459.66999999999996
  
  // 273.15 K = 32 F, freezing point
  x = kelvin_to_farenheit(273.15)
  assert x == 32
  
  // ~295.372 K = 72 C, room temperature
  x = kelvin_to_farenheit(295.372)
  assert x == 71.99960000000007
  
  // 373.15 K = 212 F, boiling point
  x = kelvin_to_farenheit(373.15)
  assert x == 212
}
