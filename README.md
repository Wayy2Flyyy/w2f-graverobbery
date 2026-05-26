# w2f-graverobbery

Cemetery scavenging activity for **Qbox/QBCore/ESX** using `ox_lib`, `ox_target`, and `ox_inventory`.

Players need the item configured in `Config.RequiredItem` (`shovel` by default). Successful digs use the digging NUI minigame, then roll loot from `config.lua` -> `Config.Loot`.

## Preview

![Graverobbery preview](https://github.com/user-attachments/assets/54ebebf8-0b8b-4f76-b6c3-a233cb6d195b)

![Graverobbery mini game 1](https://github.com/user-attachments/assets/a0c0d9a5-0720-43f6-a243-5b767a14fb95)

![Graverobbery mini game 2](https://github.com/user-attachments/assets/4e6942ba-ffba-40b4-bdf4-b37e7b6d6f36)

## Requirements

- One framework: `qbx_core` (Qbox), `qb-core` (QBCore), or `es_extended` (ESX Legacy)
- `ox_lib`
- `ox_target`
- `ox_inventory`

## Quick Start

1. Put the folder in `resources/[w2f]/w2f-graverobbery` and keep the resource name exactly `w2f-graverobbery`.
2. Add the `items.lua` block below to `resources/[ox]/ox_inventory/data/items.lua` inside the main `return { ... }` table.
3. Add inventory icons if you want item images (`install_assets/README.md` lists the file names).
4. Configure `webhook_config.lua` if you want Discord loot logs.
5. Start resources in this order:

```cfg
ensure ox_lib
ensure ox_target
ensure ox_inventory
ensure <your framework>
ensure w2f-graverobbery
```

After editing inventory items or icons, restart:

```cfg
restart ox_inventory
restart w2f-graverobbery
```

## ox_inventory `items.lua`

Paste this block into `data/items.lua` inside the main `return { ... }` table.

Do not duplicate keys if your server already defines one of these items.

```lua
    -- ======================================================================
    -- W2F GRAVEROBBERY - Required tool
    -- ======================================================================

    ['shovel'] = {
        label = 'Grave Shovel',
        weight = 3000,
        stack = false,
        close = false,
    },

    -- ======================================================================
    -- W2F GRAVEROBBERY - Common loot
    -- ======================================================================

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

    -- ======================================================================
    -- W2F GRAVEROBBERY - Gem loot
    -- ======================================================================

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

    -- ======================================================================
    -- W2F GRAVEROBBERY - Rare loot
    -- ======================================================================

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

## Item Categories At A Glance

```text
Required tool:
shovel

Common loot:
bone, dirt, old_ring, silver_coin

Gem loot:
ruby, emerald, diamond

Rare loot:
old_weapon, gold_necklace, ancient_artifact, cursed_skull, treasure_map
```

## Inventory Images

Inventory item PNGs are optional, but recommended.

Copy matching `{item}.png` files into:

```text
resources/[ox]/ox_inventory/web/images/
```

Required image names are listed in `install_assets/README.md`.

The `nui/digging/svg/` files are for the digging minigame UI and are separate from ox_inventory item images.

## Webhook Setup

Open `webhook_config.lua`.

Leave this empty to disable Discord loot logging:

```lua
WebhookConfig.LootWebhook = ''
```

Or set it to your Discord webhook URL:

```lua
WebhookConfig.LootWebhook = 'https://discord.com/api/webhooks/...'
```

Optional display settings:

```lua
WebhookConfig.BotName = 'W2F Grave Robbery'
WebhookConfig.BotAvatar = ''
WebhookConfig.Colors = {
    loot = 3066993,
}
```

## Config Map

| File | Purpose |
| ------ | ------- |
| `config.lua` | Grave locations, required item, dig time, distance checks, loot table, loot amounts |
| `webhook_config.lua` | Discord webhook URL, bot name/avatar, embed colour |
| `locales/en.lua` | English locale strings |
| `locales/locale.lua` | Locale helper |
| `client/main.lua` | Grave target setup and digging/minigame client flow |
| `server/server.lua` | Loot rolls, inventory rewards, cooldown checks, webhook logging |
| `nui/digging/` | Digging minigame UI |
| `install_assets/README.md` | ox_inventory icon file list |

## Customization

Tune the main gameplay in `config.lua`:

- `Config.RequiredItem`: required tool item, default `shovel`.
- `Config.DiggingTime`: dig progress time in milliseconds, default `10000`.
- `Config.MaxDigDistance`: maximum distance allowed during digging.
- `Config.Graves`: grave target coordinates, labels, icons, distances, and cooldowns.
- `Config.Loot`: loot items, labels, min/max amounts, and weighted chances.
- `Config.MinLootItems` / `Config.MaxLootItems`: number of loot rolls per successful dig.

Loot weights are relative. The default table totals `1000`, so each weight point is roughly `0.1%` chance per roll.

## Troubleshooting

| Issue | Fix |
| ----- | --- |
| Grave target does not appear | Make sure `ox_target` is started before `w2f-graverobbery` and grave coords are valid. |
| Player cannot dig | Make sure the player has `Config.RequiredItem` (`shovel` by default). |
| Loot is missing after success | Make sure every `Config.Loot` item exists in `ox_inventory/data/items.lua`. |
| Item icons are blank | Copy `{item}.png` files into `ox_inventory/web/images/`, then restart `ox_inventory`. |
| Discord logs do not send | Check `WebhookConfig.LootWebhook`; leave it empty if logging is not wanted. |
| NUI/minigame is blank | Confirm `nui/digging/index.html` and `nui/digging/svg/*.svg` are listed in `fxmanifest.lua`. |
