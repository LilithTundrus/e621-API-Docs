# Favorites

Favorites are a special 'action' relating to posts.


## GET Endpoints
</br>

### List Users

List users who have favorited a given post ID

Base URL is `https://e621.net/favorite/list_users.json`

#### Parameters

- **id** - ID of the post to retrieve the favorited users for

#### Typical Response Example

```typescript
{   
    // CSV string of users who have favorited the given post ID
    favorited_users: string
}
```

[Example JSON Request + Response](https://e621.net/favorite/list_users.json?id=115)

**THERE IS NO XML ENDPOINT FOR THIS ACTION**
</br>
</br>

## POST Endpoints
</br>

### Add to favorites

Adds a post ID to your favorites

Base URL is `https://e621.net/favorite/create.json`

#### POST Parameters

`id` is **required**

- **id** - Post ID to add to favorites

#### Example POST Object

```json
{
    "id": 576894
}
```

#### Response

Response object should look similar to the object below.

```typescript
    score: integer,
    post_id: integer,
    favorited_users: string, // (list of usernames in the format of "user1,user2,user3")
    success: boolean
```

</br>

### Remove from favorites

Removes a post ID from your favorites

Base URL is `https://e621.net/favorite/destroy.json`

#### POST Parameters

`id` is **required**

- **id** - Post ID to remove from favorites

#### Example POST Object

```json
{
    "id": 576894
}
```

#### Response

Response object should look similar to the object below.

```typescript
    score: integer,
    post_id: integer,
    favorited_users: string, // (list of usernames in the format of "user1,user2,user3")
    success: boolean
```
