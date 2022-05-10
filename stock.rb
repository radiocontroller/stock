# encoding: UTF-8
require 'nokogiri'
require 'open-uri'

# code: 股票代码，要以sz或者sh开头
def fetch(code)
  unless code.start_with?('sz') || code.start_with?('sh')
    puts "code要以sh或者sh开头: #{code}"
    return
  end
  # 接口地址：https://qt.gtimg.cn/q=sz000683
  url = "https://qt.gtimg.cn/q=#{code}"
  doc = Nokogiri::HTML(open(url).read)
  data = doc.text.encode("UTF-8").split(";\n").last.split('=').last.gsub('"','').split('~')
  name = data[1]
  zs, kp, current, incr = data[4], data[5], data[3], data[32]
  puts "【#{name}】 昨收: #{zs.ljust(6)}, 当前: #{current.ljust(6)}, 涨幅: #{incr}%"
end

while true do
  puts Time.now.strftime('%F %T')
  fetch('sz000683')
  fetch('sh601919')
  sleep 3 # 间隔3秒进行下一次请求
end
