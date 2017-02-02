require 'rails_helper'

RSpec.describe User, :type => :model do
  let!(:user) { FactoryGirl.create(:user) }

  it 'has many timeblocks' do
    expect(user).to respond_to(:timeblocks)
  end

  it 'has many projects' do
    expect(user).to respond_to(:projects)
  end

  it 'has many comments' do
    expect(user).to respond_to(:comments)
  end
end