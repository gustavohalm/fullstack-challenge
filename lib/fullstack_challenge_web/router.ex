defmodule FullstackChallengeWeb.Router do
  use FullstackChallengeWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]

  end

  scope "/", FullstackChallengeWeb do
    pipe_through :browser
  
    get "/", PageController, :index
  end

   scope "/api", FullstackChallengeWeb do
     pipe_through :api
     resources "/users", UserController
  
    end
end
