# Put custom tests in this file.

# Uncommenting the following line of code will disable
# auto-detection of new variables and thus prevent swirl from
# executing every command twice, which can slow things down.

AUTO_DETECT_NEWVAR <- FALSE

# However, this means that you should detect user-created
# variables when appropriate. The answer test, creates_new_var()
# can be used for for the purpose, but it also re-evaluates the
# expression which the user entered, so care must be taken.

get_token <- function() {
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  # Get info
  name <- readline_clean("What is your full name? ")
  student_id <- readline_clean("What is your student ID? ")
  message("Your name: ", name, "\n", "Student ID: ", student_id)
  message("Your completion code is: ", paste0(as.numeric(Sys.time()),"_", name,"_", student_id))
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}
