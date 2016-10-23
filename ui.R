library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("Explore the R Datasets"), 
        sidebarPanel(
                h5("A list of datasets in the R datasets package can be found"),
                h4(a("HERE",href="http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html")),
                h2('Choose Your Inputs'),
                textInput("selectdata","Type an R Dataset",value="mtcars"),
                textInput("selectX","Type an X Variable",value="wt"),
                textInput("selectY","Type A Y Variable",value="mpg"),
                submitButton("Show Data")
                ), 
        mainPanel(h5("This application can be used to plot 
                     two variables from any R dataset included in the base R 
                     installation. To start, you can find a list of and 
                     information about these datasets by clicking the link on 
                     the left-hand side of this app."),
                  h5("To use the application, you must specify three inputs--
                     an R dataset, an X variable, and a Y variable. 
                     Once you type these three pieces of information, click the
                     Show Data button. A scatterplot will be generated along 
                     with a list of variable names under a heading titled data.
                     This list tells the user the variables they have to choose
                     from in the dataset they have specified."),
                  plotOutput('Plot1'),
                  tableOutput('Table1')
                  )
                  ))
                                          
 