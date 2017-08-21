require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  render_views

  before do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "#home" do
    before do
      get :home
    end

    it "should get response 200" do
      expect(response).to have_http_status(200)
    end

    it "should has right title" do
      expect(response.body).to have_tag('title',
        :text => "Home | #{@base_title}")
    end
  end

  describe "#help" do
    before do
      get :help
    end

    it "should get response 200" do
      expect(response).to have_http_status(200)
    end

    it "should has right title" do
      expect(response.body).to have_tag('title',
        :text => "Help | #{@base_title}")
    end
  end

  describe "#about" do
    before do
      get :about
    end

    it "should get response 200" do
      expect(response).to have_http_status(200)
    end

    it "should has right title" do
      expect(response.body).to have_tag('title',
        :text => "About | #{@base_title}")
    end
  end

  describe "#contact" do
    before do
      get :contact
    end

    it "should get response 200" do
      expect(response).to have_http_status(200)
    end

    it "should has right title" do
      expect(response.body).to have_tag('title',
        :text => "Contact | #{@base_title}")
    end
  end
end
