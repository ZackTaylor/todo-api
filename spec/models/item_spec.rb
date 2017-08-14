require 'rails_helper'

RSpec.describe Item, type: :model do
  # item record belongs to a single todo record
  it { should belong_to(:todo) }

  # Coulmn must have name
  it { should validate_presence_of(:name) }
end
