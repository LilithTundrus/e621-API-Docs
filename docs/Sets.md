# Sets

Sets are similar to _pools_ but are about a generic topic rather than related posts

**Note**: Like _pools_, _sets_ endpoints for JSOn can be up to 30x slower than XML due to how e621 processes data

**Note**: I haven't bothered to document the maintainers endpoints for sets as they are confusing and very rarely utilized

## GET Endpoints
</br>

### List

List sets, filtered by a given set of parameterss

Base URL is `https://e621.net/set/index.json`

#### Parameters

- **page** - The page number to return
- **user_id** - Only show sets owned by the given user
- **maintainer_id** - Only show sets maintained by the given user
- **post_id Only** - show sets containing the given post

#### Typical Response Example

```typescript
[
    {
        id: number,
        name: string,
        created_at: string,
        updated_at: string,
        user_id: number,
        description: string,
        shortname: string,
        post_count: number,
        public: boolean,
        transfer_to_parent_on_delete: boolean
    }
]
```

[Example JSON Request + Response](https://e621.net/set/index.json)

[Example XML Request + Response](https://e621.net/set/index.xml)
</br>

### Show

Get a single set's information by IDs

Base URL is `https://e621.net/set/show.json`

#### Parameters

- **id** - ID of the set to retrieve

#### Typical Response Example

```typescript
{
    id: number,
    name: string,
    created_at: string,
    updated_at: string,
    user_id: number,
    description: string,
    shortname: string,
    post_count: number,
    public: boolean,
    transfer_to_parent_on_delete: boolean
    posts: e621PostDataConverted[]
}
```

[Example JSON Request + Response](https://e621.net/set/index.json?id=3)

[Example XML Request + Response](https://e621.net/set/index.xml?id=3)
</br>
</br>

## POST Endpoints
</br>

### Add post

Add a post to a set

Base URL is `https://e621.net/set/add_post.json`

#### POST Parameters

`set_id` and `post_id` are **required**

- **set_id** - ID of the set to add a post to
- **post_id** -  ID of the post to add

#### Example POST Object

```json
{
    "set_id": 555,
    "post_id": 44456
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

Create an empty set

Base URL is `https://e621.net/set/create.json`

#### POST Parameters

All parameters are required

- **set[name]** - The name of the set
- **set[shortname]** - The short name of the set
- **set[description]** - The description of the set
- **set[public]** - Whether to make the set public (true) or private (false)
- **set[transfer_to_parent_on_delete]** - Whether to replace deleted posts with their parents

#### Example POST Object

```json
{
    "set[name]": "The name of the set",
    "set[shortname]": "The short name of the set",
    "set[description]": "The description of the set",
    "set[public]": false,
    "set[transfer_to_parent_on_delete]": true
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

Delete a set. You must either own/maintain the set of be a moderator
s
Base URL is `https://e621.net/set/destroy.json`

#### POST Parameters

`id` is **required**

- **id** - The NAME of the set to destroy (this is how e6321 documents it, could be incorrect)

#### Example POST Object

```json
{
    "id": "test_set"
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

Remove a post from a set

Base URL is `https://e621.net/set/remove_post.json`

#### POST Parameters

`set_id` and `post_id` are **required**

- **set_id** - ID of the set to remove the post from
- **post_id** -  ID of the post to remove

#### Example POST Object

```json
{
    "set_id": 555,
    "post_id": 44456
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

Update a set by ID

Base URL is `https://e621.net/set/update.json`

#### POST Parameters

only `set[id]` is **required**


- **set[id]** - ID of the set to update
- **set[name]** - The name of the set
- **set[shortname]** - The short name of the set
- **set[description]** - The description of the set
- **set[public]** - Whether to make the set public (true) or private (false)
- **set[transfer_to_parent_on_delete]** - Whether to replace deleted posts with their parents


#### Example POST Object

```json
{
    "set[id]": 1113,
    "set[name]": "The name of the set",
    "set[shortname]": "The short name of the set",
    "set[description]": "The description of the set",
    "set[public]": false,
    "set[transfer_to_parent_on_delete]": true
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