require 'spec_helper'

RSpec.describe PaczkomatReader do
  subject { described_class }

  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  describe '.setup' do
    let(:config_block) { ->{} }

    it 'should pass it to Config setup method' do
      expect(described_class::Config)
        .to receive(:setup)

      subject.setup(&config_block)
    end
  end
end
