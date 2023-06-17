# we recall the library

library(shiny)

# we define the user interface

ui <- fluidPage(
        titlePanel('Title'),
        
        sidebarLayout(position = 'left',
                      sidebarPanel('sidebar'),
                      mainPanel(h1('Title h1'),
                                h2('Title h2'),
                                h3('Title h3'),
                                h4('Title h4'),
                                p('with this function we create a paragraph of text'),
                                code('here we insert text in code format'),
                                div('with div we can edit styles', style = 'color:red'),
                                img(src = 'daisies.jpg', height = 140, width = 400)
                      )
        )
)

# we define the server logic

server <- function(input, output) {
        
}

# and we run the app
shinyApp(ui = ui, server = server)

