core.register_on_receiving_chat_message(function(message)
    if core.strip_colors(message):find("bot leave", 1, true) then
        core.disconnect()
    end
end)
