# Errors

The API may throw different results if the request didn't follow the right flow. Here is a list of possible errors and what might be failing. Fix the error with the information provided in this list and try again.

The API uses the following error codes:

Error Code | Meaning
---------- | -------
<code>400</code> | Bad Request -- Your request is invalid.
<code>401</code> | Unauthorized -- Your Access Token expired or is invalid.
<code>403</code> | Forbidden -- You dont have the permissions to make this request.
<code>404</code> | Not Found -- The URL provided doesn't exist, or the resource that you want to access doesn't exist.
<code>405</code> | Method Not Allowed -- You tried to access with an invalid method, e.g tried POST when the endpoint only allows GET.
<code>406</code> | Not Acceptable -- You requested a format that isn't json.
<code>410</code> | Gone -- The resource requested has been removed from our servers.
<code>500</code> | Internal Server Error -- We had a problem with our server. Try again later.
