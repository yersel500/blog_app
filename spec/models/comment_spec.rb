require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject { Comment.new(text: 'New Comment', user_id: 1, post_id: 2) }

  before { subject.save }

  it 'text should be New Comment' do
    expect(subject.text).to eq 'New Comment'
  end

  it 'user_id should be 1' do
    expect(subject.user_id).to eq 1
  end

  it 'post_id should be 2' do
    expect(subject.post_id).to eq 2
  end
end
