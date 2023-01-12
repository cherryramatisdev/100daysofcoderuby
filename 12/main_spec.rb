require_relative 'main'

describe "discover between mountains and valleys" do
  let(:peak_classifier) { PeakClassifier.new }

  it 'should return mountain' do
    expect(peak_classifier.landscape_type([3, 4, 5, 4, 3])).to eq("mountain")
    expect(peak_classifier.landscape_type([1, 3, 5, 4, 3, 2])).to eq("mountain")
  end

  it 'should return valley' do
    expect(peak_classifier.landscape_type([9, 7, 3, 1, 2, 4])).to eq("valley")

    expect(peak_classifier.landscape_type([9, 8, 9])).to eq("valley")
  end

  it 'should return neither' do
    expect(peak_classifier.landscape_type([9, 8, 9, 8])).to eq("neither")
  end
end
