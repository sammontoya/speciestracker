require 'rails_helper'

RSpec.describe "sightings/show", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!(
      :date => "Date",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :species_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/1/)
  end
end
