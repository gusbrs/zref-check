#!/usr/bin/env texlua

-- Build script for "zref-check" files

-- Identify the bundle and module
bundle = ""
module = "zref-check"

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Two runs for label testing
checkruns = 2

-- Set version and release date automatically
tagfiles = {"zref-check.dtx", "CHANGELOG.md"}

function update_tag(file, content, tagname, tagdate)
   tagname = string.gsub(tagname, "^v", "")
   if string.match(file, "^zref%-check%.dtx$") then
      content = string.gsub(
         content,
         "\n\\ProvidesExplPackage %{zref%-check%} %{[^}]+%} %{[^}]+%}\n",
         "\n\\ProvidesExplPackage {zref-check} {"
         .. tagdate .. "} {" .. tagname .. "}\n")
   elseif string.match(file, "^CHANGELOG%.md$") then
      local url = "https://github.com/gusbrs/zref-check/compare/"
      content = string.gsub(
         content,
         "(## %[Unreleased%]%(.-)%.%.%.HEAD%)",
         "%1...v" .. tagname .. ")")
      content = string.gsub(
         content,
         "## %[Unreleased%]",
         "## [Unreleased](" .. url .. "v" .. tagname .. "...HEAD)\n\n"
         .. "## [v" .. tagname .."]")
   end
   return content
end
