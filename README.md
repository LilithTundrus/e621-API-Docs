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

### Breaking down the URL

If you've dealt with REST APIs before this should seem familiar, if not here's a breakdown: The base URL will always be `https://e621.net/`, the next part of the URL `post` indicates the base endpoint we want to access. Changing this to something like `artist` would make all `artist` endpoints available to us. 

The next part of the URL `index` is considered the 'action'. In this case the `index` action retrieves an index of posts. 

After that, the `.json` part of the URL tells e621 that we want a JSON message returned, as opposed to XML. **Both JSON and XML are available but some endpoints are only available in one or the other**. 

Lastly are your `parameters`. These change depending on the 'action' you are performing but the allow you to specify the type of data you are receiving from the API. In this case `limit=10` is our parameter. This limits the response from e621 to 10 posts being returned. 

**Note**: Parameters for GET requests must **always** use a `?` to separate the URL from the parameters. Also, any additional parameters beyond the first must be separated with an `&`.