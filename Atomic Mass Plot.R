library(tidyverse)

atomic_mass_plot <- ggplot(atomic_masses, aes(x=atomic_number, y=atomic_mass)) + 
      geom_line(aes(color="Measured"), show.legend=TRUE) +
      geom_smooth(method="lm", aes(color="Predicted"), formula=y~x, show.legend=TRUE) + 
      labs(title = "Atomic Mass against Atomic Number", 
           x = "Atomic Number", 
           y = "Atomic Mass (u)") +
      scale_color_manual(
           name = "Trendline Type", 
           values = c("Measured"="blue", "Predicted"="red"))
    
atomic_mass_plot


      

