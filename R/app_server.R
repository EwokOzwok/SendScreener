#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic


  observeEvent(input$send_screener,{
    shinyjs::runjs("window.open('https://www.example.com', '_blank');")
  })

}
