defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  # @nucleotides
  # |> Enum.map(fn nucleotide -> {nucleotide, count(strand, nucleotide)} end)
  # |> Enum.into(%{})

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer

  def count(strand, nucleotide) do
    count(strand,nucleotide,0)
  end

  def count([nucleotide|rest],nucleotide, acc) do
      count(rest,nucleotide,acc+1)
  end

  def count([], nucleotide, acc) do
    acc
  end

  def count([head|rest], nucleotide, acc) do
    count(rest,nucleotide,acc)
  end











  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do
    %{ ?A=> count(strand,?A), ?T => count(strand,?T), ?C => count(strand,?C), ?G => count(strand,?G)}
  end
end
