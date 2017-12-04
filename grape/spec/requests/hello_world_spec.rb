describe 'Hello World Resource' do
  include Rack::Test::Methods

  def app
    Grp::API
  end

  describe 'GET /api/hello_world' do
    subject { get '/api/hello_world' }

    it 'returns 200 status code' do
      subject
      expect(last_response.status).to eq 200
    end

    it 'returns proper body' do
      subject
      expect(JSON.parse(last_response.body)['message']).to eq 'hello world'
    end
  end
end
