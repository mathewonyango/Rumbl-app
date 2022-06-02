defmodule RumblWeb.UserController do
  use RumblWeb, :controller
  alias Rumbl.Accounts

  @spec index(Plug.Conn.t(), any) :: Plug.Conn.t()
  def index(conn, _params) do
    u = Accounts.list_users()
    render(conn, "index.html",humans: u)
  end

    @spec show(Plug.Conn.t(), map) :: Plug.Conn.t()
    def show(conn, %{"id" => id}) do
      u=Accounts.get_user(id)
      render(conn, "show.html", user: u)
    end
  end
