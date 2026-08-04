local M = {}

function M:peek(job)
    local start = os.clock()
    local cache = ya.file_cache(job)
    if not cache then
        return
    end

    local cache_jpg = Url(tostring(cache) .. ".jpg")

    if self:preload(job) ~= 1 then
        return
    end

    local delay = (rt and rt.preview and rt.preview.image_delay) 
               or (PREVIEW and PREVIEW.image_delay) 
               or 30

    ya.sleep(math.max(0, delay / 1000 + start - os.clock()))
    ya.image_show(cache, job.area)
    ya.preview_widget(job, {})
end

function M:seek(job)
    local h = cx.active.current.hovered
    if h and h.url == job.file.url then
        local step = ya.clamp(-1, job.units, 1)
        ya.emit("peek", { math.max(0, cx.active.preview.skip + step), only_if = job.file.url })
    end
end

function M:preload(job)
    local cache = ya.file_cache(job)
    if not cache then
        return 1
    end

    local cache_jpg = Url(tostring(cache) .. ".jpg")

    local cha = fs.cha(cache_jpg)
    if cha and cha.len > 0 then
        return 1
    end
	local child, code = Command("imlite")
		:arg("resize")
		:arg(tostring(job.file.url))
		:arg(tostring(cache))
		:arg("900x600")
		:arg("-f")
		:arg("jpeg")
		:spawn()

    if not child then
        ya.err("Failed to spawn qoz binary, error code: " .. tostring(code))
        return 0
    end

    local status = child:wait()
    return (status and status.success) and 1 or 2
end

return M
