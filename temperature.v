module unitconverter

pub fn celsius_to_fahrenheit(c f64) f64 {
  return (c * 9/5) + 32
}

pub fn celsius_to_kelvin(c f64) f64 {
  return c + 273.15
}

pub fn fahrenheit_to_celsius(f f64) f64 {
  return (f - 32) * 5/9
}

pub fn fahrenheit_to_kelvin(f f64) f64 {
  return fahrenheit_to_celsius(f) + 273.15
}

pub fn kelvin_to_celsius(k f64) f64 {
  return k - 273.15
}

pub fn kelvin_to_farenheit(k f64) f64 {
  return kelvin_to_celsius(k) * 9/5 + 32
}
