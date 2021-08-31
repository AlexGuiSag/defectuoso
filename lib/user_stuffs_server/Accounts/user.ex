defmodule UserStuffsServer.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :email, :string
    field :last_name, :string
    field :name, :string
    field :password, :string
    field :status, :boolean, default: false
    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :last_name, :email, :password, :status])
    |> validate_required([:name, :last_name, :email, :password, :status])
  end

end
