# Notes

Notes are related to posts. They are overlayed sets of text relating to something about the post. An index of posts with notes can be found [here](https://e621.net/note/index)


## GET Endpoints
</br>

### History

Get the note history of a post using `id`, `post_id` or `user_id`

Base URL is `https://e621.net/note/history.json`

#### Parameters
- **limit** - Limit on the number of versions to retrieve
- **page** - The page number to return
- **post_id** - The post ID to retrieve note versions for
- **id** - ID of the note to retrieve the versions of
- **user_id** - Return notes created by the user with the given ID

#### Typical Response Example

```typescript
[
    {
        id: number,
        created_at: { json_class: string, s: number, n: number },
        updated_at: { json_class: string, s: number, n: number },
        creator_id: number,
        x: number,
        y: number,
        width: number,
        height: number,
        is_active: true,
        post_id: number,
        body: string,
        version: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/note/history.json)

[Example XML Request + Response](https://e621.net/note/history.xml)
</br>

### List

List a set of notes for a given post ID. If no parameters are given, an index of all posts with notes will be returned

Base URL is `https://e621.net/note/index.json`

#### Parameters

- **post_id** - ID of the post to retieve notes for

#### Typical Response Example

```typescript
[
    {
        id: number,
        created_at: { json_class: string, s: number, n: number },
        updated_at: { json_class: string, s: number, n: number },
        creator_id: number,
        x: number,
        y: number,
        width: number,
        height: number,
        is_active: true,
        post_id: number,
        body: string,
        version: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/note/index.json)

[Example XML Request + Response](https://e621.net/note/index.xml)
</br>

### Search

Search notes for any matches on a given `query`

Base URL is `https://e621.net/note/search.json`

#### Parameters

- **query** - The string query to match notes against

#### Typical Response Example

```typescript
[
    {
        id: number,
        created_at: { json_class: string, s: number, n: number },
        updated_at: { json_class: string, s: number, n: number },
        creator_id: number,
        x: number,
        y: number,
        width: number,
        height: number,
        is_active: true,
        post_id: number,
        body: string,
        version: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/note/search.json?query=fox)

[Example XML Request + Response](https://e621.net/note/search.xml?query=fox)
</br>
</br>

## POST Endpoints
</br>

### Create/Update

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Revert

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

