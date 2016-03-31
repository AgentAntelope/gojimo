require 'rails_helper'

RSpec.describe Qualification, type: :model do
  context 'initialization' do
    subject{described_class.new({'name' => name, 'id' => id, 'subjects' => [subject_json]})}
    let(:name) { 'test' }
    let(:id) { '1234567890' }
    let(:subject_json) { double(:subject_json) }
    let(:subject_double) { class_double(Subject, new: double(:subject)) }
    before do
      stub_const('Subject', subject_double)
    end

    it 'has a name' do
      expect(subject.name).to eq(name)
    end

    it 'has an id' do
      expect(subject.id).to eq(id)
    end

    it 'builds subjects' do
      expect(subject_double).to receive(:new).with(subject_json)
      subject
    end
  end
end
