name "main"
description "Main Configuration Role"
run_list "recipe[initial]"
override_attributes({
  "starter_name" => "Sergei Saenko",
})