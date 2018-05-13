# Comments

Comments are text entries related to _posts_

An index of all comments can be viewed [here](https://e621.net/comment/index) for reference


## GET Endpoints
</br>

### List

**e621 has marked this endpoint as incomplete**

Rettrieve a set of comments based on the given parameters. If none are given you receive the most recent comments made.

Base URL is `https://e621.net/comment/index.json`

**Note**: 25 comments are returned per page and this is not configurable

#### Parameters

- **post_id** - ID of the post to retrive comments made on that post
- **page** - The page number to return
- **status** - Type of comments to retrieve Can be `hidden`, `active` or `any`. Note that whether or not you can see other user's hidden comments is affected by your permission levels.


#### Typical Response Example

```typescript
[
    {
        id: number,
        created_at: string,
        post_id: number,
        creator: string,
        creator_id: number,
        body: string,
        score: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/comment/index.json?post_id=8595)

[Example XML Request + Response](https://e621.net/comment/index.xml?post_id=8595)
</br>

### Search

Search comments for any that match a given `query` 

Base URL is `https://e621.net/comment/search.json`

#### Parameters

`query` is **required**

- **query** - The string query to match and return comments
- **results** - Changes how the `query` string is applied to comments. Can be `fuzzy` or `exact`. Default is `exact`
- **date_start** - Returns comments created AFTER a given date (yyyy-mm-dd format)
- **date_end** - Returns comments created BEFORE a given date (yyyy-mm-dd format)
- **order** - How to sort the results. Can be `date`, `date_asc`, `score` or `score_asc`
- **post_id** - ID of the post to retrieve comments for
- **page** - The page number to return
- **user** - Name of the user to filter the results by
- **user_id** - ID of the user to filter the results by
- **status** - Type of comments to retrieve. Can be `hidden`, `active` or `any`. Note that whether or not you can see other user's hidden comments is affected by your permission levels.


#### Typical Response Example

```typescript
[
    {
        id: number,
        created_at: string,
        post_id: number,
        creator: string,
        creator_id: number,
        body: string,
        score: number
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/comment/search.json?date_start=2015-12-31&date_end=2016-12-31&order=score)

[Example XML Request + Response](https://e621.net/comment/search.xml?date_start=2015-12-31&date_end=2016-12-31&order=score)
</br>

### Show

Get a comment by ID

Base URL is `https://e621.net/comment/show.json`

#### Parameters

- **id** - ID of the comment to retrieve


#### Typical Response Example

```typescript
{
    id: number,
    created_at: string,
    post_id: number,
    creator: string,
    creator_id: number,
    body: string,
    score: number
}
```

[Example JSON Request + Response](https://e621.net/comment/show.json?id=1454578)

[Example XML Request + Response](https://e621.net/comment/show.xml?id=1454578)
</br>
</br>


## POST Endpoints
</br>

### Create

Create a comment

Base URL is `https://e621.net/comment/create.json`

#### POST Parameters

`comment[post_id]` and `comment[body]` are **required**

- **comment[anonymous]** - Set to 1 if you want to post a comment anonymously
- **comment[post_id]** - The post ID number to which you are commenting on
- **comment[body]** - The body of the comment to create


#### Example POST Object

```json
    "comment[post_id": 123456
    "comment[anonymous]": 1,
    "comment[body]": "very wow, much great"
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Destroy

Delete a comment by ID. You must be the owner of a comment or a _Janitor_ level user to delete a comment.

Base URL is `https://e621.net/comment/destroy.json`

#### POST Parameters

`id` is **required**

- **id** - ID of the comment to delete


#### Example POST Object

```json
{
    "id": 576894
}
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

Hide a comment by  ID

Base URL is `https://e621.net/comment/hide.json`

**Note**: This does not effect the API-facing endpoints and is typically only done from a user's perspective

#### POST Parameters

`id` is **required**

- **id** - ID of the comment to hide


#### Example POST Object

```json
{
    "id": 576894
}
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

Unhide a comment by  ID

Base URL is `https://e621.net/comment/unhide.json`

**Note**: This does not effect the API-facing endpoints and is typically only done from a user's perspective

#### POST Parameters

`id` is **required**

- **id** - ID of the comment to unhide


#### Example POST Object

```json
{
    "id": 576894
}
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

Update a comment's body. You must be the owner of a comment to update it

Base URL is `https://e621.net/comment/update.json`

#### POST Parameters

`id` and `comment[body]` are **required**

- **id** - ID of the comment to update


#### Example POST Object

```json
{
    "id": 576894,
    "comment[body]": "Updated comment body"
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>

### Vote

Vote is a special endpoint that required an AJAX call. Your request headers must contain `X-Requested-With: XMLHttpRequests`

Base URL is `https://e621.net/comment/vote.json`

**Note**: To remove a vote, send a request using the same `score` given previously (e.g. if it was voted up, vote up again to return to neutral).

#### POST Parameters

`id` and `score` are **required**

- **id** - ID of the comment to vote on
- **score** - Can be `up` to upvote or `down` to downvote

#### Example POST Object

```json
{
    "id": 576894,
    "score": "up"
}
```

#### Response

Response object should look similar to the object below. `?` representing a response property that may or may not be returned

```typescript
    success: boolean,
    reason?: string,
    message?: string
```
</br>