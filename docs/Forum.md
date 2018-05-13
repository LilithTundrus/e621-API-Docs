# Forum

The forum 'action' contains any endpoints relating to e621's forum posts. Forum posts are different from _comments_ and _blips_. They can either be a parent or a child. Parents are the 'topic' post and children are the 
'response' posts.

## GET Endpoints

### List

List forum posts, filtering by given parameters. If you don't specify any parameters you'll get a list of all the parent topics

Base URL is `https://e621.net/forum/index.json`

#### Parameters

- **paren_id** - The parent ID to retrieve child forum posts of
- **page** - The page number to return
- **limit** - The numnber of forum posts to retrieve. Max per page is 100

#### Typical Response Example

```typescript
[
    {
        body: string,
        creator: string,
        creator_id: number,
        id: number,
        parent_id: number | null,
        title: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/forum/index.json?limit=5)

[Example XML Request + Response](https://e621.net/forum/index.xml?limit=5)
</br>

### Search

Search forum posts by a given `query`

Base URL is `https://e621.net/forum/search.json`

#### Parameters

- **query** - String query to match forum posts against and return. Using the prefix `user:` allows for searching for forum posts created by a given user.
- **page** - The page number to return


#### Typical Response Example

```typescript
[
    {
        body: string,
        creator: string,
        creator_id: number,
        id: number,
        parent_id: number | null,
        title: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/forum/search.json?query=user%3ATheHuskyK9)

[Example XML Request + Response](https://e621.net/forum/search.xml?query=user%3ATheHuskyK9)
</br>

### Show

Get a single forum post by ID

Base URL is `https://e621.net/forum/show.json`

#### Parameters

- **id** - ID of the forum post to retrieve

#### Typical Response Example

```typescript
{
    body: string,
    creator: string,
    creator_id: number,
    id: number,
    parent_id: number | null,
    title: string
}
```

[Example JSON Request + Response](https://e621.net/forum/show.json?id=12345)

[Example XML Request + Response](https://e621.net/forum/show.xml?id=12345)
</br>


</br>

## POST Endpoints

### Create

Create a new forum post parent or child

Base URL is `https://e621.net/forum/create.json`

#### POST Parameters

`forum_post[body]`, `forum_post[title]` and `forum_post[category_id]` are **required**

- **forum_post[title]** - Title of the forum post to create
- **forum_post[body]** - Body of the forum post to create
- **forum_post[parent_id]** - Parent ID that this post is a child of (if any)
- **forum_post[category_id]** - Category of the forum post. Can be one of the following: 
    - 1 General
    - 2 Tag Alias and Implication Suggestions
    - 3 Art Talk
    - 5 Off Topic
    - 9 e621 Tools and Applications
    - 10 Tag/Wiki Projects and Questions
    - 11 Site Bug Reports & Feature Requests



#### Example POST Object

```json
{
    "forum_post[body]": "hello forum!",
    "forum_post[title]": "forum post",
    "forum_post[parent_id]": 11234,
    "forum_post[category_id]": 1
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

Hide a forum post by ID

Base URL is `https://e621.net/forum/hide.json`

**Note**: This does not effect the API-facing endpoints and is typically only done from a user's perspective

#### POST Parameters

`id` is **required**

- **id** - The ID of the forum post to hide

#### Example POST Object

```json
{
    "id": 2273
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

Unhide a forum post by ID

Base URL is `https://e621.net/forum/unhide.json`

**Note**: This does not effect the API-facing endpoints and is typically only done from a user's perspective

#### POST Parameters

`id` is **required**

- **id** - The ID of the forum post to unhide

#### Example POST Object

```json
{
    "id": 2273
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

Update a forum post. Note you must be the owner of the post with the given ID

Base URL is `https://e621.net/forum/updates.json`

#### POST Parameters

`id` and one other parameter is **required

- **id** - ID of the forum post to update
- **forum_post[title]** - Updated title of the forum post
- **forum_post[body]** - Updated body of the forum post
- **forum_post[category_id]** - Updated category of the forum post. Can be one of the following: 
    - 1 General
    - 2 Tag Alias and Implication Suggestions
    - 3 Art Talk
    - 5 Off Topic
    - 9 e621 Tools and Applications
    - 10 Tag/Wiki Projects and Questions
    - 11 Site Bug Reports & Feature Requests

#### Example POST Object

```json
{
    "id": 1223,
    "forum_post[body]": "Ohh, an update!",
    "forum_post[title]": "Edited title",
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