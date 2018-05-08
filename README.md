# e621-API-Docs

## About

**PLEASE NOTE**: This is still in development/in-depth research phase

This is a repository for a better set of documentation for the site [e621](https://e621.net). If you're here, you know what this site is for.
</br>

The official documentation is available [here](https://e621.net), but it does not go very in depth on GET/POST endpoints and how they differ. Also some information is incorrect. This documentation is derived from the official API documentation but presented in a different and more in-depth manor.

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
</br>

### JSONP Support

The API does support JSONP. To use JSONP, append `&callback=mycallbackfunction` to your request. The resulting JSON will be encapsulated into a call to `mycallbackfunction`. 

#### Example

`/blip/index.json?callback=mycallbackfunction`

would return a response like:
```javascript
mycallbackfunction([{"user":"A User","response":null,"body":"Blip one","user_id":1,"id":1}])
```
</br>
### Using cURL

If you are using cURL or something similar, you may experience failurs on your HTTP requests. The API declares this to be a problem with SSL. If this is the case, you will need to point cURL to a trusted certificate to compare the remote site's (e621.net) certificate with. You can get the certificate [here](http://curl.haxx.se/ca/cacert.pem). After you have the cert downloaded, you can point cURL to it like so:

```bash
curl_setopt($ch, CURLOPT_CAINFO, "/server_dir/apache/cacert.pem");
```

Alternatively you can disable SSL alltogether (not advised)
</br>
</br>


## User-Agent Requirements

Making any requests to the e621 API **requires** a user-agent string. Making this something helpful like your username + project can help e621 get in touch with you if issues arise.

**NOTE**: Impersonating a browser user-agent will quickly have your IP address blocked from API access by e621.
</br>
</br>


## Rate limiting

e621 has a hard limit of 1 request per 500ms (2/sec). Breaking this limit will result in an HTTP 503 response.
</br>
</br>


## Response Types

The type of response you get from e621 depends on the type of endpoint you requested (XML or JSON).

Any API calls that are modifying data (POST and some special GETs) will return a response like this:

```js
{success: false, reason: "duplicate"}
```

For XML the response looks like this:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<response success="false" reason="duplicate"/>
```

e621 also uses standard HTTP responses as well as some custom responses, listed below

| Status Code         | Description        |
|---------------------|:------------------:|
| 200 OK	| Request was successful |
| 403 Forbidden	| Access denied. May indicate that your request lacks a User-Agent header (see Notice #2 above).  |
| 404 Not Found	| Not found |
| 420 Invalid Record	| Record could not be saved |
| 421 User Throttled	| User is throttled, try again later |
| 422 Locked	| The resource is locked and cannot be modified |
| 423 Already Exists	| Resource already exists |
| 424 Invalid Parameters	| The given parameters were invalid |
| 500 Internal Server Error	| Some unknown error occurred on the server |
| 502 Bad Gateway	| A gateway server received an invalid response from the e621 servers  |
| 503 Service Unavailable	| Server cannot currently handle the request or you have exceeded the request rate limit. Try again later or decrease your rate of requests.  |
| 520 Unknown Error	| Unexpected server response which violates protocol |
| 522 Origin Connection Time-out	| CloudFlare's attempt to connect to the e621 servers timed out |
| 524 Origin Connection Time-out	| A connection was established between CloudFlare and the e621 servers, but it timed out before an HTTP response was received |
| 525 SSL Handshake Failed	| The SSL handshake between CloudFlare and the e621 servers failed |

