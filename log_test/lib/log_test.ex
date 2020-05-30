require Logger



defmodule LogTest do
  @moduledoc """
  Documentation for LogTest.
  """

  @doc """
  Hello world.

  ## Examples

      iex> LogTest.hello()
      :world

  """
  def hello do
    :world
  end

  a =  10

  Logger.debug a

  defp log do
    Logger.debug "Iniciando a aplicação"
  end

end

