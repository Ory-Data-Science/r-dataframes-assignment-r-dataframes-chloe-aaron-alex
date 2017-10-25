#shrubsite displays the average shrub volume at each site while shrubexperiment shows the average volume for each experiment
shrub_data <- read.csv("shrub-dimensions-data.csv")
average_shrubsite_volume <- shrub_data %>%
  mutate("volume"=length*width*height)%>%
  group_by("site") %>%
  summarize(mean_volume= mean(volume))
print(average_shrubsite_volume)

average_shrubexperiment_volume <- read.csv("shrub-dimensions-data.csv")
average_shrubexperiment_volume %>%
  mutate("volume"=length*width*height)%>%
  group_by("experiment") %>%
  summarize(mean_volume= mean(volume))
print(average_shrubexperiment_volume)