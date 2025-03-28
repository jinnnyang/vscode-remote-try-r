# Load the shiny package
library(shiny)

# Define the UI
ui <- fluidPage(
titlePanel("Hello Shiny!"),
sidebarLayout(
sidebarPanel(
sliderInput("bins", "Number of bins:", min = 1, max = 50, value = 30)
),
mainPanel(
plotOutput("distPlot")
)
)
)

# Define the server function
server <- function(input, output) {
output$distPlot <- renderPlot({
x <- faithful$eruptions
bins <- seq(min(x), max(x), length.out = input$bins + 1)
hist(x, breaks = bins, col = 'darkgray', border = 'white')
})
}

# Run the application
shinyApp(ui = ui, server = server)