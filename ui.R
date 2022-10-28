
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

ui <- fluidPage(
    titlePanel(
      h1("Post-Course Survey",align="center")),
    fluidRow(
      column(12, 
             p(strong("*How many hours per week did you dedicate on average to this course?"))),
      selectInput("hour", label = NULL, selected = NULL,
                  choices = c("","0-3","4-6","7-9","10-12","13-15","16-18",">18")),
      column(12, 
             p(strong("*Are you planning to complete the entire Data Science Specialization?"))
             ),
      radioButtons("Post-Course Survey",label = NULL, selected = "",choices = c("Yes","No","Unsure")),
      column(12, 
             p(strong("*How do you intend to use your verified certificate? Check all that apply."))
             ),
      checkboxGroupInput("intend",label = NULL,
                         choices = c("On a job application","On your resume/CV","On a university application",
                                     "In your professional portfolio","Share with professional colleagues",
                                     "Share with personal family and friends","None")),
      actionButton("Submit", class = "btn-lg btn-success", label="Submit"),
      textOutput(outputId = "nice"),
    )
)

