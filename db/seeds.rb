australia = Country.create!(:name => "Australia")
australia.states.create!(:name => "Victoria")

america = Country.create!(:name => "United States of America")
america.states.create!(:name => "California")

nz = Country.create!(:name => "New Zealand")
nz.states.create!(:name => "Wellington")
