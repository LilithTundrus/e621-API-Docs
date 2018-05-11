# Aliases

Aliases represent tags that are 'aliased' to other tags as they are very similar. This is not the same as a _related_ tag.

**e621 Has Marked this section of the API as incomplete**

## GET Endpoints
</br>

### List

#### URL 

`https://e621.net/tag_alias/index.json`

#### Parameters

- **page** - The page number to return
- **order** - Can be `tag`, `aliasedtag`, `reason`, `user`, `date` or `forum_post`
- **query** - Search for aliases with the given `query` in their name
- **user** - Username of the user who submitted the tag alias
- **approved** - Can be `all`, `true` or `false`
- **forum_post** - The accompanying forum post to the tag alias. Can be `all` or `false` (`true` option is the same as all)

#### Typical Response Example

```typescript
[
    {
    id: number,
    name: string,
    alias_id: number,
    pending: boolean
    }
    //...
]
```

[Example JSON Request + Response](https://e621.net/tag_alias/index.json?aliased_to=digitigrade&approved=true)

[Example XML Request + Response](https://e621.net/tag_alias/index.xml?aliased_to=digitigrade&approved=true)


</br>
</br>

## POST Endpoints
</br>

**NONE**