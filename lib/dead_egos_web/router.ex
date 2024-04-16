defmodule DeadEgosWeb.Router do
  use DeadEgosWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {DeadEgosWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DeadEgosWeb do
    pipe_through :browser

    get "/", PageController, :home
    get "/mission", PageController, :mission
    get "/mission/only_for_non_profit", PageController, :only_for_non_profit

    get "/services", PageController, :services
    get "/services/custom_development", PageController, :custom_development
    get "/services/training_and_workshops", PageController, :training_and_workshops
    get "/services/tech_consultancy_services", PageController, :tech_consultancy_services
    get "/services/building_and_improving_websites", PageController, :building_and_improving_websites
    get "/services/opensource_projects", PageController, :opensource_projects
    get "/services/software_operational_costs_reduction", PageController, :software_operational_costs_reduction
    get "/services/ada_compliance_and_web_standards", PageController, :ada_compliance_and_web_standards
    get "/services/security_enhancements", PageController, :security_enhancements
  end

  # Other scopes may use custom stacks.
  # scope "/api", DeadEgosWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:dead_egos, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: DeadEgosWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
