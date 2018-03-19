#!/usr/bin/ruby -w
def get(url,&block)
    puts "GET #{url}"
    block.call
end

def post(url,&block)
    puts "POST #{url}"
    block.call
end


class BaseRestClient
end

class RestClient < BaseRestClient

    get "/test_post" do
        puts "Page visited GET"
    end

    post "/test_post" do
        puts "Page visited Post"
    end

end

RestClient.new
