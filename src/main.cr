
require "log"
require "./lib/cli"

LOG = ::Log.for("noozoid")
#LOG = Logger.new(STDOUT, level: Logger::WARN)

Noozoid::Cli.start(ARGV)

exit 0

# def print_help
#   puts '= Commands ='
#   puts ''
#   puts '- Navigation -'
#   puts "#{KEYS[:nav_parent]}: go to parent node"
#   puts "#{KEYS[:nav_child]}: go to children node"
#   puts "#{KEYS[:nav_previous]}: previous sibling"
#   puts "#{KEYS[:nav_next]}: next sibling"
#   puts ''
#   puts "- Action -"
#   puts "#{KEYS[:node_create]}: create child node"
#   puts "#{KEYS[:node_delete]}: remove node"
#   puts "#{KEYS[:node_toggle]}: toggle"
#   puts ''
#   puts "- Misc -"
#   puts "#{KEYS[:main_help]}: show this help"
#   puts "#{KEYS[:main_quit]}: exit program"
#   puts '[press a key to continue]'
#   read_command
# end
# 
# def read_command
#   system("stty raw -echo") #=> Raw mode, no echo
#   char = STDIN.getc
#   system("stty -raw echo") #=> Reset terminal mode
#   char
# end
# 
# if ARGV.empty?
#   print 'Mindmap name: '
#   current = root = Node.new(STDIN.gets.chomp)
# end
# 
# loop do
#   print `clear`
#   PrettyPrint.tree(root, current)
# 
#   cmd = read_command
# 
#   if cmd == KEYS[:node_create]
#     print 'Title: '
#     current[] = Node.new(STDIN.gets.chomp)
#   elsif cmd == KEYS[:node_delete]
#     current.remove
#     current = current.parent unless current.parent.nil?
#   elsif cmd == KEYS[:node_toggle]
#     current.toggle!
#   elsif cmd == KEYS[:nav_child]
#     current = current[0] if current.children?
#   elsif cmd == KEYS[:nav_parent]
#     current = current.parent unless current.parent.nil?
#   elsif cmd == KEYS[:nav_previous]
#     sibling = current >> -1
#     current = sibling unless sibling.nil?
#   elsif cmd == KEYS[:nav_next]
#     sibling = current >> 1
#     current = sibling unless sibling.nil?
#   elsif cmd == KEYS[:nav_root]
#     current = root
#   elsif cmd == KEYS[:main_help]
#     print_help
#   elsif cmd == KEYS[:main_quit]
#     puts 'Good Bye!'
#     break
#   end
# end
# 
