defmodule Rumbl.Accounts do
  @moduledoc """
  The Accounts context.
  """
  alias Rumbl.Accounts.User
  def list_users do
    [
      %User{id: "1",name: "Mathews",username: "Mathews_Onyango"},
      %User{id: "2",name: "George",username: "George_Otieno"},
      %User{id: "3",name: "Michael",username: "Michael_Ouma"},
      %User{id: "4",name: "Leonard",username: "Leonard_Owuor"}
    ]
  end
  @spec get_user(any) :: any
  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key,val} -> Map.get(map, key) == val end)
    end)
  end
end
