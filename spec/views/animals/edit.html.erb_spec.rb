require 'rails_helper'

RSpec.describe "animals/edit", :type => :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :name => "MyString",
      :age => "MyString",
      :breed => "MyString",
      :color => "MyString"
    ))
  end

  it "renders the edit animal form" do
    render

    assert_select "form[action=?][method=?]", animal_path(@animal), "post" do

      assert_select "input#animal_name[name=?]", "animal[name]"

      assert_select "input#animal_age[name=?]", "animal[age]"

      assert_select "input#animal_breed[name=?]", "animal[breed]"

      assert_select "input#animal_color[name=?]", "animal[color]"
    end
  end
end
