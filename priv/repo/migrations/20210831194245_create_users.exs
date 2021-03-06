defmodule UserStuffsServer.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :last_name, :string
      add :email, :string
      add :password, :string
      add :status, :boolean, default: false, null: false
      timestamps()

    end

  end

end
