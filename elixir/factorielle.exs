defmodule Factorielle do
  def factorielle(n) when n==1 do
    1
  end

  def factorielle(n) do
    n * factorielle(n-1)
  end
end
