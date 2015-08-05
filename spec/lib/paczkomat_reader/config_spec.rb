require 'spec_helper'

RSpec.describe PaczkomatReader::Config do
  subject { described_class.new }

  describe "cache_ttl=" do
    let(:value) { rand }
    before { subject.public_send(:cache_ttl=, value) }

    it 'should assign a given value' do
      expect(subject.public_send(:cache_ttl)).to eq value
    end
  end

  describe "api_path=" do
    let(:value) { rand }
    before { subject.public_send(:api_path=, value) }

    it 'should assign a given value' do
      expect(subject.public_send(:api_path)).to eq value
    end
  end

  describe '.setup' do
    subject { described_class }
    let(:instance) { described_class.new }
    let(:block) { -> {} }

    before do
      instance

      expect(subject)
        .to receive(:new)
        .and_return(instance)

      expect(block)
        .to receive(:call)
        .with(instance)

      expect(instance)
        .to receive(:freeze)
    end

    it { subject.setup(&block) }
  end

  describe '#initialize' do
    it 'should have cache_ttl set to 60 by default' do
      expect(subject.cache_ttl).to eq 60
    end

    it 'should have api_path set to https://api-pl.easypack24.net/v4/ by default' do
      expect(subject.api_path).to eq 'https://api-pl.easypack24.net/v4/'
    end
  end
end
