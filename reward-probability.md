# W2F Grave Robbery — Reward probability

Values are driven by **`config.lua`** (`Config.Loot`). Each successful dig runs **1–3** independent rolls (see `Config.MinLootItems` / `Config.MaxLootItems`).

Approximate **chance per roll** (single pick):

| Reward | Probability |
|--------|-------------|
| Bone | 30.0% |
| Dirt | 28.0% |
| Old Ring | 12.0% |
| Silver Coin | 10.0% |
| Ruby | 4.5% |
| Emerald | 4.5% |
| Old Weapon | 3.5% |
| Gold Necklace | 3.0% |
| Diamond | 2.5% |
| Ancient Artifact | 1.2% |
| Cursed Skull | 0.6% |
| Treasure Map | 0.2% |

The same reward can be rolled more than once in one dig. Edit **`config.lua`** and restart the resource if you change balances.
