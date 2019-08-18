## Requirements

### for Mac
* You need a version of the Ruby programming language on your computer to run this website locally. It’s installed on every Mac by default.
* You will need to install the xcode command line tools with `xcode-select --install`
* The site is generated with a static site generator. To install it, type `gem install bundler jekyll`.

### for Windows
* Read instructions here: https://jekyllrb.com/docs/windows/


## Development

To run the site locally and view it in your browser:
* Open Terminal.app (Mac).
* Go to the directory of the project (e.g. `cd projects/coworkingfestival`)
* Start the site generator with `jekyll serve --live`.

This will start a web server. Now you can view the site in your browser at http://127.0.0.1:4000.

See how to work with files at https://jekyllrb.com/docs/pages/.

### Editing Schedule

In order to edit the schedule, open the .csv file called e.g. `monday-events.csv` for the program day under `data` in a spreadsheet application and make the changes. Save the changes and commit them with `git commit -am 'schedule update' & git push`.
