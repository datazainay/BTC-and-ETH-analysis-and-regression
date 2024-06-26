library(shiny)
library(shinydashboard)
library(plotly)
library(datasets)
library(skimr)
shinyUI(
  dashboardPage(skin = "purple",
    dashboardHeader(title = "RAmmers - Bitcoin Analysis",titleWidth = 700),
    dashboardSidebar(tags$style(HTML("
                                     .main-sidebar{
                                     width:230px;")),
                     
                   
      sidebarMenu(
        
        menuItem("Data",tabName = "data",icon = icon("database")),
     
        menuItem("Graphical Representation",tabName = "box",
                 menuSubItem("Line Chart of Bitcoin",tabName = "box"),
                 menuSubItem("Line Graph of Bitcoin(1 year)",tabName = "h"),
                 menuSubItem("Line Graph of Bitcoin(1 Month)",tabName = "s"),
                 menuSubItem("Boxplot of Closing Value",tabName = "BP"),
                 menuSubItem("Line Graph of Ethereum",tabName = "LG"),
                 menuSubItem("Boxplot of Ethereum",tabName = "BPE"),
                 menuSubItem("Histogram of Bitcoin Volume",tabName = "OP"),
                 menuSubItem("Histogram of Etherum volume",tabName = "EOP")
                 
                 ),
        
        menuItem("Summary of cryto",tabName = "mean",
                 menuSubItem("Summary of bitcoin",tabName = "mS"),
                 menuSubItem("Summary of ethereum",tabName = "mDS")
                 
                 
                 ),
        

        
        menuItem(" Regression model and Normal Distribution",tabName = "Regression Model",
                 menuSubItem("Summary Regression Model",tabName = "RS"),
                 menuSubItem(" Probability Distribution",tabName = "PD"),
                 menuSubItem(" ReggreSsion model and expected value",tabName = "P")
                 
      
        )
        
        
        
      #Linear regression and co-variance and
        
      )
      
    ),
    dashboardBody(
      tabItems(
        tabItem(tabName = "data",dataTableOutput("mydatatable")),
        tabItem(tabName = "d",dataTableOutput("dataPH")),
        tabItem(tabName = "box",
                fluidRow(box(title = "Line Graph of Bitcoin",plotlyOutput("plot1",height = 500)))
              
        ),
        tabItem(tabName = "h",
              
                fluidRow(box(title = "Line Graph of Bitcoin(1 year)",plotlyOutput("plot2",height = 500)))
        ),
        tabItem(tabName = "s",
                
                fluidRow(box(title = "Line Graph of Bitcoin(1 Month)",plotlyOutput("plot3",height = 500)))
        ),
        tabItem(tabName = "BP",
                
                fluidRow(box(title = "Boxplot of Bitcoin",plotlyOutput("plot4",height = 500)))
        ),
        tabItem(tabName = "LG",
                
                fluidRow(box(title = "Line Graph of Ethereum",plotlyOutput("plot5",height = 500)))
        ),
        tabItem(tabName = "BPE",
                
                fluidRow(box(title = "Boxplot of Etherem",plotlyOutput("plot6",height = 500)))
        ),
        tabItem(tabName = "OP",
                
                fluidRow(box(title = "Histogram of BTC Volume",plotlyOutput("plot7",height = 500)))
        ),
        tabItem(tabName = "EOP",
                
                fluidRow(box(title = "Histogram of ETH Volume",plotlyOutput("plot9",height = 500)))
        ),
        
       
        
      #summary of data
        
        tabItem(tabName = "mS",fluidRow(verbatimTextOutput("mS"))),
        tabItem(tabName = "mDS",fluidRow(verbatimTextOutput("mDS"))),
        

      
      
      
     
      
      
      #regssion model and normal distribution
      tabItem(tabName = "RS",fluidRow(verbatimTextOutput("RS"))),
      tabItem(tabName = "PD",fluidRow(box(title = "Plot of normal distribution (pnorm)",plotlyOutput("PD",height = 500)))),
      tabItem(tabName = "P",numericInput("num", h3("Enter Opening Value:"), value = ""),fluidRow(valueBoxOutput("P",width = 4)))
      
     
    
      
     
    
      )
        
    )
 
)
) 
