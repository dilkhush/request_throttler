require "request_throttler/version"
require 'helpers/configuration'


module RequestThrottler
  extend Configuration

  define_setting :time_to_expire, 60
  define_setting :request_rpm_limit, 60
  define_setting :store

  def incr(key)
    val = RequestThrottler.store.incr(key)
    RequestThrottler.store.expire(key, RequestThrottler.time_to_expire) if val == 1
    val
  end

  def threshold?(key, threshold_value = RequestThrottler.request_rpm_limit)
    incr(key) < threshold_value
  end
end
