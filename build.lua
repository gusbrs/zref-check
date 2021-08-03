#!/usr/bin/env texlua

-- Build script for "zref-check" files

-- Identify the bundle and module
bundle = ""
module = "zref-check"

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Two runs for label testing
checkruns = 2

-- Set version, release date and copyright automatically
tagfiles = {"zref-check.dtx",
            "CHANGELOG.md",
            "zref-check.ins",
            "zref-check.tex",
            "zref-check-code.tex"}

function update_tag(file, content, tagname, tagdate)
   tagname = string.gsub(tagname, "^v", "")
   local tagyear = string.match(tagdate, "%d%d%d%d")
   if string.match(file, "^zref%-check%.dtx$") then
      content = string.gsub(
         content,
         "\n\\ProvidesExplPackage %{zref%-check%} %{[^}]+%} %{[^}]+%}\n",
         "\n\\ProvidesExplPackage {zref-check} {"
         .. tagdate .. "} {" .. tagname .. "}\n")
      if string.match(content, "Copyright%D-%d%d%d%d%-%d%d%d%d") then
         if not string.find(
            content, "Copyright%D-%d%d%d%d*%-" .. tagyear) then
            content = string.gsub(
               content,
               "Copyright(%D-)(%d%d%d%d%-)%d%d%d%d",
               "Copyright%1%2" .. tagyear)
         end
      else
         if not string.find(content, "Copyright%D-" .. tagyear) then
            content = string.gsub(
               content,
               "Copyright(%D-)(%d%d%d%d)",
               "Copyright%1%2-" .. tagyear)
         end
      end
   elseif string.match(file, "^CHANGELOG%.md$") then
      local url = "https://github.com/gusbrs/zref-check/compare/"
      content = string.gsub(
         content,
         "(## %[Unreleased%]%(.-)%.%.%.HEAD%)",
         "%1...v" .. tagname .. "), " .. tagdate)
      content = string.gsub(
         content,
         "## %[Unreleased%]",
         "## [Unreleased](" .. url .. "v" .. tagname .. "...HEAD)\n\n"
         .. "## [v" .. tagname .. "]")
   elseif string.match(file, "^zref%-check%.ins$") or
      string.match(file, "^zref%-check%.tex$") or
      string.match(file, "^zref%-check%-code%.tex$") then
      if string.match(content, "Copyright%D-%d%d%d%d%-%d%d%d%d") then
         if not string.find(
            content, "Copyright%D-%d%d%d%d*%-" .. tagyear) then
            content = string.gsub(
               content,
               "Copyright(%D-)(%d%d%d%d%-)%d%d%d%d",
               "Copyright%1%2" .. tagyear)
         end
      else
         if not string.find(content, "Copyright%D-" .. tagyear) then
            content = string.gsub(
               content,
               "Copyright(%D-)(%d%d%d%d)",
               "Copyright%1%2-" .. tagyear)
         end
      end
   end
   return content
end

function tag_hook(tagname)
  os.execute('git commit -a -m "Step release tag"')
  os.execute('git tag -a -m "" ' .. tagname)
end
