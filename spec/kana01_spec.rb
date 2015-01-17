require 'spec_helper'
require_relative '../kana01.rb'

describe '#compute' do
  it '15*5 = 75' do
    expect(Kana01.compute('15*5')).to eq 75
  end

  it '30*15+5 = 600' do
    expect(Kana01.compute('30*15+5')).to eq 600
  end

  it 'hoge' do
    expect(Kana01.compute('4*5+6&7|8')).to eq 44
  end

  it 'fuga' do
    expect(Kana01.compute('2046&2045&2043&2039&2031&2015&1983&1919&1791&1535')).to eq 1024
  end

  it 'oooo' do
    expect(Kana01.compute('374958|6727+53965&53*954&29|6*138572+59|547783&43*8998')).to eq 12178274756590800
  end
end
