require 'spec_helper'

describe "Students Integration" do
  context "new" do

    before :each do
      visit new_student_registration
      fill_in "Full name", with: 'Tester McTest'
      fill_in "Email", with: 'tester@test.com'
    end

    it "should tell our users about the required flavor field" do
      click_link_or_button "Create Student"
      page.should have_content "Favorite ice cream flavor must be filled in!!!"
    end

    it "should allow us to specify a course" do
      course_count = Course.count
      fill_in "Age", with: 30
      fill_in "Favorite ice cream flavor", with: "BubbleGum"
      fill_in "Title", with: "Cool Test Course"
      click_button "Create Student"
      Course.count.should eq course_count+1
    end


    it "should allow us to pick a course for a student" do
      student = Student.create(email: "alicebob@example.com", age: 30, favorite_ice_cream_flavor: 'vanilla', full_name: 'Tester')
      course = Course.create title: 'Test Course'
      visit edit_student_path(student)
      select('Test Course', from: 'student_course_ids')
      click_button "Update Student"
      student.reload.courses.should include course
    end

  end
end
