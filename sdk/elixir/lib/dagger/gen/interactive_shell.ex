# This file generated by `mix dagger.gen`. Please DO NOT EDIT.
defmodule Dagger.InteractiveShell do
  @moduledoc "An interactive shell that clients can connect to."
  use Dagger.QueryBuilder
  @type t() :: %__MODULE__{}
  defstruct [:selection, :client]

  (
    @doc "A unique identifier for this InteractiveShell."
    @spec id(t()) :: {:ok, Dagger.InteractiveShellID.t()} | {:error, term()}
    def id(%__MODULE__{} = interactive_shell) do
      selection = select(interactive_shell.selection, "id")
      execute(selection, interactive_shell.client)
    end
  )

  (
    @doc "An http endpoint at which an interactive shell can be connected to over a websocket."
    @spec websocket_endpoint(t()) :: {:ok, Dagger.String.t()} | {:error, term()}
    def websocket_endpoint(%__MODULE__{} = interactive_shell) do
      selection = select(interactive_shell.selection, "websocketEndpoint")
      execute(selection, interactive_shell.client)
    end
  )
end
