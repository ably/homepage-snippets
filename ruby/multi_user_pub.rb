require 'ably'

class Editor
  def current_position
  end
end

editor = Editor.new

ably = Ably::Realtime.new(key: ENV['ABLY_API_KEY'])
channel = ably.channels.get 'doc:mars-launch-plan'
channel.publish'update', { pos: editor.current_position, insert: 'Send Grimes first' }

