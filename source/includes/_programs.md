# Programs

## Overview

Retrieve all the information regarding the programs that you created.

## GET All Programs

> Example to get all the programs.

```shell
curl --request GET \
  --url https://api.smarterselect.com/v1/providers/:provider_id/programs\
  --header 'authorization: Bearer {token}'
```

> Response body

```shell
[
  {
    "id": 12556,
    "provider_id": 1234,
    "name": "Common Program 1",
    "description": "This is a common program ",
    "deadline": "2019-08-25T23:00:00.000Z",
    "active": true,
    "created_on": "2018-11-09T21:18:31.023Z",
    "updated_on": "2018-11-09T21:18:36.558Z",
    "checklist_id": 12568,
    "logo": "smarterselect_logo.jpg",
    "background_color": null,
    "font_color": null,
    "font_family": null,
    "normal_font_size": null,
    "custom_css": null,
    "award_amount": "500.0",
    "number_of_awards": 5,
    "total_amount": "2500.0",
    "renewable": true,
    "requirements": "These are the common program's requirements",
    "info_email": "john+provider@smarterselect.com",
    "contact_name": "John Doe",
    "common": true,
    "common_scholarship_id": null,
    "recommender_deadline": "2019-09-08T23:00:00.000Z",
    "evaluator_deadline": "2019-09-26T00:00:00.000Z",
    "sds": true,
    "facebook_url": "",
    "evaluation_anonymous": true,
    "autologin_enabled": null,
    "security_key": null,
    "assign_to_evaluator": false,
    "filter_evaluator_email": false,
    "evaluator_email_filter": null,
    "short_description": "program short description ",
    "matching_configured": null,
    "disable_application_preview": false,
    "allow_multiple_applications_per_user": true,
    "lock_after_submit": true,
    "controlled_app": false,
    "notification_on_submission": true,
    "controlled_app_minutes": 0,
    "display_program_info_if_inactive": false,
    "public": false,
    "hide_facebook_sharing": true,
    "view_after_deadline": false,
    "survey_app": false,
    "redirect_url": "www.google.com",
    "confirmation_text": "Thank you for applying. Have a nice one!",
    "evaluation_db_search": false,
    "hide_for_apps_table": false,
    "single_sign_on": false,
    "nickname": "Common app ",
    "short_url": "https://goo.gl/link",
    "sms": true,
    "redirect_logout_uri": "",
    "eval_share_notes": true,
    "program_cycle_id": 100,
    "use_contact_info": false,
    "contact_address": "Somewhere",
    "contact_city": "Some City",
    "contact_state": "AL",
    "contact_zip_code": "2000"
  }
]
```

### Description

Get a List for all the programs asociated to the account

### HTTP Request

`GET https://api.smarterselect.com/v1/providers/:provider_id/programs`

### Arguments

| Parameter | Location | Type | Description
| --------- | -------- | ---- | -----------
| :provider_id <strong class="required">required</strong> | path parameter | integer | ID of the Provider that wants to check the information.

### Response

| Property | Type | Description
| -------- | ---- | -----------
| <code>id</code> | integer | auto-generated object identifier.
| <code>provider_id</code> | integer | provider ID that requested for the programs.
| <code>name</code> | string | name of the program
| <code>description</code> | string | description of the program
| <code>deadline</code> | datetime | final date that if set to fill up the program
| <code>active</code> | boolean | if the program is active
| <code>created_on</code> | datetime | when the program was created
| <code>updated_on</code> | datetime | last time that some changed was made on the program
| <code>checklist_id</code> | integer | ID for the checklist
| <code>logo</code> | string | name of the file for the logo
| <code>background_color</code> | string | color of the background
| <code>font_color</code> | string | color of the font
| <code>font_family</code> | string | font family
| <code>normal_font_size</code> | string | normal font size
| <code>custom_css</code> | string | custom css if has
| <code>award_amount</code> | string | quantity for the award
| <code>number_of_awards</code> | integer | total number of awards
| <code>total_amount</code> | string | total amount for all the awards
| <code>renewable</code> | boolean | if the program is renewable
| <code>requirements</code> | string | requirements for the program
| <code>info_email</code> | string | info email of the program
| <code>contact_name</code> | string | name of the contact
| <code>common</code> | boolean | if the program is common
| <code>common_scholarship_id</code> | string | null
| <code>recommender_deadline</code> | string | XXXXX
| <code>evaluator_deadline</code> | string | XXXXXX
| <code>sds</code> | boolean | XXXXXX
| <code>facebook_url</code> | string | url for this program on facebook
| <code>evaluation_anonymous</code> | boolean | if the evaluation if anonymous
| <code>autologin_enabled</code> | string | if autologin is enabled
| <code>security_key</code> | string | security key
| <code>assign_to_evaluator</code> | boolean | if is assigned to an evaluator
| <code>filter_evaluator_email</code> | boolean | if can filter evaluator email
| <code>evaluator_email_filter</code> | string | the filter applied to the email
| <code>short_description</code> | string | short description
| <code>matching_configured</code> | string | the matching configuration
| <code>disable_application_preview</code> | boolean | if application preview should be disabled.
| <code>allow_multiple_applications_per_user</code> | boolean | if multiple users can apply
| <code>lock_after_submit</code> | boolean | if this program should be locked after is submitted
| <code>controlled_app</code> | boolean | if is an controlled app
| <code>notification_on_submission</code> | boolean | if is notificated to the user after submission
| <code>controlled_app_minutes</code> | integer | minutes for controlled app
| <code>display_program_info_if_inactive</code> | string |displayed information
| <code>public</code> | boolean | if this program is public
| <code>hide_facebook_sharing</code> | boolean | if facebook sharing should be hidden
| <code>view_after_deadline</code> | boolean | if can be displayed after the deadline
| <code>survey_app</code> | boolean | if is an survey app
| <code>redirect_url</code> | string | link to redirect
| <code>confirmation_text</code> | string | Text displayed after confirmation
| <code>evaluation_db_search</code> | boolean | search on database
| <code>hide_for_apps_table</code> | boolean | if this should be showed on table
| <code>single_sign_on</code> | boolean | false
| <code>nickname</code> | string | nickname of the program
| <code>short_url</code> | string | shorter URL meant to share
| <code>sms</code> | boolean | if can send SMS
| <code>redirect_logout_uri</code> | string | URI to redirect after logout
| <code>eval_share_notes</code> | boolean | notes of the sharing
| <code>program_cycle_id</code> | string | id of the program cycle
| <code>use_contact_info</code> | boolean | if contact info can be used
| <code>contact_address</code> | string | Address of the contact
| <code>contact_city</code> | string | city of the contact
| <code>contact_state</code> | string | state of the contact
| <code>contact_zip_code</code> | string | zip code of the contact
