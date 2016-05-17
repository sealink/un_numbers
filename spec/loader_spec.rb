require 'spec_helper'

describe UnNumbers::Loader do
  subject(:loader) { UnNumbers::Loader.new }

  before { loader.load }

  it 'can load the UN numbers from CSV' do
    expect(loader.un_codes).to be_an_instance_of(Array)
    expect(loader.un_codes.size).to eq 1782
    expect(loader.un_codes.first.name).to eq 'AMMONIUM PICRATE'
  end
end
