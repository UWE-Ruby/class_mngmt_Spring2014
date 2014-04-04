require 'spec_helper'

describe "students/show" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :full_name => "Full Name",
      :age => 1,
      :bio => "MyText",
      :profession => "Profession",
      :favorite_ice_cream_flavor => "Favorite Ice Cream Flavor"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/Profession/)
    rendered.should match(/Favorite Ice Cream Flavor/)
  end
end
