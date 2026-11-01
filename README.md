<div align="center">

<pre>
( x . x )
[---------- body ----------]
</pre>

**save · decompile · export**

A small, single-file loader for UniversalSynSaveInstance and native executor decompilation.

</div>

## What it does

`body` saves the instance tree visible to the client and uses the executor's native `decompile` function to restore source code for accessible scripts.

- saves GUI, models, parts, folders and other replicated instances;
- handles `ModuleScript`, `LocalScript` and client-visible `Script` objects;
- exports places as `.rbxlx` and models as `.rbxmx`;
- works as one Luau file without a localhost bridge or platform-specific executable;
- supports Windows and macOS when the executor provides the required APIs;
- exposes the familiar `synsaveinstance(options)` entry point.

## Quick start

Run:

```luau
local synsaveinstance = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/3-03/body-luau-decompiler/main/body_decompiler.lua"
))()

synsaveinstance({
    FilePath = "SavedPlace.rbxl",
    Binary = true,
    Decompile = true,
    SaveBytecode = true,
    mode = "full",
})
```

The public file is an obfuscated distribution build. The readable source is maintained separately.

## Common examples

Save everything available to the client:

```luau
synsaveinstance({
    FilePath = "SavedPlace.rbxl",
    Binary = true,
    mode = "full",
    Decompile = true,
})
```

Save one GUI as a model:

```luau
synsaveinstance({
    Object = game.Players.LocalPlayer.PlayerGui.YourGui,
    FilePath = "YourGui.rbxm",
    Binary = true,
    IsModel = true,
    Decompile = true,
})
```

## Requirements

- `loadstring` and `game:HttpGet`;
- the executor's native `decompile(instance)` function for script recovery;
- `getscriptbytecode` when `SaveBytecode = true` is used;
- the file APIs required by UniversalSynSaveInstance.

If the executor does not provide `decompile`, instances and GUI can still be saved, but script source cannot be reconstructed by this loader.

## Client visibility

The loader can only export objects replicated to the client. Server-only content from `ServerScriptService`, `ServerStorage` and non-replicated server scripts is not accessible from a client executor.

Use this tool only with experiences you own or are authorized to inspect.

## Credits

Built around [UniversalSynSaveInstance](https://github.com/luau/UniversalSynSaveInstance).

Required credit: `UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw`

UniversalSynSaveInstance remains subject to its [upstream license](https://github.com/luau/UniversalSynSaveInstance/blob/main/LICENSE).

## Copyright

Copyright © 2026 3-03. All rights reserved. No permission is granted to copy, modify, redistribute, sublicense or sell this loader except where required by applicable third-party licenses.
