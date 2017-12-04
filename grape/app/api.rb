module Grp
  class API < Grape::API
    prefix 'api'
    version 'v1', using: :path
    format :json

    mount Grp::V1

    add_swagger_documentation api_version: 'v1'
  end
end
