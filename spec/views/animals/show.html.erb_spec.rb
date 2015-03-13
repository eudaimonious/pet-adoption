require 'rails_helper'

RSpec.describe "animals/show", :type => :view do
  before(:each) do
    @animal = assign(:animal, Animal.create!(
      :name => "Name",
      :age => "Age",
      :breed => "Breed",
      :color => "Color"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Age/)
    expect(rendered).to match(/Breed/)
    expect(rendered).to match(/Color/)
  end
end
