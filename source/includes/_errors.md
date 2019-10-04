# Errors

The API may throw different results if the request didn't follow the right flow. Here is a list of possible errors and what might be failing. Fix the error with the information provided in this list and try again.

The API uses the following error codes:

Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid.
401 | Unauthorized -- Your Access Token expired or is invalid.
403 | Forbidden -- You have the permissions to make this request.
404 | Not Found -- The URL provided doesn't exist, or the resource that you want to access doesn't exist.
405 | Method Not Allowed -- You tried to access with an invalid method.
406 | Not Acceptable -- You requested a format that isn't json.
410 | Gone -- The resource requested has been removed from our servers.
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
