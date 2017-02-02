require 'rails_helper'

RSpec.describe Timeblock, :type => :model do
  let!(:timeblock) { FactoryGirl.create(:timeblock) }

  it 'belongs to a project' do
    expect(timeblock).to respond_to(:project)
  end

  it 'belongs to a user' do
    expect(timeblock).to respond_to(:user)
  end

  it 'has many comments' do
    expect(timeblock).to respond_to(:comments)
  end
end