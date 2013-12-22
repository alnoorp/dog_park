require 'spec_helper'

describe Owner do
  let(:blanks) { ['', nil] }

  it { should_not have_valid(:first_name).when(*blanks) }
  it { should_not have_valid(:first_name).when(123) }
  it { should_not have_valid(:first_name).when('123abc') }
  it { should have_valid(:first_name).when('Henry') }

  it { should_not have_valid(:last_name).when(*blanks) }
  it { should_not have_valid(:last_name).when(123) }
  it { should_not have_valid(:last_name).when('123abc') }
  it { should have_valid(:last_name).when('Smith') }

  it { should_not have_valid(:email).when(*blanks) }
  it { should_not have_valid(:email).when('123') }
  it { should_not have_valid(:email).when('hello@') }
  it { should_not have_valid(:email).when('.com') }
  it { should_not have_valid(:email).when('hello.com') }
  it { should have_valid(:email).when('henry@smith.com') }

  it { should have_many(:dogs).through(:dog_owners) }

end
