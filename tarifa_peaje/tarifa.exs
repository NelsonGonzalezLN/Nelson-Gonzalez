defmodule Tarifa do

  def main do

    placa = "Ingrese la placa del veiculo: "
    |> Util.ingresar(:texto)


    tipo = "Ingrese el tipo del veiculo: "
    |> Util.ingresar(:texto)

    atomo_tipo = comprovar_tipo(tipo)

    toneladas = "Ingrese el peso del veiculo en toneladas: "
    |> Util.ingresar(:real)


    tarifa = calcular_tarifa(toneladas, atomo_tipo)

    datos = {placa, tipo, tarifa}
    generar_mensaje(datos)
    |> Util.mostrar_mensaje()
  end

  defp comprovar_tipo(tipo) do
    tipo = to_string(tipo)
    tipo = String.downcase(tipo)

    case tipo do
    "carro" ->
      tipo = :carro
    "moto" ->
      tipo = :moto
    "camión" ->
      tipo = :camion
    _ ->
    "No se a ingresado un tipo valido, intente de nuevo:"
    |> Util.ingresar(:texto)
    |> comprovar_tipo()
    end
  end


  defp calcular_tarifa(toneladas, :carro) do
    10000
  end

  defp calcular_tarifa(toneladas, :moto) do
    5000
  end

  defp calcular_tarifa(toneladas, :camion) do
    20000 + 2000 * toneladas
  end

  defp generar_mensaje(datos) do
    "Veiculo: #{elem(datos, 0)} (#{elem(datos, 1)}) debe pagar $ #{elem(datos,2)}"
  end
end

Tarifa.main()
