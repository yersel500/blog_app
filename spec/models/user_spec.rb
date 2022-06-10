require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name: 'Yersel', photo: 'url_photo', bio: 'Full Stack programmer', posts_counter: 0) }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should be Yersel' do
    expect(subject.name).to eq 'Yersel'
  end

  it 'Photo should be url_photo' do
    expect(subject.photo).to eq 'url_photo'
  end

  it 'Bio should be Full Stack programmer' do
    expect(subject.bio).to eq 'Full Stack programmer'
  end
end
