require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new(title: 'First Post', text: 'Content Post', user_id: 1, comments_counter: 0, likes_counter: 0) }

  before { subject.save }

  it 'Title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'Title should have a length less than 250 char' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'Title should be First Post' do
    expect(subject.title).to eq 'First Post'
  end

  it 'Text should be Content Post' do
    expect(subject.text).to eq 'Content Post'
  end

  it 'user_id should be 1' do
    expect(subject.user_id).to eq 1
  end
end
