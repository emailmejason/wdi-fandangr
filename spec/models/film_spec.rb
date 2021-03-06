require 'spec_helper'

describe Film do
  it "has many showings" do
    film = FactoryGirl.create(:film)
    showing = FactoryGirl.create(:showing, :film_id => film.id)

    expect(film.showings).to include(showing)
  end
end
