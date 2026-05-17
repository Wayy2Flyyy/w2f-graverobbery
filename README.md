# w2f-graverobbery

Cemetery scavenging minigame for **Qbox** (`qbx_core`) plus **`ox_lib`**, **`ox_target`**, and **`ox_inventory`** (install/configure those deps from your usual Qbox stack — see [docs.qbox.re](https://docs.qbox.re/)).

Players need the shovel item referenced by `Config.RequiredItem` (`shovel` by default). Successful digs roll loot from `config.lua → Config.Loot` and animate through `nui/digging`.

<img width="1484" height="837" alt="image" src="https://github.com/user-attachments/assets/54ebebf8-0b8b-4f76-b6c3-a233cb6d195b" />

<img width="1484" height="834" alt="image" src="https://github.com/user-attachments/assets/a0c0d9a5-0720-43f6-a243-5b767a14fb95" />

<img width="1488" height="835" alt="image" src="https://github.com/user-attachments/assets/4e6942ba-ffba-40b4-bdf4-b37e7b6d6f36" />

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

3. Register **every loot item plus the shovel** in `ox_inventory/data/items.lua` (merge these entries into the main `return { … }` table). Any missing key silently blocks rewards:

```lua
['shovel'] = {
    label = 'Grave Shovel',
    weight = 3000,
    stack = false,
    close = false,
},

['bone'] = {
    label = 'Bone',
    weight = 200,
    stack = true,
    close = true,
},

['dirt'] = {
    label = 'Dirt',
    weight = 800,
    stack = true,
    close = true,
},

['old_ring'] = {
    label = 'Old Ring',
    weight = 100,
    stack = true,
    close = true,
},

['silver_coin'] = {
    label = 'Silver Coin',
    weight = 50,
    stack = true,
    close = true,
},

['ruby'] = {
    label = 'Ruby',
    weight = 50,
    stack = true,
    close = true,
},

['emerald'] = {
    label = 'Emerald',
    weight = 50,
    stack = true,
    close = true,
},

['diamond'] = {
    label = 'Diamond',
    weight = 30,
    stack = true,
    close = true,
},

['old_weapon'] = {
    label = 'Old Weapon',
    weight = 4000,
    stack = true,
    close = true,
},

['gold_necklace'] = {
    label = 'Gold Necklace',
    weight = 300,
    stack = true,
    close = true,
},

['ancient_artifact'] = {
    label = 'Ancient Artifact',
    weight = 600,
    stack = true,
    close = true,
},

['cursed_skull'] = {
    label = 'Cursed Skull',
    weight = 1200,
    stack = true,
    close = true,
},

['treasure_map'] = {
    label = 'Treasure Map',
    weight = 100,
    stack = true,
    close = true,
},
```

**Inventory icons**: add **`{item}.png`** files for each ox key (`shovel`, every `Config.Loot` entry) under **`install_assets/items/`**, then deploy them to **`ox_inventory/web/images/`** — see **`install_assets/README.md`**.

4. Populate `WebhookConfig.LootWebhook` inside `webhook_config.lua` with your server’s webhook URL, or leave it empty to silence HTTP logging:

```lua
WebhookConfig.LootWebhook = ''
```

## Customizing

Tune grave locations, durations, shovel checks, loot weights (`Config.Loot`), webhook colours, and locale strings through `config.lua` plus `locales/`.
