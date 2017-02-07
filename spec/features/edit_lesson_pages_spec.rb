require 'rails_helper'

describe "the edit a lesson process" do
  it "edits a lesson" do
    lesson = Lesson.create(:name => "Dinosaurs", :content => "Rawr")
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Name', :with => "Minosaur"
    click_on 'Update Lesson'
    expect(page).to have_content 'Minosaur'
  end

  it "gives an error when no name or content is entered" do
    lesson = Lesson.create(:name => "Dinosaurs", :content => "Rawr")
    visit lesson_path(lesson)
    click_on 'Edit'
    fill_in 'Name', :with => ''
    fill_in 'Content', :with => ''
    click_button 'Update Lesson'
    expect(page).to have_content "Edit Lesson Please Fix your mistakes you dummy Name can't be blank Content can't be blank Name Content"
  end
end
