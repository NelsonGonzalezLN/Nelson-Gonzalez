defmodule Mensaje do
  def main do
    "Ingrese el texto"
    |> Util.ingresar(:texto)
    |> generar_mensaje()
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(mensaje) do
    String.upcase(mensaje)
  end
end

Mensaje.main()
