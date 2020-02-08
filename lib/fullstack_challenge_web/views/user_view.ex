defmodule FullstackChallengeWeb.UserView do
  use FullstackChallengeWeb, :view
  alias FullstackChallengeWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      name: user.name,
      username: user.username,
      password: user.password,
      credits: user.credits}
  end
end
