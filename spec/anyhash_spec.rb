require 'anyhash'

describe Anyhash do

  it "calculates GOST hash" do
    expect(Anyhash.gost('a')).to eql 'd42c539e367c66e9c88a801f6649349c21871b4344c6a573f849fdce62f314dd'
  end

  it "calculates GOST hash (CryptoPro parameters)" do
    expect(Anyhash.gost_cryptopro('a')).to eql 'e74c52dd282183bf37af0079c9f78055715a103f17e3133ceff1aacf2f403011'
  end

end
