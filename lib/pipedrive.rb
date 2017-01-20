module Pipedrive
	require 'rest-client'
	require 'json'

	# class method for getting all deals
	class << self
		def getAllDeal
			url = ENV['request_path'] + 'deals'
			count = 0
			# params = {
			# 	start: 0,
			# 	api_token: '9da8f923610d7d594b76fb414e0712813567ce7b',
			# 	limit: 1
			# }
			begin	
				response = RestClient.get(url,{params: {
				start: count,
				api_token: ENV['api_token']
				# limit: 1
			}})
				parseData(response)
			rescue RestClient::ExceptionWithResponse => e
     		e.response
			end
		end

		private
			def parseData(response)
				JSON.parse(response)
			end
	end
	
end