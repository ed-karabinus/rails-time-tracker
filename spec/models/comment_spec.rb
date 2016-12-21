require 'rails_helper'

RSpec.describe Comment, :type => :model do
  let!(:comment) { FactoryGirl.create(:comment) }

  it 'belongs to a session' do
    expect(comment.session).to be_instance_of(Session)
  end

  it 'belongs to a user' do
    expect(comment.user).to be_instance_of(User)
  end

  it 'has content' do
    expect(comment.content).to be_instance_of(String)
  end

  it 'validates the presence of content upon creation' do
    expect { FactoryGirl.create(:comment, :content => "") }.to raise_error
  end

  it 'validates the presence of content on update' do
    expect(comment.update(:content => "")).to be false
  end
end