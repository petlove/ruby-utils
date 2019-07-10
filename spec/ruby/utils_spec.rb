# frozen_string_literal: true

RSpec.describe Ruby::Utils, type: :module do
  it 'has a version number' do
    expect(Ruby::Utils::VERSION).not_to be nil
  end

  describe '#dig' do
    class DigSpec
      include Ruby::Utils
    end

    let(:default) { nil }
    subject { DigSpec.new.dig(hash, keys, default) }

    context 'with all keys' do
      let(:hash) { { a: { b: 'c' } } }
      let(:keys) { %i[a b] }

      it 'should return letter c' do
        is_expected.to eq('c')
      end
    end

    context 'without all keys' do
      let(:hash) { { a: { b: 'c' } } }
      let(:keys) { %i[a b c] }

      it 'should return nil' do
        is_expected.to be_nil
      end
    end

    context 'without all keys and with default' do
      let(:hash) { { a: { b: 'c' } } }
      let(:keys) { %i[a b c] }
      let(:default) { 'linqueta' }

      it 'should return linqueta' do
        is_expected.to eq('linqueta')
      end
    end
  end

  describe '#hash_compact' do
    class HashCompactSpec
      include Ruby::Utils
    end

    subject { HashCompactSpec.new.hash_compact(a: 'a', b: nil) }

    it 'should remove nil values' do
      is_expected.to eq(a: 'a')
    end
  end
end
