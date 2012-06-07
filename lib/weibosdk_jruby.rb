require "weibosdk_jruby/version"
require "weibosdk_jruby/config"
require "weibosdk_jruby/client"

module WeibosdkJruby
  begin
    require "java"
    Config.load
    $CLASSPATH << File.expand_path(File.dirname(__FILE__) + "/../weibosdk")
    Dir[File.expand_path(File.dirname(__FILE__) + "/../weibosdk/lib/*.jar")].each { |jar| $CLASSPATH << jar }

    # Client.new("access_token").rest("Friendships.getFollowersById", 123)
  end
end


Dir[File.expand_path(File.dirname(__FILE__) + "/lib/*.jar")].each { |jar| $CLASSPATH << jar }
$CLASSPATH << File.expand_path(File.dirname(__FILE__))
