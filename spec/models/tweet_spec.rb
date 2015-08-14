require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'Initialization' do
    it 'creates a Tweet object' do
      expect(Tweet.new).to be_a (Tweet)
    end
  end

  describe 'Validations' do
    let(:invalid_tweet) {'asdfkdksdlfksdjfsdkfajsdlfksjdlkfsjdlkfjsdlkfjsldkfjsdlkfsjldfjsdlkfsjdlkfjsdklkdjfkdsldkfjdkslkfjsdkfsldkfjsdkslkfjdksldkjfkdlsdkjfdsla;ldk fjdnvmc,xa;sldkjf'}
    it 'valid with length less than 140' do
      expect(Tweet.new(post: 'This is a valid Tweet')).to be_valid
    end

    it 'invalid with no post' do
      expect(Tweet.new(post: nil)).to_not be_valid
    end

    it 'invalid with length greater than 140' do
      expect(Tweet.new(post: invalid_tweet)).to_not be_valid
    end
  end
end
