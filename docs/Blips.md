# Blips

Blips are a unique type of endpoint. They are like _comments_ but don't relate to a specific post. They are also unlike _forum_ posts as they aren't created around a user-generated topic.

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

### Show

Show a blip by its ID

Base URL is `https://e621.net/blip/show.json`

#### Parameters

`id` parameter is **required**

- **id** - The ID of the blip to retrieve


#### Typical Response Example

```typescript
{
    body: string,
    user: string,
    user_id: number,
    id: number,
    response: number
}
```

[Example JSON Request + Response](https://e621.net/blip/show.json?id=1234)

[Example XML Request + Response](https://e621.net/blip/show.xml?id=1234)
</br>
</br>

## POST Endpoints

### Create

Create a blip

Base URL is `https://e621.net/blip/create.json`

#### POST Parameters

`body` parameter is **required**

- **blip[body]** - The blip's body texts
- **blip[response]** - Blip ID that the new blip is in response to (optional)

#### Example POST Object

```json
{
    "blip[body]": 123456,
    "blip[response]": 56789
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Hide

Hide a blip by its ID

Base URL is `https://e621.net/blip/hide.json`

#### POST Parameters

`id` is **required**

- **id** - ID of the blip to hide

#### Example POST Object

```json
{
    "id": 123456
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Unhide

Unhide a blip by its ID

Base URL is `https://e621.net/blip/unhide.json`

#### POST Parameters

`id` is **required**

- **id** - ID of the blip to unhide

#### Example POST Object

```json
{
    "id": 123456
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Update

Update a blip by ID

Base URL is `https://e621.net/blip/update.json`

#### POST Parameters

`id` and `body`  are **required

- **id** - ID of the blip to update
- **blip[body]** - The new body of the blip

#### Example POST Object

```json
{
    "id": 123456,
    "blip[body]": "this is the new body"
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>