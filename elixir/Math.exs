defmodule Math do

  defmodule Factorielle do

    def factorielle(n) when n==1 do
      1
    end

    def factorielle(n) do
      n * factorielle(n-1)
    end
  end

  defmodule Puissance do
    def puissance(a,n) when n==0 do
      1
    end

    def puissance(a,n) do
      a * puissance(a,n-1)
    end
    
  end


end
