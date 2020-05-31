defmodule Example do
    use GenServer

    

    def init(state), do: {:ok, state}

    def start_link(state \\ []) do
        GenServer.start_link(__MODULE__, state, name: __MODULE__)
    end
    @moduledoc """
    Modulo simples para teste de processamento assincrono.
    """
  
    @doc """
    função de soma de dois números
  
    Para rodar usando o terminal
    iex -S mix
    Example.add(2, 5)
  
    Para rodar usando o spawn
    spawn(Example, :add, [2,5])
  
    """
    def add(a, b)do
      IO.puts(a + b)
    end
  
    @doc """
    Função para recebimento de mensagens usando recursividade
    Ao receber a mensagem hello, a função escreve o texto World
  
  
    para guardar o pid da função
    pid = spawn(Example, :listen, [])
  
    para enviar a mensagem
  
    send pid, {:ok, "hello"}
    """
    def listen do
      receive do
        {:ok, "hello"} -> IO.puts("World")
        {:ok} -> IO.puts "Não houve nenhuma informação no recebimento"
        {:sum, [a, b]} ->
          :timer.sleep(2000)
          IO.puts("Somando os valores recebidos")
          :timer.sleep(2000)
          IO.puts(add(a, b))
          :timer.sleep(2000)
      end
      listen()
    end
  
  
  end
  
  