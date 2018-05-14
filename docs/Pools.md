# Pools

Pools are collections of posts. They differ from _sets_ as they don't folow a certain topic but are generally related (IE a comic book's set of pages).

**NOTE**: Any GET endpoints for pools are _significantly slower_ than the XML counterparts. A reason is not given for this but you need to be aware when pulling data that JSON can be up to 30x slower.


## GET Endpoints
</br>

### List Pools

List a index of pools. If you don't specify any parameters you'll get a list of all pools

Base URL is `https://e621.net/pool/index.json`

#### Parameters

- **query** - Query string to filter the results by
- **page** - The page number to return

#### Typical Response Example

```typescript
[
    {
        id: number,
        name: string,
        created_at: { json_class: 'Time', s: number, n: number },
        updated_at: { json_class: 'Time', s: number, n: number },
        user_id: number,
        is_locked: boolean,
        post_count: number,
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/pool/index.json?query=fox)

[Example XML Request + Response](https://e621.net/pool/index.xml?query=fox)
</br>

### List Posts

List a pool's set of posts by ID

Base URL is `https://e621.net/pool/show.json`

#### Parameters

- **id** - ID of the pool to retrieve
- **page** - The page number to return

#### Typical Response Example

```typescript
{
    created_at: { json_class: 'Time', s: number, n: number },
    description: string,
    id: number,
    is_active: boolean,
    is_locked: boolean,
    name: string,
    post_count: number,
    updated_at: { json_class: 'Time', s: number, n: number },
    user_id: number,
    // an array of e621 posts
    posts: e621PostData[]
}
```

[Example JSON Request + Response](https://e621.net/pool/show.json?id=14167)

[Example XML Request + Response](https://e621.net/pool/show.xml?id=14167)
</br>


</br>

## POST Endpoints
</br>

### Add Post

Add a post to a given pool. You must own the pool to be able to add a post

Base URL is `https://e621.net/pool/add_post.json`

#### POST Parameters

`pool_id` and `post_id` are **required**

- **pool_id** -  ID of the pool to add the post to
- **post_id** -  ID of the post to add

#### Example POST Object

```json
{
    "pool_id": 112,
    "post_id": 12345
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

### Create

Create a new (empty) pool

Base URL is `https://e621.net/pool/create.json`

#### POST Parameters

All parameters are **required**

- **pool[name]** - The name of the pool to create
- **pool[is_locked]** - Can be `1` for true, `0` for false. Must be a moderator or higher to lock a pool
- **pool[description]** - A description of the pool

#### Example POST Object

```json
{
    "pool[name]": "A new pool",
    "pool[description]": "Description of the pool"
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

Delete a pool. You must either own this pool or be a moderator

Base URL is `https://e621.net/pool/destroy.json`

#### POST Parameters

`id` is **required**

- **id** - ID of the pool to delete

#### Example POST Object

```json
{
    "id": 1123
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

### Remove Post

Remove a post from given pool. You must own the pool to be able to remove a post

Base URL is `https://e621.net/pool/remove_post.json`

#### POST Parameters

`pool_id` and `post_id` are **required**

- **pool_id** -  ID of the pool to remove the post from
- **post_id** -  ID of the post to remove

#### Example POST Object

```json
{
    "pool_id": 112,
    "post_id": 12345
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

Update a pool's information

Base URL is `https://e621.net/pool/update.json`

#### POST Parameters

Required parameters

- **id** - ID of the pool to update
- **pool[name]** - The updated name of the pool
- **pool[is_locked]** - Can be `1` for true, `0` for false. Must be a moderator or higher to lock a pool
- **pool[description]** - A description of the pool

#### Example POST Object

```json
    "id": 1132,
    "pool[name]": "A pool",
    "pool[description]": "updated description"
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>