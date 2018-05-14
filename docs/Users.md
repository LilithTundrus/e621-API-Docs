# Users

Users are pretty straightforward. They represemt people (or bots) using the e621 site. 

## GET Endpoints
</br>

### List

List users, filtering by a given set of parameters. If no parameters are given you will get a listing of all users.

Base URL is ``

#### Parameters

- **id** - ID of the user to list (effectively the same as _show_)
- **name** - String to match partial or all of a user's name against
- **level** - Permission level the returned users have. Can be one of the following:
    - **0** - Unactivated
    - **10** - Blocked
    - **20** - Member
    - **30** - Privileged
    - **33** - Contributor
    - **34** - Former Staff
    - **35** - Janitor
    - **40** - Mod
    - **50** - Admin
- **order** - Order to sort the user data retrieved by. Can be one of the following:
    - **name** - Username, bades on unicode chars (ascending)
    - **posts** - Number of posts the user has made (descending)
    - **deleted** - Number of deleted posts the user has made (descending)
    - **tagedits** - Number of tag edits the user has made (descending)
    - **posts** - Number of posts the user has made (descending)
    - **date** - The date the user joined, from most recent to least
    - **record** - User's record score (descending)


#### Typical Response Example

```typescript
[
    {
        name: string,
        id: number
        level: e621UserLevels,
        created_at: string,
        avatar_id: number,
        stats:
        {
            post_count: number,
            del_post_count: number,
            edit_count: number,
            favorite_count: number,
            wiki_count: number,
            forum_post_count: number,
            note_count: number,
            comment_count: number,
            blip_count: number,
            set_count: number,
            pool_update_count: number,
            pos_user_records: number,
            neutral_user_records: number,
            neg_user_records: number
        },
        artist_tags: string[]
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/user/index.json?name=purple&level=20&order=date)

[Example XML Request + Response](https://e621.net/user/index.xml?name=purple&level=20&order=date)
</br>

### Show

Get a user's information by ID. If an ID is not given you will get the information of the user you are logged in as through the APIs

Base URL is `https://e621.net/user/show.json`

#### Parameters

- **id** - ID of the user to retrieve

#### Typical Response Example

```typescript
{
    name: string,
    id: number
    level: e621UserLevels,
    created_at: string,
    avatar_id: number,
    stats:
    {
        post_count: number,
        del_post_count: number,
        edit_count: number,
        favorite_count: number,
        wiki_count: number,
        forum_post_count: number,
        note_count: number,
        comment_count: number,
        blip_count: number,
        set_count: number,
        pool_update_count: number,
        pos_user_records: number,
        neutral_user_records: number,
        neg_user_records: number
    },
    artist_tags: string[]
}
```

[Example JSON Request + Response](https://e621.net/user/show.json)

[Example XML Request + Response](https://e621.net/user/show.xml)
</br>


## POST Endpoints
</br>

**NONE**