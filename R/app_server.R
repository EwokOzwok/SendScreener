#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic


  observeEvent(input$send_screener,{
    shinyjs::runjs("window.open('https://albany.az1.qualtrics.com/jfe/form/SV_em1HjmV8EULvd1c');")
  })

}
