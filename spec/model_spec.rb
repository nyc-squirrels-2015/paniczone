require 'spec_helper'

describe User do
  let(:user) { User.create(name: params[:name], password: params[:password])}

  it 'should be a user object'
    expect(user) to_not be nil

  it 'should have a post'
    expect(user.post) to_not be nil

  it 'should have a comment'
    expect(user.comment) to_not be nil
end