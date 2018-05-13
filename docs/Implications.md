# Implications


**e621 Has Marked this section of the API as incomplete**

## GET Endpoints

### List

List Implications, filtering by a set of given parameters

Base URL is `https://e621.net/tag_implication/index.json`

#### Parameters

- **page** - The page number to return
- **order** - Can be `tag`, `impliedtag`, `reason`, `user`, `date`, or `forum_post`
- **query/implied_to** - Search for implications that have this parameter in its name
- **user** - Name of user who submitted the suggestion
- **approved** - Whether or not the implications is approved. Can be `all`, `true`, false
- **forum_post** - If the implication has an accompanying forum post. Can be `all`, `true` or `false`

#### Typical Response Example

```typescript
[
    {
        id: number,
        consequent_id: number,
        predicate_id: number,
        pending: boolean
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/tag_implication/index.json?implied_to=feline&approved=true)

[Example XML Request + Response](https://e621.net/tag_implication/index.xml?implied_to=feline&approved=true)
</br>
</br>

## POST Endpoints

**NONE**