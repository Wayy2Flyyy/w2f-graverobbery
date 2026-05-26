function W2F.Framework.Notify(message, notifyType, duration)
    lib.notify({
        title = _U('notify_title'),
        description = message,
        type = notifyType or 'info',
        duration = duration or 3500,
    })
end
