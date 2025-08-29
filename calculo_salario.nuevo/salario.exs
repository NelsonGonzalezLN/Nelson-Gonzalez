defmodule Salarios do

  def main do

    nombre_usuario = "Ingrese el nombre del usuario:"
    |> Util.ingresar(:texto)


    salario_base = "Ingrese el salario base: "
    |> Util.ingresar(:real)

    horas_extra = "Ingrese numero de horas extra trabajadas: "
    |> Util.ingresar(:entero)


    extra = calcular_extra(salario_base, horas_extra)
    salario_neto = calcular_salario_neto(salario_base, extra)

    generar_mensaje(nombre_usuario, salario_neto)
    |> Util.mostrar_mensaje()
  end

  defp calcular_extra(salario, horas) do
    salario * horas * 0.5
  end

  defp calcular_salario_neto(salario, extra) do
    salario + extra
  end

  defp generar_mensaje(nombre, salario) do
    salario = salario
    |> Float.round(1)
    |> Float.to_string(decimals: 2)

    "El salario total de #{nombre}, es de: $ #{salario}"
  end
end

Salarios.main()
