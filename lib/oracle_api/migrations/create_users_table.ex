defmodule OracleApi.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def up do
    create table :users do
      add :name, :string
      add :age, :integer
      add :email, :string
      add :password_hash, :string
      add :nickname, :string

      timestamps() #this create Updated and Created Columns
    end

    create unique_index(:users, [:email]) #only one user with email
    create unique_index(:users, [:nickname]) #only one user with that nickname
  end
end
