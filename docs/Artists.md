# Artists

Description here

General notes here

## GET Endpoints
</br>

### List

Base URL is `https://e621.net/artist/index.json.`

#### Parameters
- **name** - Name or part of the name of the artist (or their URL)
- **limit** - Number of records per page to return
- **order** - Order of the returned response entries. Can be `date` or `name`
- **page** - The page number to return


#### Typical Response Example

```typescript
[ 
    {
        id: number,
        name: string,
        other_names: string,
        group_name: string,
        urls: string[],
        is_active: boolean,
        version: number,
        updater_id: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/artist/index.json?name=bubble)

[Example XML Request + Response](https://e621.net/artist/index.xml?name=bubble)
</br>
</br>

## POST Endpoints
</br>

### Create

URL + description

#### Parameters


Return JSON
</br>

### Destroy

URL + description

Return JSON
</br>

### Update

URL + description

Return JSON
</br>