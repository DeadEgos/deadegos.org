defmodule DeadEgosWeb.PageController do
  use DeadEgosWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def custom_development(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :custom_development, layout: false)
  end

  def training_and_workshops(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :training_and_workshops, layout: false)
  end

  def tech_consultancy_services(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :tech_consultancy_services, layout: false)
  end

  def building_and_improving_websites(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :building_and_improving_websites, layout: false)
  end

  def opensource_projects(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :opensource_projects, layout: false)
  end

  def software_operational_costs_reduction(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :software_operational_costs_reduction, layout: false)
  end

  def ada_compliance_and_web_standards(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :ada_compliance_and_web_standards, layout: false)
  end

  def security_enhancements(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :security_enhancements, layout: false)
  end
end
