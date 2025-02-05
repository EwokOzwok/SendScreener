#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinyMobile
#' @import htmltools
#' @import shinyjs
#' @noRd
app_ui <- function(request) {

  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    f7Page(
      title = "Resource Rolodex",
      options = list(theme=c("auto"), dark=TRUE, preloader = F,  pullToRefresh=TRUE),
      allowPWA=TRUE,
      f7TabLayout(
        shinyjs::useShinyjs(),
        # panels are not mandatory. These are similar to sidebars


        navbar = f7Navbar(
          title= "Project ACCESS In Appointment Screener"),
        # f7Tabs is a special toolbar with included navigation
        f7Tabs(
          animated = TRUE,
          id = "tab",
          f7Tab(tabName="home",
                active = FALSE,
                icon = f7Icon("house"),

                f7Shadow(
                  intensity = 5,
                  hover = TRUE,
                  f7Card(f7Align(h3("Send Student In-Appointment Screener"), side=c("center")),
                         br(),
                         f7Button("send_screener", "Send Screener"),
                         hairlines = F, strong = T, inset = F, tablet = FALSE)
                )
          )


        )
      )
    )




  )


}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @import htmltools
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  # add_resource_path(
  #   "www",
  #   app_sys("app/www")
  # )

  tags$head(
    HTML('<link rel="stylesheet" type="text/css" href="https://ewokozwok.github.io/Rolodex/www/framework7.bundle.min.css">'),

    # Fix Install button to Upper right of screen
    tags$style("
    .custom-toast {
    position: fixed !important;
    top: 20px !important;
    right: 20px !important;
    z-index: 9999 !important;
    width: auto !important; /* Ensure it doesn't span unnecessarily */
    height: auto !important; /* Keep it concise */
    box-shadow: none; /* Optional: Remove toast shadow */
    background: transparent !important; /* Optional: Remove toast background */
    }

    .custom-toast .toast-button {
        background-color: green; /* Retain the button color */
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
    }
    "),
    # includeCSS("www/framework7.bundle.min.css")
    # bundle_resources(
    #   path = app_sys('app/www'),
    #   app_title = 'Rolodex'
    #   )

    # favicon(),

    # bundle_resources(
    #   path = app_sys("app/www"),
    #   app_title = "SkinnyRolodex"
    # )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
