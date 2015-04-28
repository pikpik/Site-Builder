# Site-Builder

Build static sites made of pure awesome.

## Requirements

* sh (POSIX-compatible shell)
* gzip (for compression)
* Node.js (for parsing JSON)

## Directions

1. Edit files in `website`
2. Run `sh build.sh`
3. Put contents of `results` folder in web server
4. Repeat

For ease of use, put Site-Builder in server directory and edit there.

When moving results to a production site, make changes as necessary to website/.htaccess. Then rebuild and deploy results.

This is just something I made. Feel free to make your own! :D
