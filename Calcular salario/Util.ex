defmodule Util do
  @moduledoc """
Módulo con funciones que se reutilizan
- autor: Nelson Gonzalez
- fecha: 19/o8/2025
- licencia: GNU GPL v3
"""
  def mostrar_mensaje(mensaje) do
  System.cmd("java",["-cp", ".", "Ventana", mensaje])
  end
  def ingresar_texto(mensaje) do
    mensaje
    |> IO.gets()
    |> String.trim()
  end

  def ingresar(mensaje, :texto) do
    case System.cmd("java", ["-cp", ".", "Mensaje","input", mensaje]) do
    {output, 0} ->
      IO.puts("Texto ingresado correctamente.")
      IO.puts("Entrada: #{output}")
      String.trim(output) # Retorna la entrada sin espacios extra
    {error, code} ->
      IO.puts("Error al ingresar el texto. Código: #{code}")
      IO.puts("Detalles: #{error}")
      nil
    end
  end

  def ingresar(mensaje, :formulario)do
    case System.cmd("java", ["-cp", ".", "Formulario","input", mensaje]) do
      {output, 0} ->
        IO.puts("Texto ingresado correctamente.")
        IO.puts("Entrada: #{output}")
        String.trim(output) # Retorna la entrada sin espacios extra
      {error, code} ->
        IO.puts("Error al ingresar el texto. Código: #{code}")
        IO.puts("Detalles: #{error}")
        nil
      end
    end
end
