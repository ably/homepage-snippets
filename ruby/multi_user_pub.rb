channel = ably.channels.get('doc:mars-launch-plan')
channel.publish('update', { pos: editor.current_position, insert: 'Send Grimes first' })
