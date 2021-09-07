#
# Uncomment the lines below
#

# resource "zerotier_network" "hello" {
#   name        = "hello"
#   description = "Hello World"
#   assignment_pool {
#     start = "192.168.42.1"
#     end   = "192.168.42.254"
#   }
#   route {
#     target = "192.168.42.0/24"
#   }
# }

# resource "zerotier_member" "alice" {
#   name        = "alice"
#   member_id   = "a11c3411ce"
#   description = "Alice's laptop"
#   network_id  = zerotier_network.hello.id
# }

# resource "zerotier_member" "bob" {
#   name        = "bob"
#   member_id   = "b0bd0bb0bb"
#   description = "Bob's laptop"
#   network_id  = zerotier_network.hello.id
# }
