if Rails.env.production? || Rails.env.development?
  ENV['request_path'] = 'https://api.pipedrive.com/v1/'
  ENV['api_token'] = '9da8f923610d7d594b76fb414e0712813567ce7b'
end
