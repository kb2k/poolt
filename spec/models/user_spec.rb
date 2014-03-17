require 'spec_helper'

describe User do

  it 'fails validation with no firstname' do
    expect(User.new).to have(1).error_on(:firstname)
  end

  it 'fails validation with no lastname' do
    expect(User.new).to have(1).error_on(:lastname)
  end

end
