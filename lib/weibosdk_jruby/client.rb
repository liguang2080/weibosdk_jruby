module WeibosdkJruby
  class Client
    def initialize(access_token)
      @access_token = access_token
    end

    # sdk_strings = "class.method"
    def rest(sdk_strings, *args)
      weibo = Java::Weibo4j::Weibo.new
      weibo.setToken @access_token
      
      sdk_class, sdk_method = sdk_strings.split(".")
      java_import "weibo4j.#{sdk_class}"
      Object.const_get(sdk_class).new.send sdk_method, *args
    end
  end
end