# w2f-graverobbery

Cemetery scavenging minigame for **Qbox** (`qbx_core`) plus **`ox_lib`**, **`ox_target`**, and **`ox_inventory`** (install/configure those deps from your usual Qbox stack — see [docs.qbox.re](https://docs.qbox.re/)).

Players need the shovel item referenced by `Config.RequiredItem` (`shovel` by default). Successful digs roll loot from `config.lua → Config.Loot` and animate through `nui/digging`.

## Install

1. Put `w2f-graverobbery` beneath `resources/…/` and reference it verbatim in `ensure w2f-graverobbery`.

2. Start order:

   ```
   ensure ox_lib
   ensure ox_target
   ensure ox_inventory
   ensure qbx_core
   ensure w2f-graverobbery
   ```

3. Register **every loot item plus the shovel** in `ox_inventory/data/items.lua`. Any missing key silently blocks rewards:

```lua
['shovel'] = {
    label = 'Grave Shovel',
    weight = 3000,
    stack = false,
    close = false,
},

['bone'] = {
    label = 'Animal Bone',
    weight = 200,
    stack = true,
    close = true,
},
```

Repeat the shape for rows such as `dirt`, `ruby`, `emerald`, `ancient_artifact`, etc.—copy names exactly from `config.lua`.

**Inventory icons**: add **`{item}.png`** files for each ox key (`shovel`, every `Config.Loot` entry) under **`install_assets/items/`**, then deploy them to **`ox_inventory/web/images/`** — see **`install_assets/README.md`**.

4. Populate `WebhookConfig.LootWebhook` inside `webhook_config.lua` with your server’s webhook URL, or leave it empty to silence HTTP logging:

```lua
WebhookConfig.LootWebhook = ''
```

## Customizing

Tune grave locations, durations, shovel checks, loot weights (`Config.Loot`), webhook colours, and locale strings through `config.lua` plus `locales/`.
