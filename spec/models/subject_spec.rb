require 'rails_helper'

RSpec.describe Subject, type: :model do
  context 'initialization' do
    subject{described_class.new({'name' => name, 'colour' => colour})}
    let(:name) { 'test' }
    let(:colour) { '#000000' }

    it 'has a name' do
      expect(subject.name).to eq(name)
    end

    it 'has a color' do
      #This alteration of the JSON is intentional, to bring it in line with HTML
      #and CSS standard spellings.
      expect(subject.color).to eq(colour)
    end
  end
end
