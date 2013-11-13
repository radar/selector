require 'spec_helper'

feature "Addresses", :js => true do
  before do
    australia = Country.create!(:name => "Australia")
    australia.states.create!(:name => "Victoria")

    america = Country.create!(:name => "United States of America")
    america.states.create!(:name => "California")
  end

  it "automatically changes states when countries change" do
    options = lambda { all('#address_state_id option').map { |o| o.text } }
    visit '/'
    click_link 'New Address'
    options.call.should == ["Victoria"]
    select "United States of America", :from => "Country"
    sleep(0.2) # patience
    options.call.should == ["California"]
  end
end