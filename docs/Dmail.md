# Dmail

Dmails are e621's semi-custom private messaging relay system. It works kind of like a site specific emailing system rather than something like an IM client.

**Note**: For **ANY** dmail API actions you must be logged in to e621 and provide your API credentials even when using the GET type endpoints

## GET Endpoints

### List

List a set of your dmails based on given parameters. If none are given you will get your most recent sent and received dmails excluding `hidden` dmails

Base URL is `https://e621.net/dmail/inbox.json`

#### Parameters

- **from_name** - Filter dmails sent by a given user
- **to_name** -  Filter dmails received by a given user
- **title** -  Return any dmails matching the given string in their _title_ (does not search the contents of the dmail)
- **date_start** - Returns dmails sent AFTER a given date (yyyy-mm-dd format)
- **date_end** - Returns dmails sent BEFORE a given date (yyyy-mm-dd format)
- **show** -  Filter the type of dmail to retive. Can be `in` for _inbox_, `out` for _outbox_ or `all` for both
- **visibility** - Set the visibility of dmails to be retrieved. Can be `hidden` to retrieve hidden dmails, `unhidden` to get all visible dmails or `all` to retriece all dmails. Default is `unhidden`
- **page** - The page number to return


#### Typical Response Example

```typescript
[
    {
            id: number,
        parent_id: number,
        title: string,
        body: string,
        has_seen: boolean,
        created_at: { json_class: string, s: number, n: number },
        from_id: number,
        from: string,
        to_id: number,
        to: string
    },
    // ...
]
```

[Example JSON Request + Response](https://e621.net/dmail/inbox.json)

[Example XML Request + Response](https://e621.net/dmail/inbox.xml)
</br>

### Show

Get a single dmail by ID

Base URL is `https://e621.net/dmail/show.json`

#### Parameters

- **id** - ID of the dmail to retrive


#### Typical Response Example

```typescript
{
    id: number,
    parent_id: number,
    title: string,
    body: string,
    has_seen: boolean,
    created_at: { json_class: string, s: number, n: number },
    from_id: number,
    from: string,
    to_id: number,
    to: string
}
```

**EXAMPLES ARE NOT AVAILABLE FOR THIS ENDPOINT**
</br>
</br>

## POST Endpoints

### Create

Create a new dmail and send it immediatelys

Base URL is `https://e621.net/dmail/create.json`

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

### Hide All

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

### Mark All As Read

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

### Unhide All

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