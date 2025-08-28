defmodule EntradaEnteros do

  def main do

    nombre_usuario = "Ingrese el nombre del usuario:"
    |> Util.ingresar(:texto)


    temperatura_celcius = "Ingrese la temperatura en Celcius: "
    |> Util.ingresar(:real)


    temperatura_fahrenheit = calcular_fahrenheit(temperatura_celcius)
    temperatura_kelvin = calcular_kelvin(temperatura_celcius)

    generar_mensaje(nombre_usuario, temperatura_celcius, temperatura_fahrenheit, temperatura_kelvin)
    |> Util.mostrar_mensaje()
  end

  defp calcular_fahrenheit(celcius) do
    fahrenheit = (celcius * 9/5) +32
  end

  defp calcular_kelvin(celcius) do
    kelvin = celcius + 273.15
  end

  defp generar_mensaje(nombre, celcius, fahrenheit, kelvin) do
    fahrenheit = fahrenheit
    |> Float.round(1)
    |> Float.to_string(decimals: 2)

    kelvin = kelvin
    |> Float.round(1)
    |> Float.to_string(decimals: 2)

    "#{nombre}, los #{celcius}° Celcius que ingresaste son equivalentes a: \n #{fahrenheit}° Fahrenheit\n #{kelvin}° Kelvin"
  end
end

EntradaEnteros.main()
