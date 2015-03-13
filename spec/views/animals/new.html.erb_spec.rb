require 'rails_helper'

RSpec.describe "animals/new", :type => :view do
  before(:each) do
    assign(:animal, Animal.new(
      :name => "MyString",
      :age => "MyString",
      :breed => "MyString",
      :color => "MyString"
    ))
  end

  it "renders new animal form" do
    render

    assert_select "form[action=?][method=?]", animals_path, "post" do

      assert_select "input#animal_name[name=?]", "animal[name]"

      assert_select "input#animal_age[name=?]", "animal[age]"

      assert_select "input#animal_breed[name=?]", "animal[breed]"

      assert_select "input#animal_color[name=?]", "animal[color]"
    end
  end
end
