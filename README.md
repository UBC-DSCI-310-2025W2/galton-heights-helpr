THIS IS NOT THE FINAL READ ME. I AM USING THIS TO LEAVE NOTES. WILL ADD FINAL READ ME LATER 


Minimum viable product for package What has been done: 
- Migrated the R function scripts to the package --> the original function scripts have not been deleted from MAIN
- Removed the library() and source() calls --> use use_package() to add those dependencies to DESCRIPTION instead
- Migrated the testthat testing suite to the package --> cant figure out why evaluate_model.R will not pass. the helper-file also won't work for some reason??
- Added a MIT license as a placeholder
- pinned the packages since we removed library(). they should be all there(?)

DO NOT MERGE THE NEW BRANCH I MADE
- i nested the package project within our project repo which is bad practice
- i did that just so I had somewhere to start so I could push the package to its own repo
- the tests for evaluate-model all fail



Source: https://r-pkgs.org/whole-game.html#load-devtools-and-friends
