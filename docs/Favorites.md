# Favorites

Favorites are a special 'action' relating to posts. There is only one endpoint available.


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

**NONE**