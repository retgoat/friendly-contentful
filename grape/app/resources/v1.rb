module Grp
  class V1 < Grape::API
    get '/dummies' do
      @dummies = Dummy.all
      { success: true, items: @dummies }
    end
  end
end
