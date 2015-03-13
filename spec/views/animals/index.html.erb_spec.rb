require 'rails_helper'

RSpec.describe "animals/index", :type => :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :name => "Name",
        :age => "Age",
        :breed => "Breed",
        :color => "Color"
      ),
      Animal.create!(
        :name => "Name",
        :age => "Age",
        :breed => "Breed",
        :color => "Color"
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
  end
end
