require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "works! (now write some real specs)" do
      get projects_path
      expect(response.status).to be(200)
    end
  end
end
