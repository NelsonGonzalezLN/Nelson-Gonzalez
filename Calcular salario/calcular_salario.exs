defmodule Mensaje do
  def main do
    "Ingrese el texto"
    |> Util.ingresar(:formulario)
    |> String.trim_leading("[")
    |> String.trim_trailing("]")
    |> String.split(", ")
    |> generar_mensaje()
    |> to_string()
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(datos) do
    buscar_horas_extra(Enum.at(datos, 1))
    |> calcular_salario(Enum.at(datos, 1), Enum.at(datos, 2))
    |> escribir_mensaje(Enum.at(datos, 0))
  end

  defp buscar_horas_extra(horas) do
    if String.to_integer(horas) > 160 do
      true
    else
      false
    end
  end

  defp calcular_salario(extra, horas, precio) do
    if extra do
      String.to_integer(horas) * String.to_integer(precio) * 1.4
    else
      String.to_integer(horas) * String.to_integer(precio)
    end
  end

  defp escribir_mensaje(salario, nombre) do
    "El salario neto de #{nombre} es de: #{salario}"
  end
end

Mensaje.main()
