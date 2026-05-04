$ErrorActionPreference = "Stop"

$rBin = "C:\Program Files\R\R-4.5.2\bin"
$quartoBin = "C:\Program Files\Quarto\bin"
$deno = Join-Path $quartoBin "tools\x86_64\deno.exe"
$quartoJs = Join-Path $quartoBin "quarto.js"

$env:PATH = "$rBin;$env:PATH"
$env:QUARTO_BIN_PATH = $quartoBin
$env:QUARTO_SHARE_PATH = "C:\Program Files\Quarto\share"

& $deno run `
  --v8-flags=--enable-experimental-regexp-engine,--max-old-space-size=8192,--max-heap-size=8192,--stack-trace-limit=100 `
  --cached-only `
  --unstable-kv `
  --unstable-ffi `
  --no-config `
  --no-lock `
  --allow-all `
  --no-check `
  $quartoJs `
  render hw1_A69043689.qmd
