local root = ya.sync(function()
	return cx.active.current.cwd
end)

local function run_fd(args)
	local cwd = root()
	if cwd then
		ya.emit("cd", { cwd })
	else
		error("Failed to get cwd")
	end

	ya.emit("search_do", {
		"",
		via = "fd",
		args = args or "",
	})
end

return {
	entry = function()
		local value, event = ya.input({
			pos = { "top-center", y = 3, w = 90 },
			title = "Custom args for fd",
			realtime = false,
		})

		if event ~= 1 or not value then
			return
		end

		local status, err = pcall(run_fd, value)
		ya.notify({
			title = "Running fd",
			content = status and ("fd " .. value) or tostring(err),
			timeout = 6.5,
			level = status and "info" or "error",
		})
	end,
}
