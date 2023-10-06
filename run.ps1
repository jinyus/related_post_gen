# Read the first arg passed to the script
$first_arg = $args[0]

$HYPER = 0
if (Get-Command hyperfine -ErrorAction SilentlyContinue) {
    $HYPER = 1
}

$EXT = if ([System.Environment]::OSVersion.Platform -eq "Unix") {
    ""
} else {
    ".exe"
}

function run_go {
    Write-Output "Running Go"
    Set-Location ./go
    $env:GOEXPERIMENT='arenas'
    go build
    if ($HYPER -eq 1) {
        hyperfine -r 10 -w 5 --show-output "./related$EXT"
    }
    else {
        Measure-Command { "./related$EXT" }
    }
    check_output "related_posts_go.json"
}

function run_python {
    Write-Output "Running Python"
    Set-Location ./python
    if (!(Test-Path "./venv")) {
        python3 -m venv venv
    }
    venv\Scripts\activate
    if (!(pip freeze | Select-String -Pattern "ujson")) {
        pip install -r requirements.txt
    }
    if ($HYPER -eq 1) {
        hyperfine -r 5 --show-output "python3 ./related.py"
    }
    else {
        Measure-Command { python3 ./related.py }
    }
    deactivate
    check_output "related_posts_python.json"
}

function run_js {
    param($title)
    Write-Output "Running $title"
    Set-Location ./js
    if ($HYPER -eq 1) {
        if ($title -eq "deno") {
            hyperfine -r 5 --show-output "deno run --allow-read --allow-write deno.js"
        }
        else {
            hyperfine -r 5 --show-output "$title $title.js"
        }
    }
    else {
        Measure-Command { & $title "$title.js" }
    }
    check_output "related_posts_$title.json"
}

function run_fsharp {
    Write-Output "Running FSharp"
    Set-Location ./fsharp
    dotnet restore
    dotnet publish -c release
    if ($HYPER -eq 1) {
        hyperfine -r 5 -w 2 --show-output "./bin/release/net7.0/fsharp$EXT"
    }
    else {
        Measure-Command { "./bin/release/net7.0/fsharp$EXT" }
    }
    check_output "related_posts_fsharp.json"
}

function run_csharp {
    Write-Output "Running CSharp"
    Set-Location ./csharp
    dotnet restore
    dotnet publish -c release --self-contained -o "bin/release/net7.0/publish"
    if ($HYPER -eq 1) {
        hyperfine -r 5 -w 2 --show-output "./bin/release/net7.0/publish/related$EXT"
    }
    else {
        Measure-Command { "./bin/release/net7.0/publish/related$EXT" }
    }
    check_output "related_posts_csharp.json"
}

function check_output {
    param($file)
    Set-Location ..
    Write-Output "Checking output"
    python3 verify.py $file
}

switch($first_arg) {
    "go" { run_go }
    "py" { run_python }
    "node" { run_js "node" }
    "bun" { run_js "bun" }
    "deno" { run_js "deno" }
    "fsharp" { run_fsharp }
    "csharp" { run_csharp }
    "all" {
        Write-Output "Running all"
        run_go
        run_python
        run_js "node"
        run_js "bun"
        run_js "deno"
        run_fsharp
        Write-Output "Finished running all"
    }
    default { Write-Output "Valid args: go | py | node | bun | deno | fsharp | csharp | all . Unknown argument: $first_arg" }
}
