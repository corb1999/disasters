
# add functions to execute analysis with ::::::::::::::::::

# simple timeline view ----------------

fun_plt_tl1 <- function(arg_df = dfplt, arg_pltnm = pltname) {
  p1 <- arg_df %>% 
    ggplot(aes(x = begin_yr, y = log(cpi_adj_costs_mill / 1000, 
                                     base = 10))) + 
    geom_point(aes(size = cpi_adj_costs_mill, 
                   color = disaster), alpha = 0.5) + 
    scale_y_continuous(labels = scales::dollar_format(accuracy = 0.1)) + 
    scale_size_continuous(range = c(2, 15), guide = 'none') + 
    theme_minimal() + 
    theme(legend.position = 'top', 
          plot.title.position = 'plot') + 
    labs(title = arg_pltnm, 
         x = 'Disaster Year', y = 'Log10 Disaster Cost in Billions', 
         color = '')
  return(p1)
}
# tests ????????????????????
# fun_plt_tl1()

# simple timeline view ----------------

fun_plt_tl2 <- function(arg_df = dfplt, arg_pltnm = pltname) {
  p1 <- arg_df %>% 
    ggplot(aes(x = begin_yr, y = log(cpi_adj_costs_mill / 1000, 
                                     base = 10))) + 
    geom_point(aes(size = cpi_adj_costs_mill, 
                   color = disaster), alpha = 0.5) + 
    geom_label_repel(aes(label = name), size = 2.5) +
    scale_y_continuous(labels = scales::dollar_format(accuracy = 0.1)) + 
    scale_size_continuous(range = c(2, 15), guide = 'none') + 
    theme_minimal() + 
    theme(legend.position = 'none', 
          plot.title.position = 'plot') + 
    labs(title = arg_pltnm, 
         x = 'Disaster Year', y = 'Log10 Disaster Cost in Billions', 
         color = '')
  return(p1)
}
# tests ????????????????????
# fun_plt_tl2()
