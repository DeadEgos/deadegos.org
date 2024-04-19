defmodule DeadEgosWeb.PageController do
  use DeadEgosWeb, :controller

  def home(conn, _params) do
    render(conn, :home, page_title: "Home |", page_description: "asdf")
  end

  def custom_development(conn, _params) do
    render(conn, :custom_development, page_title: "Custom Development |", page_description: "")
  end

  def training_and_workshops(conn, _params) do
    render(conn, :training_and_workshops, page_title: "Training / Workshops |", page_description: "")
  end

  def tech_consultancy_services(conn, _params) do
    render(conn, :tech_consultancy_services, page_title: "Tech Consultancy Services |", page_description: "")
  end

  def building_and_improving_websites(conn, _params) do
    render(conn, :building_and_improving_websites, page_title: "Building and Improving Websites |", page_description: "")
  end

  def opensource_projects(conn, _params) do
    render(conn, :opensource_projects, page_title: "Opensource Projects |", page_description: "")
  end

  def software_operational_costs_reduction(conn, _params) do
    render(conn, :software_operational_costs_reduction, page_title: "Software Operational Costs Reduction |", page_description: "")
  end

  def ada_compliance_and_web_standards(conn, _params) do
    render(conn, :ada_compliance_and_web_standards, page_title: "ADA Compliance and Web Standards |", page_description: "")
  end

  def security_enhancements(conn, _params) do
    render(conn, :security_enhancements, page_title: "Security Enhancements |", page_description: "")
  end

  def services(conn, _params) do
    render(conn, :services, page_title: "Services |", page_description: "")
  end

  def mission(conn, _params) do
    render(conn, :mission, page_title: "Mission |", page_description: "")
  end

  def donations(conn, _params) do
    render(conn, :donations, page_title: "Donations |", page_description: "")
  end

  def privacy(conn, _params) do
    render(conn, :privacy, page_title: "Privacy |", page_description: "")
  end

  def terms_of_service(conn, _params) do
    render(conn, :terms_of_service, page_title: "Terms of Service |", page_description: "")
  end

  def contact(conn, _params) do
    render(conn, :contact, page_title: "Contact Us |", page_description: "")
  end

  def about(conn, _params) do
    render(conn, :about, page_title: "About |", page_description: "")
  end

  def fundrasing(conn, _params) do
    render(conn, :fundrasing, page_title: "Fundrasing |", page_description: "")
  end

  def documents(conn, _params) do
    render(conn, :documents, page_title: "Documents |", page_description: "")
  end

  def guides(conn, _params) do
    render(conn, :guides, page_title: "Guides |", page_description: "")
  end

  def jobs(conn, _params) do
    render(conn, :jobs, page_title: "Jobs |", page_description: "")
  end

  def volunteer(conn, _params) do
    render(conn, :volunteer, page_title: "Volunteer |", page_description: "")
  end

  def affiliates(conn, _params) do
    render(conn, :affiliates, page_title: "affiliates |", page_description: "")
  end
end
