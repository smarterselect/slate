---
title: API Reference - SmarterSelect

language_tabs:
  - shell
  # - ruby
  # - python
  # - javascript

toc_footers:
  - <a href='https://www.smarterselect.com/' target='_blank'>SmarterSelect Main Page.</a>

includes:
  #- response_codes
  - authentication
  - account
  - users
  - eval_groups

search: true
---

# Basics

## Welcome

Welcome to SmarterSelect Public API!

With SmarterSelect API, you can consume your `provider` data, such as users information and reset passwords for your users.

On the left you can see examples on how to consume our API and the response objects you will get.

OK, let’s get started!

## Base URL

The base URL for all API requests is:

`https://api.smarterselect.com/api/v1`

## Versioning

The API version is included in the base URL of the request. The current version is `v1`.

## Requests

### Basic Concepts

The SmarterSelect API is organized around REST: users, apps, and other resources are accessed with URL endpoints and manipulated using HTTP GET, POST, and DELETE verbs. GET is used for reading resources, POST is used for creating and updating resources, and DELETE is used for deleting resources.

In general, resources identifiers are specified in the URL. In cases where objects are being created or updated, additional parameters are sent in the request body.

When reading, updating, or deleting existing resources, resource identifiers are specified in the URL.

### Headers

When making all requests, the authorization header must be set and include the API key in the token portion of the authorization header:

`Authorization: Bearer {token}`

In addition, when making requests that create or update a resource, parameters are sent as JSON in the POST request and the content type header must be set to the JSON content type: `Content-Type: application/json`

### Cross Origin Sharing

The SmarterSelect API supports Cross Origin Resource Sharing (CORS), so you can make requests from any location.
