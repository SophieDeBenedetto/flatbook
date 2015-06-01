require "rails_helper"

RSpec.describe Graduate, type: :model do
  it "should have a factory" do
    expect(FactoryGirl.build(:graduate)).to be_valid
  end

  context "validations" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:cohort) }
    it { should validate_presence_of(:current_job) }
    it { should validate_presence_of(:bio) }
    it { should validate_presence_of(:news) }
    it { should validate_presence_of(:website) }
    it { should validate_presence_of(:picture) }
  end
end
