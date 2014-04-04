require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :full_name => "Full Name",
        :age => 1,
        :bio => "MyText",
        :profession => "Profession",
        :favorite_ice_cream_flavor => "Favorite Ice Cream Flavor"
      ),
      stub_model(Student,
        :full_name => "Full Name",
        :age => 1,
        :bio => "MyText",
        :profession => "Profession",
        :favorite_ice_cream_flavor => "Favorite Ice Cream Flavor"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Profession".to_s, :count => 2
    assert_select "tr>td", :text => "Favorite Ice Cream Flavor".to_s, :count => 2
  end
end
