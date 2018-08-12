require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Birthday", with: @student.birthday
    fill_in "Dm", with: @student.dm
    fill_in "Email", with: @student.email
    fill_in "Family Name", with: @student.family_name
    fill_in "First Name", with: @student.first_name
    fill_in "Password Digest", with: @student.password_digest
    fill_in "Phone", with: @student.phone
    fill_in "School Course", with: @student.school_course
    fill_in "School Name", with: @student.school_name
    fill_in "School Year", with: @student.school_year
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @student.birthday
    fill_in "Dm", with: @student.dm
    fill_in "Email", with: @student.email
    fill_in "Family Name", with: @student.family_name
    fill_in "First Name", with: @student.first_name
    fill_in "Password Digest", with: @student.password_digest
    fill_in "Phone", with: @student.phone
    fill_in "School Course", with: @student.school_course
    fill_in "School Name", with: @student.school_name
    fill_in "School Year", with: @student.school_year
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
