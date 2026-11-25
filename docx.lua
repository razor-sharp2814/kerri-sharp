-- Word has no flexbox, so put a separator between each job title and its dates.
function Header(h)
  for i, el in ipairs(h.content) do
    if el.t == "Span" and el.classes:includes("dates") and h.content[i - 1]
        and h.content[i - 1].t == "Space" then
      h.content[i - 1] = pandoc.Str(" | ")
    end
  end
  return h
end

-- The page's <title> would otherwise appear above the name as a second heading.
function Meta(m)
  m.title = nil
  return m
end

-- Separate the contact details, which the page spaces out with CSS.
function Para(p)
  local is_contact = false
  for _, el in ipairs(p.content) do
    if el.t == "Link" and el.target:sub(1, 7) == "mailto:" then is_contact = true end
  end
  if not is_contact then return nil end
  for i, el in ipairs(p.content) do
    if (el.t == "Link" or el.t == "Span") and p.content[i - 1]
        and (p.content[i - 1].t == "Space" or p.content[i - 1].t == "SoftBreak") then
      p.content[i - 1] = pandoc.Str(" | ")
    end
  end
  return p
end
