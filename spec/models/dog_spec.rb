require 'spec_helper'

describe Dog do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:name).when(*blanks) }
  it { should have_valid(:name).when('Spot') }
  it { should have_many(:owners).through(:dog_owners) }

end
