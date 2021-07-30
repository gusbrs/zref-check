#!/usr/bin/env texlua

-- Build script for "zref-check" files

-- Identify the bundle and module
bundle = ""
module = "zref-check"

-- Typeset only the .tex files
typesetfiles = {"*.tex"}

-- Two runs for label testing
checkruns = 2