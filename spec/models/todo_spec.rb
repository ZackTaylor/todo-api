require 'rails_helper'

RSpec.describe Todo, type: :model do
  # Associations
  # Todo has relationship with Item model
  it {  should have_many(:items).dependant(:destroy)}

  # Validation tests
  # columns title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
