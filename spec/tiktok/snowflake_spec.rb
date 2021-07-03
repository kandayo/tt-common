# frozen_string_literal: true

RSpec.describe TikTok::Snowflake do
  describe '#timestamp' do
    context 'when snowflake is a Integer' do
      subject { described_class.new(6914348117433371910) }

      it 'returns the timestamp' do
        expect(subject.timestamp).to eq(Time.parse('2021-01-05T18:42:02Z'))
      end
    end

    context 'when snowflake is a String' do
      subject { described_class.new('6914348117433371910') }

      it 'returns the timestamp' do
        expect(subject.timestamp).to eq(Time.parse('2021-01-05T18:42:02Z'))
      end
    end

    context 'when snowflake is invalid' do
      subject { described_class.new('abcd') }

      it 'raises ArgumentError' do
        expect { subject.timestamp }.to raise_error(ArgumentError)
      end
    end
  end
end
