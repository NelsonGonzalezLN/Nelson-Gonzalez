defmodule Mensaje do
  def main do
    "Ingrese el texto"
    |> Util.ingresar(:texto)
    |> generar_mensaje()
    |> to_string()
    |> Util.mostrar_mensaje()
  end

  defp generar_mensaje(mensaje) do
    String.length(mensaje)
  end
end

Mensaje.main()
