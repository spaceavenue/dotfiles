local wrappers = {
  ['('] = { '(', ')' }, [')'] = { '(', ')' },
  ['['] = { '[', ']' }, [']'] = { '[', ']' },
  ['{'] = { '{', '}' }, ['}'] = { '{', '}' },
  ['<'] = { '<', '>' }, ['>'] = { '<', '>' },
}

for key, pair in pairs(wrappers) do
  vim.keymap.set('v', 's' .. key, function()
    return 'c' .. pair[1] .. '<C-r>"' .. pair[2] .. '<Esc>'
  end, { expr = true, noremap = true })
end

