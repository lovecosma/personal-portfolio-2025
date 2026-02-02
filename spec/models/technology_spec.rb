require 'rails_helper'

RSpec.describe Technology, type: :model do
  describe 'associations' do
    it { should belong_to(:tech_type) }
  end

  describe 'validations' do
    subject { build(:technology) }

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name).scoped_to(:tech_type_id) }
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:tech_type_id).of_type(:integer).with_options(null: false) }
    it { should have_db_column(:rank).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end

  describe 'database indexes' do
    it { should have_db_index(:tech_type_id) }
    it { should have_db_index([:name, :tech_type_id]).unique(true) }
  end
end
