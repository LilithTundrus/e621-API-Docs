# Artists

Artists are just as they seem. They represent e621 _users_ or even external users from another site that create content. This information is used in any _posts_ made to e621.

## GET Endpoints
</br>

### List

List artists by a set of given parameters

Base URL is `https://e621.net/artist/index.json.`

#### Parameters
- **name** - Name or part of the name of the artist (or their URL)
- **limit** - Number of records per page to return
- **order** - Order of the returned response entries. Can be `date` or `name`
- **page** - The page number to return

#### Typical Response Example

```typescript
[ 
    {
        id: number,
        name: string,
        other_names: string,
        group_name: string,
        urls: string[],
        is_active: boolean,
        version: number,
        updater_id: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/artist/index.json?name=bubble)

[Example XML Request + Response](https://e621.net/artist/index.xml?name=bubble)
</br>
</br>

## POST Endpoints
</br>

### Create

Create a single new artist

Base URL is `https://e621.net/artist/create.json`

#### POST Parameters

`artist[name]` and `artist[urls]` are **required**

- **artist[name]** - The artist's name
- **artist[urls]** - A list of URLS where the artist can be found
- **artist[group_name]** - The group the artist is a member of
- **artist[other_names]** - List of comma-separated named the artist is also known as

#### Example POST Object

```json
{
    "artist[name]": "foxxo",
    "artist[urls]": "URL_1 URL_2 URL_3",
    "artist[group_name]": "foxes united",
    "artist[other_names]": "super_foxxo,test,other_test"
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

### Destroy

Delete/destroy an artist by ID

Base URL is `https://e621.net/artist/destroy.json`

#### POST Parameters

`id` is **required**

- **id** - The ID of the artist to delete/destroy

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

### Update

Update an artist's information by their ID

Base URL is `https://e621.net/artist/update.json`

#### POST Parameters

Only the artist's `id` is **required**

- **id** - ID of the artist to update
- **artist[name]** - The artist's updated name
- **artist[urls]** - A list of URLS where the artist can be found
- **artist[is_active]** - Wheteher or not the artist is active
- **artist[group_name]** - The group the artist is a member of
- **artist[other_names]** - List of comma-separated named the artist is also known as

#### Example POST Object

```json
{
    "artist[name]": "foxxo_new",
    "artist[urls]": "URL_1 URL_2 URL_3",
    "artist[group_name]": "foxes united",
    "artist[is_active]": true,
    "artist[other_names]": "super_foxxo,test,other_test,updated_name"
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```