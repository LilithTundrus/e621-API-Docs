# Tags

Tags are descriptive strings relating to posts. They do contain their own set of informations as well


## GET Endpoints
</br>

### List

Endpoint description

Base URL is `https://e621.net/tag/index.json`

#### Parameters
- **limit** -  How many tags to retrieve. Limit of 500 tags per request
- **page** - The page number to return
- **order** - Can be `date`, `count`, or `name`
- **after_id** - Return all tags that have an ID number greater than the given ID
- **show_empty_tags** - If set to `1` the API will return tags regardless of the number of posts associated with them
- **name** - The exact name of the tag
- **name_pattern** - Search for any tag that has this parameter in its name

#### Typical Response Example

```typescript
[
    {
        id: number,
        name: string,
        count: number,
        type: e621TagTypes,
        type_locked: boolean
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/tag/index.json?order=count&limit=10)

[Example XML Request + Response](https://e621.net/tag/index.xml?order=count&limit=10)
</br>

### Related

Get the related tags of a given tag

Base URL is `https://e621.net/tag/related.json`

#### Parameters

- **tags** - The space-delimited tags to query
- **type** - Restrict results to this tag type. Can be `general`, `artist`, `copyright`, `character`, or `species`

#### Typical Response Example

```typescript
[
    {
        name: string,
        popularity: string,
        type: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/tag/related.json?tags=fluffy&type=species)

[Example XML Request + Response](https://e621.net/tag/related.xml?tags=fluffy&type=species)
</br>

### Show

Get a single Tag by ID

Base URL is `https://e621.net/tag/show.json`

#### Parameters

- **id** - ID of the tag to retrieves

#### Typical Response Example

```typescript
{
    id: number,
    name: string,
    count: number,
    type: e621TagTypes,
    type_locked: boolean
}
```

[Example JSON Request + Response](https://e621.net/tag/show.json?id=13371)

[Example XML Request + Response](https://e621.net/tag/show.xml?id=13371)
</br>
</br>

## POST Endpoints
</br>

### Update

Update a tag's type or ambiguity by name

`name` is **required**

Base URL is ``

#### POST Parameters

Required parameters

- **name** - The name of the tag to update
- **tag[tag_type]** - The updated tag type. General: 0, artist: 1, copyright: 3, character: 4, species: 5
- **tag[is_ambiguous]** - Whether or not this tag is ambiguous. `1 `for true and `0` for false

#### Example POST Object

```json
{
    "name": "dragon",
    "type": 1
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