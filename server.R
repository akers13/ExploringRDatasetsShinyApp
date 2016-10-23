library(shiny); library(ggplot2)
shinyServer(
function(input, output) { 
output$Plot1<-renderPlot({ggplot(get(input$selectdata),
        aes_string(input$selectX,input$selectY))+geom_point(size=3,
        color="green")+geom_smooth(method="lm")+ggtitle(input$selectdata)})
output$Table1<-renderTable({
        names(get(input$selectdata))})
}
)

