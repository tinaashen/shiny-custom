library(shiny)
library(shinycssloaders)
library(DT)

# Begin UI for the R + reticulate example app
ui <- fluidPage(
  tags$head(
    tags$style(HTML("
      #dependencies .form-control{
      align-items: flex-start;
      height: auto;
      
      }
    "))
  ),
  titlePanel('WEHI Research Computing'),
  div(style = "text-align: center; margin: 2.5%", 
      tags$img(src = "logo.png", width = "25%")
  ),
  sidebarLayout(
    sidebarPanel(
      textAreaInput("dependencies", "Packages required", 
                    placeholder = "Enter all packages required for script to run. Use comma to separate each dependency.", 
                    width = "100%", 
                    height = "100px", # This will make the text area square
                    rows = 5), # You can specify the number of rows the text area initially displays,
      actionButton("download", "Download", style = "margin-bottom: 1%; margin-top: 1%;"),
      textInput("files", "Filepath to workflow script", placeholder = "Enter the filepath to workflow script"),
      actionButton("done", "Upload"),
      ),
    mainPanel(
      tabsetPanel(tabPanel('Custom Script',
                           div(class = "container-fluid",
                               div(class = "row",
                                   div(class = "col-sm-12",
                                       style= "background-color: #ffffff; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);",
                                       h3('Upload custom script & dataset', style = "margin-top: 0;"),
                                       textInput('dp', 'Filepath to data', placeholder = 'Enter the path to image file'),
                                       textInput('rp', 'Filepath to results', placeholder = 'Enter the path to a CSV file'),
                                       actionButton('analyze_btn', 'Analyze Cells', class = "btn-primary"),
                                       DT::dataTableOutput('contents'),
                                       br(),
                                   )
                               )
                           ),
                           div(class = "container-fluid",
                               div(class = "row",
                                   div(class = "col-sm-13",
                                       style = "background-color: #ffffff; padding: 20px;",
                                       actionButton('show_btn', 'Show Results', class = "btn-primary"),
                                   ),
                                   div(class = "col-sm-14",
                                       style = "padding: 20px;",
                                       DTOutput('tbl'),
                                   ),
                               ),
                           )
                           
                           
      ),
      tabPanel('Architecture Info', 
               h3('Current architecture info'),
               hr(),
               shinycssloaders::withSpinner(DT::dataTableOutput('sysinfo')),
               br(),
               verbatimTextOutput('which_python'),
               verbatimTextOutput('python_version'),
               verbatimTextOutput('ret_env_var'),
               verbatimTextOutput('venv_root')
      )
      )
    )
  )
)

# End of ui.R
# Open the python file whenever written using reticulate, then ask user to input the dependencies needed. run the thig on the dataset and save.
# mention in video demo that script requires to have the to csv and save file to a location

#development

