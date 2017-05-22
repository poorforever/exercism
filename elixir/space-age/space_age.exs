defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    e = 31557600
    case planet do
      :earth -> seconds / e
      :mercury -> seconds / (e * 0.2408467)
      :venus -> seconds / (e*0.61519726)
      :mars -> seconds / (e*1.8808158)
      :jupiter -> seconds / (e*11.862615)
      :saturn -> seconds / (e*29.447498)
      :uranus -> seconds / (e*84.016846)
      :neptune -> seconds / (e*164.79132)
    end
  end
end
