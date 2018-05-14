# Tag History

Tag History is a special 'action' it gets the tag history of ALL posts. Due to performance issues, this 'atcion' does not use page numbers. Instead, it takes an ID and returns the next/previous [limit] results. To traverse forward (back in time) through multiple pages of results, set the after parameter of the next request to the ID of the last result in the current result set. Or to go backwards (towards more recently) through results, set before to the ID of the first result in the current result set

**Note**: Tag history isn't a well documented/well understood part of the e721 API


## GET Endpoints
</br>

### Lists

List tag history entries, filtering by a given set of parameters

Base URL is `https://e621.net/post_tag_history/index.json`

#### Parameters

- **post_id** - Filter by post ID
- **date_start** - Show only edits after this date (inclusive). Takes most date formats, including 10-digit UNIX timestamps
- **date_end** - Show only edits before this date (inclusive). Takes most date formats, including 10-digit UNIX timestamps
- **user_id** - Filter by user ID
- **user_name** - Filter by username. Must match exactly, case insensitive
- **source** - Filter by source. Wildcard, so 'example' will match 'http://www.example.com/'
- **tags** - Filter by tags. Wildcard, like above. Caveat: since this is a simple text match against the history entry's tag list, it's best to only use one tag for this field
- **reason** - Filter by edit reason. Wildcard, like above
- **description** - Filter by description. Wildcard, like above
limit How many results to return at once. Defaults to 100 and limited to 1000.
- **before / after** - Show the next [limit] results before (higher ID than) or after (lower ID than) the given ID

#### Typical Response Example

```typescript
[
    {
        id: number,
        post_id:number,
        created_at: number
        tags: string,
        source: string
    }
]
```

[Example JSON Request + Response](https://e621.net/post_tag_history/index.json)

[Example XML Request + Response](https://e621.net/post_tag_history/index.xmls)
</br>



## POST Endpoints
</br>

**NONE**