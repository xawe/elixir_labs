defmodule SpawnProcess do
    def start(qtd) do
        
        process(qtd)
    end

    def process(qtd) do
        pid = spawn(Example, :listen,[])
        send pid, {:sum, [qtd, 33]}
        if qtd > 0 do
            process(qtd - 1)
        end
    end
end