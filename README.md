### Homepage Snippets

This repository contains snippets for the ably.com homepage as required by [SDK-878](https://ably.atlassian.net/browse/SDK-878)

### Contributing

To add a new set of snippets create a top level directory in this repository named after the language the snippets are for and add the snippets in that directory.


Regarding the max practical width in the design, this is the guideline

- the absolute max-width before the code will wrap is 64 characters
- the recommended length is 60 characters
- ATM the vertical line count is 5, before a scrollbar appears (subject to change)

for this example .... extract the Ojbect literal

**from**
```
final channel = ably.channels.get('doc:mars-launch-plan');
await channel.publish('update', {'pos': chatAt, 'insert': 'Send Grimes first'});
```
**to**

```
final channel = ably.channels.get('doc:mars-launch-plan');
const options = {'pos': chatAt, 'insert': 'Send Grimes first'};
await channel.publish('update', options);
```
