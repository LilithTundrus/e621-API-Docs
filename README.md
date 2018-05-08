# e621-API-Docs

## About

**PLEASE NOTE**: This is still in development/in-depth research phase

This is a repository for a better set of documentation for the site [e621](https://e621.net). If you're here, you know what this site is for.
</br>

The official documentation is available [here](https://e621.net), but it does not go very in depth on GET/POST endpoints and how they differ. Also some information is incorrect.

Any general information will be available on this page. if you want to get more information on any specific endpoint, look in the `docs/` folder of this repo.
</br>
</br>


## The Basics

The e621 API uses the two main HTTP REST methods, **GET** and **POST**. This is how you interact with the API, through REST URL endpoints. Any time you are retrieving data from the API you are using GET, any time your are giving the API information you are using POST.
</br>

e621 treats REST URLs as functions, so when you are GETting data, you pass your desired options after the base URL (separated by a `?`)

A basic example looks like this:
```url
https://e621.net/post/index.json?limit=10
```
[Try it in your browser](https://e621.net/post/index.json?limit=10)
</br>

