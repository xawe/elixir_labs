defmodule Starter do

    def start_link(state) do
        options = [
            name: SimpleQueue.Supervisor,
            strategy: :one_for_one
        ]        

        DynamicSupervisor.start_link(options)
        {:ok, pid} = DynamicSupervisor.start_child(SimpleQueue.Supervisor, SimpleQueue)
    end

    def hello do
        IO.puts "hello"
    end
end