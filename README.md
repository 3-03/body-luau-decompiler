# Body Luau Decompiler

UniversalSynSaveInstance-compatible Roblox Luau save/decompile loader.

The public repository contains only the transformed distribution build. The private, readable source is maintained separately.

## Usage

Start the local Body Decompiler bridge, then load the public build:

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

The loader saves only instances and scripts visible to the client. Server-only objects in `ServerScriptService` and `ServerStorage` are not replicated and cannot be exported by a client executor.

## Requirements

- executor HTTP request API;
- `getscriptbytecode` for bridge decompilation;
- file APIs required by UniversalSynSaveInstance;
- local Body Decompiler bridge at `127.0.0.1:28191`.

## Attribution

This loader integrates [UniversalSynSaveInstance](https://github.com/luau/UniversalSynSaveInstance).

Required credit: `UniversalSynSaveInstance https://discord.gg/wx4ThpAsmw`

UniversalSynSaveInstance remains subject to its [upstream license](https://github.com/luau/UniversalSynSaveInstance/blob/main/LICENSE).

## Copyright

Copyright © 2026 3-03. All rights reserved. No permission is granted to copy, modify, redistribute, sublicense, or sell this loader except where required by applicable third-party licenses.
