require 'spec_helper'

describe Contact do

  it 'can be created' do
    contact = create :contact
    expect(contact).to_not be_nil
  end

  it 'needs tests to be written!' do
    pending('write tests for Contact!')
  end

end
