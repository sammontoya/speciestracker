require 'rails_helper'

RSpec.describe "sightings/index", type: :view do
  before(:each) do
    assign(:sightings, [
      Sighting.create!(
        :date => "Date",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :species_id => 1
      ),
      Sighting.create!(
        :date => "Date",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :species_id => 1
      )
    ])
  end

  it "renders a list of sightings" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
