# Blips

Blips are a unique endpoints. They are like _comments_ but don't relate to a specific post. They are also unlike _forum_ posts as they aren't created around a user-generated topic.

You can check them out yourself [here](https://e621.net/blip/index)


## GET Endpoints

### List

List a set of blips. If you give no parameters, you will get the most recent blips

Base URL is `https://e621.net/blip/index.json`

#### Parameters

- **name** - Return blips made by a user with the matching name (must be exact match)
- **body** - Return blips that match a given string in the message body
- **page** - The page number to return
- **limit** - Number of records per page to return. Limit cannot be set over 100
- **status** - Type of blips to retrieve. Can be `hidden`, `active` or `any`. Note that whether or not you can see other user's hidden blips is affected by your permission levels.
response_to ID number 
- **response_to** - Returns blips which are in response to the blip with the given ID.


#### Typical Response Example

```typescript
[
    {
        body: string,
        user: string,
        user_id: number,
        id: number,
        response: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/blip/index.json)

[Example XML Request + Response](https://e621.net/blip/index.xml)
</br>

## POST Endpoints