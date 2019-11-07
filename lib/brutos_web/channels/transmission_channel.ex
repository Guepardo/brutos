defmodule BrutosWeb.TransmissionChannel do
  use BrutosWeb, :channel

  alias Brutos.{Repo, Transmission}
  alias Brutos.Query.Transmission.Find, as: TrasmissionFinders

  require Logger 

  def join("transmission:" <> ref_id, payload, socket) do
    if authorized?(ref_id) do
      {:ok, socket}
    else
      Logger.warn "This chat does not exists"
      {:error, %{reason: "unauthorized"}}
    end
  end

  def handle_in("message:new", payload, socket) do 
    broadcast socket, "message:new", payload
    {:noreply, socket}
  end

  def handle_in("telemetry", payload, socket) do
    # Do some awsome telemetry here. 
    {:noreply, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(ref_id) do
    ref_id
      |> TrasmissionFinders.find_by_id
      |> Repo.exists?
  end
end
