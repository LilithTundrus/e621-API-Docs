# Comments

Comments are text entries related to _posts_

An index of all comments can be viewed [here](https://e621.net/comment/index) for reference

## GET Endpoints

### List

**e621 has marked this endpoint as incomplete**

Rettrieve a set of comments based on the given parameters. If none are given you receive the most recent comments made.

25 comments are returned per page and this is not configurable

Base URL is `https://e621.net/comment/index.json`

#### Parameters

- **post_id** - ID of the post to retrive comments made on that post
- **page** - The page number to return
- **status** - Type of comments to retrieve Can be `hidden`, `active` or `any`. Note that whether or not you can see other user's hidden comments is affected by your permission levels.


#### Typical Response Example

```typescript
    id: number,
    created_at: string,
    post_id: number,
    creator: string,
    creator_id: number,
    body: string,
    score: number
```

[Example JSON Request + Response](https://e621.net/comment/index.json?post_id=8595)

[Example XML Request + Response](https://e621.net/comment/index.xml?post_id=8595)
</br>

### Search

Endpoint description

**e621 has marked this endpoint as incomplete**

Base URL is ``

#### Parameters

- **** - 
- **page** - The page number to return


#### Typical Response Example

```typescript

```

[Example JSON Request + Response]()

[Example XML Request + Response]()
</br>

### Show

Endpoint description

Base URL is ``

#### Parameters

- **** - 
- **page** - The page number to return


#### Typical Response Example

```typescript

```

[Example JSON Request + Response]()

[Example XML Request + Response]()
</br>
</br>


## POST Endpoints

### Create

Endpoint description

Base URL is ``

#### POST Parameters

Required parameters

- **** - 
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

### Destroy

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

### Vote

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