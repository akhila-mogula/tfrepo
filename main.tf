
variable "var1" {
    type = list
    default = ["myresgrpp1" , "myresgrpp2" , "myresgrp3"]
}



output "outvars1" {
    value = [for i in var.var1 : upper(i)]
}


output "outvars2" {
    value = [for i in var.var1 : upper(i) if length(i) > 6]
}
