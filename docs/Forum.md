# Forum

The forum 'action' contains any endpoints relating to e621's forum posts. The forum posts are separated from _comments_ and _blips_. Forum posts can either be a parent or a child.

## GET Endpoints

### List

List forum posts, filtering by given parameters. If you don't specify any parameters you'll get a list of all the parent topics

Base URL is `https://e621.net/forum/index.json`

#### Parameters

- **paren_id** - The parent ID to retrieve child forum posts of
- **page** - The page number to return
- **limit** - The numnber of forum posts to retrieve. Max per page is 100

#### Typical Response Example

```typescript
[
    {
        body: string,
        creator: string,
        creator_id: number,
        id: number,
        parent_id: number | null,
        title: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/forum/index.json?limit=5)

[Example XML Request + Response](https://e621.net/forum/index.xml?limit=5)
</br>

### Search

Search forum posts by a given `query`

Base URL is `https://e621.net/forum/search.json`

#### Parameters

- **query** - String query to match forum posts against and return. Using the prefix `user:` allows for searching for forum posts created by a given user.
- **page** - The page number to return


#### Typical Response Example

```typescript
[
    {
        body: string,
        creator: string,
        creator_id: number,
        id: number,
        parent_id: number | null,
        title: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/forum/search.json?query=user%3ATheHuskyK9)

[Example XML Request + Response](https://e621.net/forum/search.xml?query=user%3ATheHuskyK9)
</br>

### Show

Get a single forum post by ID

Base URL is `https://e621.net/forum/show.json`

#### Parameters

- **id** - ID of the forum post to retrieve

#### Typical Response Example

```typescript
{
    body: string,
    creator: string,
    creator_id: number,
    id: number,
    parent_id: number | null,
    title: string
}
```

[Example JSON Request + Response](https://e621.net/forum/show.json?id=12345)

[Example XML Request + Response](https://e621.net/forum/show.xml?id=12345)
</br>


</br>

## POST Endpoints

### Create

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Hide

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Unhide

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Update

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **page** - The page number to return


#### Example POST Object

```json

```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>