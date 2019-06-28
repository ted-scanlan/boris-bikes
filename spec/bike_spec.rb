require "bike"

describe Bike do
  it 'responds to method "working?"' do
    expect(subject).to respond_to(:working?)
  end

  describe '#broken' do
    it 'will tell you if the bike is broken' do
      expect(subject.broken).to eq false
    end
  end

  describe '#report' do
    it 'will enable the user to report a broken bike' do
      expect(subject.report).to eq true
    end
  end

  # describe '#report' do
  #   it 'reports a broken bike when it is returned' do
  #     expect(subject.report).to eq


end
