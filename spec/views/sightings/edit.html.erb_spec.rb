require 'rails_helper'

RSpec.describe "sightings/edit", type: :view do
  before(:each) do
    @sighting = assign(:sighting, Sighting.create!(
      :date => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :species_id => 1
    ))
  end

  it "renders the edit sighting form" do
    render

    assert_select "form[action=?][method=?]", sighting_path(@sighting), "post" do

      assert_select "input#sighting_date[name=?]", "sighting[date]"

      assert_select "input#sighting_latitude[name=?]", "sighting[latitude]"

      assert_select "input#sighting_longitude[name=?]", "sighting[longitude]"

      assert_select "input#sighting_species_id[name=?]", "sighting[species_id]"
    end
  end
end
