def customer_state(session_id = nil)
  return { state: 'chat_disabled' } unless Setting.get('chat')

  return unless session_id
  chat_session = Chat::Session.find_by(session_id: session_id, state: %w[waiting running])
  return unless chat_session

  chat_session_running()

  return {state: 'offline'} if Chat.active_agent_count([id]).zero?
  waiting_count = Chat.waiting_chat_count(id)
  return {state: 'no_seats_available', queue: waiting_count, } if waiting_count >= max_queue

  { state: 'online' }
end

def chat_session_running()
  return if chat_session.state == 'running'
    user_chat_session()

    user = {
      name:   chat_user.fullname,
      avatar: url,
    }

    session = Chat::Session.messages_by_session_id(session_id)
    return { state: 'reconnect', session: session, agent: user} if session
    return { state: 'reconnect', position: chat_session.position } unless chat_session.state == 'waiting'
  
end

def user_chat_session()
  if chat_session.user_id
    chat_user = User.lookup(id: chat_session.user_id)
    url = nil
    user_image()
  end
end

def user_image()
  if chat_user.image && chat_user.image != 'none'
    url = "#{Setting.get('http_type')}://#{Setting.get('fqdn')}/api/v1/users/image/#{chat_user.image}"
  end
end
