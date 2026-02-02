require 'rails_helper'

RSpec.describe TechType, type: :model do
  describe 'associations' do
    it { should have_many(:technologies).dependent(:destroy) }
  end

  describe 'dependent destroy' do
    it 'destroys associated technologies when tech type is destroyed' do
      tech_type = create(:tech_type)
      technology = create(:technology, tech_type: tech_type)

      expect { tech_type.destroy }.to change(Technology, :count).by(-1)
    end
  end

  describe 'validations' do
    subject { build(:tech_type) }

    it { should validate_presence_of(:name) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:icon_filename) }

    context 'icon file validation' do
      it 'is valid when icon file exists' do
        tech_type = build(:tech_type, icon_filename: 'backend.svg')
        expect(tech_type).to be_valid
      end

      it 'is invalid when icon file does not exist' do
        tech_type = build(:tech_type, icon_filename: 'nonexistent.svg')
        expect(tech_type).not_to be_valid
        expect(tech_type.errors[:icon_filename]).to include('file does not exist: nonexistent.svg')
      end
    end
  end

  describe 'database columns' do
    it { should have_db_column(:name).of_type(:string).with_options(null: false) }
    it { should have_db_column(:icon_filename).of_type(:string) }
    it { should have_db_column(:rank).of_type(:integer) }
    it { should have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { should have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
  end
end
