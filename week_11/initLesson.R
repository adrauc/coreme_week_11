# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.

if(!require(stringr)){
  install.packages("stringr")
  library(stringr)
}


.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

load(file.path(.get_course_path(), "coreme_week_11", "week_11", "tweets.rdata"))


