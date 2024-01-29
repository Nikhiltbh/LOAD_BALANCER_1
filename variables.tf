variable "lb_name" {
  type    = string
  default = "demo-lb"
}
variable "lb_type" {
  type    = string
  default = "alb"
}
variable "sg__id" {
  type    = string
  default = "sg__id"
}
variable "subnet1__id" {
  type    = string
  default = "subnet1__id"
}
variable "subnet2__id" {
  type    = string
  default = "subnet2__id"
}
variable "vpc__id" {
  type = string
}
variable "lb_port" {
  type = string
}
variable "lb_protocol" {
  type = string
}
variable "ec2__id" {
  type = string
}
variable "lb_target_group_name" {
  type = string
}
variable "lb_action_type" {
  type = string
}