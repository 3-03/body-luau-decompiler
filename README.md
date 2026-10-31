<div align="center">

<pre>
          ( x . x )
[---------- body ----------]
</pre>

**save · decompile · export**

A small loader that connects Body Decompiler with UniversalSynSaveInstance.

</div>

## What it does

`body` saves the instance tree visible to the client and uses the local Body Decompiler bridge to restore source code for accessible scripts.

- saves GUI, models, parts, folders and other replicated instances;
- handles `ModuleScript`, `LocalScript` and client-visible `Script` objects;
- exports places as `.rbxlx` and models as `.rbxmx`;
- falls back to the executor's native `decompile` function if the local bridge is unavailable;
- exposes the familiar `synsaveinstance(options)` entry point.

## Quick start

Start the local Body Decompiler bridge, then run:

```luau
local synsaveinstance = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/3-03/body-luau-decompiler/main/body_decompiler.lua"
))()

synsaveinstance({
    FilePath = "SavedPlace.rbxlx",
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
    FilePath = "SavedPlace.rbxlx",
    mode = "full",
    Decompile = true,
})
```

Save one GUI as a model:

```luau
synsaveinstance({
    Object = game.Players.LocalPlayer.PlayerGui.YourGui,
    FilePath = "YourGui.rbxmx",
    IsModel = true,
    Decompile = true,
})
```

## Requirements

- an executor HTTP request API;
- `getscriptbytecode` for bridge decompilation;
- `loadstring` and the file APIs required by UniversalSynSaveInstance;
- the local Body Decompiler bridge listening on `127.0.0.1:28191`.

## Client visibility

The loader can only export objects replicated to the client. Server-only content from `ServerScriptService`, `ServerStorage` and non-replicated server scripts is not accessible from a client executor.

Use this tool only with experiences you own or are authorized to inspect.

## Credits

Built around [UniversalSynSaveInstance](https://github.com/luau/UniversalSynSaveInstance).

Required credit: `UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw`

UniversalSynSaveInstance remains subject to its [upstream license](https://github.com/luau/UniversalSynSaveInstance/blob/main/LICENSE).

## Copyright

Copyright © 2026 3-03. All rights reserved. No permission is granted to copy, modify, redistribute, sublicense or sell this loader except where required by applicable third-party licenses.
