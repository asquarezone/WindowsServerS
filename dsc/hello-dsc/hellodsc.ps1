# First we declare the configuration
Configuration HelloDsc 
{
  # Then we need to declare where we want to run the Configurarion
  Node "localhost" 
  {
    # Then we declare the desired state using DSC Resources
    Log MyMessage
    {
       Message = "Hello, Welcome to the World of DSC"
    }
  }

}

# Compile the configuration file
HelloDsc