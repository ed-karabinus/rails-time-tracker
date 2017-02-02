require 'rails_helper'

RSpec.describe Project, :type => :model do
  let!(:project) { FactoryGirl.create(:project) }
  let!(:user) { FactoryGirl.create(:user) }

  it 'has timeblocks' do
    expect(project).to respond_to(:timeblocks)
  end

  it 'has users' do
    expect(project).to respond_to(:users)
  end

  it 'has comments' do
    expect(project).to respond_to(:comments)
  end

  it 'validates the presence of name upon creation' do
    expect { FactoryGirl.create(:project, :name => "") }.to raise_error(/Name can't be blank/)
  end

  it 'validates the presence of name on update' do
    expect(project.update(:name => "")).to be false
  end

  it 'has a nested attribute setter called #user_attributes=' do
    expect(project).to respond_to(:users_attributes=)
    project.users_attributes=({id: User.first.id})
    expect(project.users).to include(User.first)
  end
end