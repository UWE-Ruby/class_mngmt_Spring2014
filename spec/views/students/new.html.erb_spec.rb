require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :full_name => "MyString",
      :age => 1,
      :bio => "MyText",
      :profession => "MyString",
      :favorite_ice_cream_flavor => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_full_name[name=?]", "student[full_name]"
      assert_select "input#student_age[name=?]", "student[age]"
      assert_select "textarea#student_bio[name=?]", "student[bio]"
      assert_select "input#student_profession[name=?]", "student[profession]"
      assert_select "input#student_favorite_ice_cream_flavor[name=?]", "student[favorite_ice_cream_flavor]"
    end
  end
end
