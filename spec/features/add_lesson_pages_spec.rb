require 'rails_helper'

describe "the add a lesson process" do
  it "adds a new lesson" do
    visit lessons_path
    click_link 'New Lesson'
    fill_in 'Name', :with => 'JavaScript'
    fill_in 'Content', :with => 'Learn JavaScript Dummy'
    click_on 'Create Lesson'
    expect(page).to have_content 'Lessons'
  end

  it "gives error when no name is entered" do
    visit new_lesson_path
    click_on 'Create Lesson'
    expect(page).to have_content "New Lesson Please Fix your mistakes you dummy Name can't be blank Content can't be blank Name Content"
  end
end
