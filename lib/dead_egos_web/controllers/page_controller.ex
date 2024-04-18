defmodule DeadEgosWeb.PageController do
  use DeadEgosWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end

  def custom_development(conn, _params) do
    render(conn, :custom_development)
  end

  def training_and_workshops(conn, _params) do
    render(conn, :training_and_workshops)
  end

  def tech_consultancy_services(conn, _params) do
    render(conn, :tech_consultancy_services)
  end

  def building_and_improving_websites(conn, _params) do
    render(conn, :building_and_improving_websites)
  end

  def opensource_projects(conn, _params) do
    render(conn, :opensource_projects)
  end

  def software_operational_costs_reduction(conn, _params) do
    render(conn, :software_operational_costs_reduction)
  end

  def ada_compliance_and_web_standards(conn, _params) do
    render(conn, :ada_compliance_and_web_standards)
  end

  def security_enhancements(conn, _params) do
    render(conn, :security_enhancements)
  end

  def services(conn, _params) do
    render(conn, :services)
  end

  def mission(conn, _params) do
    render(conn, :mission)
  end

  def donations(conn, _params) do
    render(conn, :donations)
  end

  def privacy(conn, _params) do
    render(conn, :privacy)
  end

  def terms_of_service(conn, _params) do
    render(conn, :terms_of_service)
  end

  def contact(conn, _params) do
    render(conn, :about)
  end

  def about(conn, _params) do
    render(conn, :about)
  end

  def fundrasing(conn, _params) do
    render(conn, :fundrasing)
  end

  def documents(conn, _params) do
    render(conn, :documents)
  end

  def guides(conn, _params) do
    render(conn, :guides)
  end

  def jobs(conn, _params) do
    render(conn, :jobs)
  end

  def volunteer(conn, _params) do
    render(conn, :volunteer)
  end

  def affilenats(conn, _params) do
    render(conn, :affilenats)
  end
end
