RequestThrottler.configuration do |config|

  # this is the maximum request limit you want to have for a
  # time duration default value is 60 request
  #config.request_rpm_limit = 60

  # this is the time duration you have to
  # reset the request counter
  # default it is 60 seconds
  #config.time_to_expire = 60

  # this the store type where you will save your
  # request counter redis store type
  # config.store = Redis.new(url: "redis://localhost:6379", namespace: "request_throttler")
end
