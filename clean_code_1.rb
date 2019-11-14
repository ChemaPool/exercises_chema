def customer_state(session_id = nil)
  return unless !Setting.get('chat')
  { state: 'chat_disabled' }

  if session_id
    chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])

    if chat_session
      return unless chat_session.state == 'running'
      user = nil

      return user_chat_session()
      return user_image()
      user = {
        name:   chat_user.fullname,
        avatar: url,
      }

      session = Chat::Session.messages_by_session_id(session_id)
      return unless session?
      { state: 'reconnect', session: session, agent: user, }

      elsif chat_session.state == 'waiting'
        return {
          state:    'reconnect',
          position: chat_session.position,
        }
      end
      
    end
  end

  return unless Chat.active_agent_count([id]).zero?
  { state: 'offline' }

  waiting_count = Chat.waiting_chat_count(id)
  return unless waiting_count >= max_queue
  {state: 'no_seats_available', queue: waiting_count, }

  { state: 'online' }
end

def user_chat_session()
  if chat_session.user_id
    chat_user = User.lookup(id: chat_session.user_id)
    url = nil
end

def user_image()
  if chat_user.image && chat_user.image != 'none'
    url = "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
end
