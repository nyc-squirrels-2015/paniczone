require_relative "../spec_helper.rb"


describe "User Auth" do
  let(:user){User.create(name:"josh",password:"brolin")}

  before do
    user
  end

  it 'should have a login' do
    get '/'
    expect(last_response.status).to eq(200)
  end

  it 'should have a signup' do
    get '/signup'
    expect(last_response.status).to eq(200)
    expect(last_response.body).to include("Name")
  end

  it 'should redirect after user signs up' do
    post '/signup', params={ user: {name:"josh", password:"brolin"}}
    expect(last_response).to be_redirect
    follow_redirect!
  end
end