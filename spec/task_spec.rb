require 'spec_helper'

describe Task do 
  context 'validations' do 
    it { should validate_presence_of :name }
  

    it { should validate_uniqueness_of :name }

    it { should ensure_length_of(:name).is_at_least(3) }

    it { should ensure_length_of(:name).is_at_most(100) }
  end

  context 'callbacks' do 
    it 'converts the name to lowercase' do 
      task = Task.create(:name => 'FINAGLE THE BUFFALO')
      task.name.should eq "finagle the buffalo"
    end
  end

  context 'associations' do
    it {should belong_to :list}
  end

end