# Favorites

List users who have favorited a given post's ID

## GET Endpoints

### List Users

Endpoint description

Base URL is ``

#### Parameters

- **id** - ID of the post to retrieve the favorited users for


#### Typical Response Example

```typescript
{   
    // CSV string of users who have favorited the given posts'd IDs
    favorited_users: string
}
```

[Example JSON Request + Response](https://e621.net/favorite/list_users.json?id=115)

**THERE IS NO XML ENDPOINT FOR THIS ACTION**
</br>
</br>

## POST Endpoints

**NONE**