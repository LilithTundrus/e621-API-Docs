# Flag History

The flag history 'action' is for getting the flag history of posts. There is only one endpoint available.

## GET Endpoints
</br>

### List

List a set of changes to the flags on a given post by `post_id`, `user_id` or `username`

This is typically used with `post_id` to see if a post has been flagged for any reason now or in the past

Base URL is `https://e621.net/post_flag_history/index.json`

#### Parameters

- **post_id** - ID of the post to filter the flag changes by
- **user_id** - ID of the user to filter the flag changes by
- **username** - Name of the user to filter the flag changes by

#### Typical Response Example

```typescript
[
    {
        id: number,
        post_id: number,
        created_at: number,
        reason: string,
        user_id: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/post_flag_history/index.json)

[Example XML Request + Response](https://e621.net/post_flag_history/index.xml)
</br>
</br>

## POST Endpoints
</br>

**NONE**