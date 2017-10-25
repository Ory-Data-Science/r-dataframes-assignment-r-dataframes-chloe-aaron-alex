> shrub_experiment <- read.csv("shrub-volume-experiments-table.csv")
> join_shrub_data <- inner_join(shrub, shrub_experiment)
Joining, by = "experiment"
> print(join_shrub_data)