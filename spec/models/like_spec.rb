require 'rails_helper'

RSpec.describe Like, type: :model do
  subject { Like.new(user_id: 1, post_id: 2) }

  before { subject.save }

  it 'user_id should be 1' do
    expect(subject.user_id).to eq 1
  end

  it 'post_id should be 2' do
    expect(subject.post_id).to eq 2
  end
end
