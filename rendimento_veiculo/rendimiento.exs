defmodule EntradaEnteros do

  def main do

    nombre_conductor = "Ingrese el nombre del conductor:"
    |> Util.ingresar(:texto)


    distancia_recorrida = "Ingrese la distancia recorida en kilometros: "
    |> Util.ingresar(:real)

    consumo_gasolina = "Ingrese la cantidad de gasolina consumido en litros: "
    |> Util.ingresar(:real)

    rendimiento_veiculo = calcular_rendimento(distancia_recorrida, consumo_gasolina)

    generar_mensaje(nombre_conductor, rendimiento_veiculo)
    |> Util.mostrar_mensaje()
  end

  defp calcular_rendimento(distancia, consumo) do
    distancia/consumo
  end


  defp generar_mensaje(nombre, rendimento) do
    rendimento = rendimento
    |> Float.round(1)
    |> Float.to_string(decimals: 2)

    "El rendimento del veiculo de #{nombre} es de #{rendimento}"
  end
end

EntradaEnteros.main()
