defmodule CurrentTime do
  @moduledoc """
  CurrentTime returns the current time in ISO 8601 format.
  """

  @doc """
  Current time.

  ## Examples

      iex> CurrentTime.get
      "2017-11-18T16:33:00.699944+00:00"

  """
  def get do
    Timex.format!(Timex.now, "{ISO:Extended}")
  end
end
