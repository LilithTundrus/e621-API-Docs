# User Records

User records are 'affixes' that can be assigned to users. The can be found on users in the _Users_ 'action' section. There is only one endpoint available for user records


## GET Endpoints
</br>

### Show

Show a user record's information by ID

Base URL is `https://e621.net/user_record/show.json`

#### Parameters

- **id** - ID of the user record to return

#### Typical Response Example

```typescript
{
    body: string,
    created_at: {
        json_class: string,
        s: number,
        n: number
        },
        id: number,
        reported_by: number,
        score: number,
        user_id: number
}
```

[Example JSON Request + Response](https://e621.net/user_record/show.json?id=7455)

[Example XML Request + Response](https://e621.net/user_record/show.xml?id=7455)
</br>
</br>

## POST Endpoints
</br>

**NONE**