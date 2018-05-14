# Posts

Posts are the main section of e621. They are media uploaded by users or the artists themselves. They contain a set of _tags_ that describe the post, _notes_ about the post. The can also be _commented_ on. A lot of e621 'actions' revolve around them. An index of all most recent posts can be found [here](https://e621.net/post/index)


## GET Endpoints
</br>

### Check MD5

Check the md5 hash of a post

Base URL is `https://e621.net/post/check_md5.json`

#### Parameters

- **md5** - The md5 hash of the file to matchs

#### Typical Response Example

```typescript
{
    md5: string
    exists: boolean
    post_id: number
}
```

[Example JSON Request + Response](https://e621.net/post/check_md5.json?md5=e9fbd2f2d0703a9775f245d55b9a0f9f)

[Example XML Request + Response](https://e621.net/post/check_md5.xml?md5=e9fbd2f2d0703a9775f245d55b9a0f9f)
</br>

### Deleted Index

Get the index of deleted posts

Base URL is `https://e621.net/post/deleted_index.json`

#### Parameters

- **user_id** - ID of the user to filter post uploads by
- **page** - The page number to return

#### Typical Response Example

```typescript
[
    {
        id: number,
        tags: string,
        locked_tags: string,
        description: string,
        created_at: {
            json_class: string,
            s: number,
            n: number
        },
        creator_id: number,
        author: string,
        change: number,
        source: string,
        score: number,
        fav_count: number,
        md5: string,
        file_size: number,
        file_url: string,
        file_ext: string,
        preview_url: string,
        preview_width: number,
        preview_height: number,
        sample_url: string,
        sample_width: number,
        sample_height: number,
        rating: string,
        status: string,
        width: number,
        height: number,
        has_comments: boolean,
        has_notes: boolean,
        has_children: boolean,
        children: number,
        parent_id: number,
        artist: string[],
        sources: string[],
        delreason: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/post/deleted_index.json)

[Example XML Request + Response](https://e621.net/post/deleted_index.xml)
</br>

### List

List all posts, filtered by a set of given parameters. Deleted posts are not returned. The most efficient method to iterate a large number of posts is to use before_id starting at the highest ID, and then successively request the lowest ID returned each time. When iterating using page, posts will shift between pages if posts meeting the tags search criteria are deleted or added to the site between requests. Page numbers greater than 750 will return an error.

**Note**: Deleted posts still count towards the number of posts returned in `page` requests if `status:any` or `status:delete` is part of the tags search criteria. Deleted posts are not returned either way. JSON requests do not report any post count

**Note**: Sorting results with `order:` using tags does nothing in conjunction with `before_id`

Base URL is `https://e621.net/post/index.json`

#### Parameters

- **limit** - Number of posts you want to retrieve per page. There is a hard limit of 320 posts per request. Defaults to the value set in user preferences (if any)
- **before_id** - Returns the next `limit` posts with IDs lower than the given ID
- **page** - The page number to return
- **tags** -  The tag search query, only returns posts that match the given spcae-delimited tags
- **typed_tags** - Set to true to return typed tag information. The tags value returned is a dictionary with each tag type as a key and then a list of tags of that type

#### Typical Response Example

```typescript
[
    {
        id: number,
        tags: string,
        locked_tags: string,
        description: string,
        created_at: {
            json_class: string,
            s: number,
            n: number
        },
        creator_id: number,
        author: string,
        change: number,
        source: string,
        score: number,
        fav_count: number,
        md5: string,
        file_size: number,
        file_url: string,
        file_ext: string,
        preview_url: string,
        preview_width: number,
        preview_height: number,
        sample_url: string,
        sample_width: number,
        sample_height: number,
        rating: string,
        status: string,
        width: number,
        height: number,
        has_comments: boolean,
        has_notes: boolean,
        has_children: boolean,
        children: number,
        parent_id: number,
        artist: string[],
        sources: string[],
        delreason: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/post/index.json?tags=fluffy+rating:s&limit=5)

[Example XML Request + Response](https://e621.net/post/index.xml?tags=fluffy+rating:s&limit=5)
</br>

### Popular

Endpoint description

Base URL is ``

#### Parameters

- **page** - The page number to return


#### Typical Response Example

```typescript
[
    {
        id: number,
        tags: string,
        locked_tags: string,
        description: string,
        created_at: {
            json_class: string,
            s: number,
            n: number
        },
        creator_id: number,
        author: string,
        change: number,
        source: string,
        score: number,
        fav_count: number,
        md5: string,
        file_size: number,
        file_url: string,
        file_ext: string,
        preview_url: string,
        preview_width: number,
        preview_height: number,
        sample_url: string,
        sample_width: number,
        sample_height: number,
        rating: string,
        status: string,
        width: number,
        height: number,
        has_comments: boolean,
        has_notes: boolean,
        has_children: boolean,
        children: number,
        parent_id: number,
        artist: string[],
        sources: string[],
        delreason: string
    },
    // ...
]
```

[Example JSON Request + Response]()

[Example XML Request + Response]()
</br>

### Show

Endpoint description

Base URL is ``

#### Parameters

- **page** - The page number to return


#### Typical Response Example

```typescript

```

[Example JSON Request + Response]()

[Example XML Request + Response]()
</br>

### Tags

Endpoint description

Base URL is ``

#### Parameters

- **page** - The page number to return


#### Typical Response Example

```typescript

```

[Example JSON Request + Response]()

[Example XML Request + Response]()
</br>
</br>

## POST Endpoints
</br>

### Create

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

### Destroy

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

### Flag

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

### Revert Tagss

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

### Vote

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