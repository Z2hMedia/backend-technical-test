URL Shortener
===========

This is a full-stack application that allows users to create "short urls".

The application should do the following:

* allow a user to register or sign in using Auth0
* allow a user to shorten a link
* retain the following stats each time a link is clicked:
  * browser
  * operating system
* allow a user to see the overall stats for all of their links
* show a user the stats for a specific link
* the stats should be displayed as:
  * a line graph showing hits per day for the
  * bar chart for OS breakdown
  * pie chart for browser breakdown
* allow a user to delete a link
* the backend should only allow a user to edit or delete their own links

## Backend

The backend should be written in Go, NodeJS, or Ruby -- although Go is preferred.

## Front-End

The front-end should be created using ReactJS.

# Bonus Points

If you felt that was too easy, here are some extra challenges

* ensure a user can only see the stats for their own links
* add the ability to create an organization, which can create link buckets and sub-users
* add a superuser, who can see global stats, and blacklist urls (nobody can
  create shortened urls for that domain)
* add more stats, such as geographic area, resolution, etc
