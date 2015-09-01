i=8

case i
  when 1, 2..5
    print "1..5\n"
  when 6..10
    print "6..10\n"

  else
    # type code here
    print 'MORE'
end

n=2
case  'abcdef'
  when 'aaa', 'bbb'
    print "1\n"
  when /cd/
    print "2\n"

  else
    # type code here
    print 'MORE'
end