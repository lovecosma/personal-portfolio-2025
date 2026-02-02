require 'rails_helper'

RSpec.describe TechType, type: :model do
  describe 'associations' do
    it { should have_many(:technologies) }
  end

  describe 'validations' do
    subject { build(:tech_type) }

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:icon_filename) }
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:icon_filename).of_type(:string) }
    it { should have_db_column(:rank).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end
end
