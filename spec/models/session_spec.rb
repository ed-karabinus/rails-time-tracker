require 'rails_helper'

RSpec.describe Session, :type => :model do
  let!(:session) { FactoryGirl.create(:session) }

  it 'belongs to a project' do
    expect(session).to respond_to(:project)
  end

  it 'belongs to a user' do
    expect(session).to respond_to(:user)
  end

  it 'has many comments' do
    expect(session).to respond_to(:comments)
  end
end