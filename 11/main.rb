# typed: true

require 'sorbet-runtime'

extend T::Sig

sig { params(s: String).returns(T::Array[String]) }
def restore_ip_addresses(s)
  res = []
  dfs(s, [], res)
  res
end

sig { params(s: String, ip: T::Array[String], res: T::Array[String]).void }
def dfs(s, ip, res)
  if s.length == 0
    res << ip.join('.') if ip.size == 4
    return
  end

  return if ip.size >= 4

  for i in 1..3
    next unless i <= s.length

    sub = T.must(s[0, i])
    if (sub.to_i <= 255 && sub.to_i.to_s == sub) || (sub.to_i == 0 && sub.length == 1)
      dfs(T.must(s[i..-1]), ip + [sub],
          res)
    end
  end
end

if __FILE__ == $0
  print 'Enter a numeric string: '
  s = gets.chomp
  puts "The possible IP addresses are: #{restore_ip_addresses(s)}"
end
