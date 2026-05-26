Config = {}

Config.Framework = Config.Framework or 'auto' -- valid: 'auto', 'qbox', 'qbcore', 'esx'
Config.Locale = 'en'
Config.RequiredItem = 'shovel'
Config.DiggingTime = 10000
Config.MaxDigDistance = 4.5

Config.Graves = {
    { coords = vector3(-1758.35, -201.51, 56.3), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.28, -203.41, 56.53), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1758.71, -209.14, 56.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1780.9, -204.62, 54.29), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1769.32, -218.97, 53.32), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1767.03, -220.76, 53.53), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1733.92, -232.52, 55.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1715.09, -233.54, 55.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1711.75, -233.14, 55.1), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1704.11, -233.82, 55.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.19, -222.42, 54.8), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1745.74, -223.81, 55.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1742.42, -224.66, 55.17), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1731.43, -224.21, 56.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1730.05, -286.77, 49.49), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1739.92, -298.17, 48.07), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.23, -277.39, 48.56), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1746.9, -298.5, 47.44), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.29, -283.89, 47.12), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1803.94, -264.95, 43.72), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1769.59, -240.74, 51.56), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1760.32, -246.47, 51.6), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1758.02, -248.14, 51.62), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1750.32, -253.49, 51.14), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1794.72, -231.86, 49.01), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1793.38, -236.4, 48.73), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1765.84, -259.24, 49.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1781.71, -258.06, 47.15), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1784.15, -256.16, 47.13), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1797.6, -252.04, 44.49), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1623.37, -179.35, 55.42), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1625.31, -180.74, 55.47), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1640.45, -182.14, 55.5), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1638.14, -164.69, 56.59), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1642.99, -168.29, 56.76), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1617.56, -160.5, 56.01), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1646.48, -125.84, 59.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1641.28, -154.57, 57.23), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1642.96, -152.69, 57.36), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1662.01, -137.96, 59.09), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1660.19, -141.34, 58.51), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1656.16, -161.41, 57.07), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1657.43, -159.3, 57.11), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1663.33, -169.39, 57.16), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1664.56, -167.19, 57.14), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1684.38, -137.65, 59.31), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1683.51, -140.81, 59.25), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1682.68, -143.65, 59.08), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1745.52, -256.34, 50.42), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1747.8, -254.45, 50.55), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1752.36, -251.61, 50.68), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.14, -261.31, 49.4), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1751.84, -259.01, 49.45), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1761.1, -253.11, 49.88), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1764.9, -250.48, 49.84), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1767.51, -248.85, 49.87), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1771.03, -246.52, 49.93), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1774.58, -243.87, 49.84), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1778.18, -241.26, 49.71), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1781.01, -238.85, 49.64), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1788.11, -231.97, 49.55), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1789.36, -229.78, 49.64), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1794.7, -231.99, 48.22), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1793.66, -235.77, 48.14), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1790.99, -238.79, 48.15), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1788.22, -242.01, 48.13), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1740.2509, -298.0301, 48.4766), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1794.6807, -269.9242, 44.7556), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1792.3054, -272.6735, 44.9436), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.8999, -284.2284, 47.4401), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1757.4694, -278.9848, 47.5124), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.0022, -290.9471, 48.3086), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1753.4692, -295.2139, 47.2835), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1747.4573, -281.7064, 48.8186), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1761.2556, -300.0404, 46.4696), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1806.467, -260.2537, 43.6576), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1745.1486, -292.54, 48.2772), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1797.3826, -267.6638, 44.6046), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.3542, -286.4593, 47.4115), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1759.9442, -285.3122, 46.9454), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1751.4904, -281.6229, 48.6794), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1744.0175, -296.491, 48.0646), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1755.723, -288.0844, 47.3752), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1800.887, -265.1422, 44.2742), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1751.0804, -282.9284, 48.6455), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1793.5529, -271.1597, 44.8376), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.1779, -304.7162, 46.9019), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1740.1931, -295.5301, 48.6313), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.2212, -290.0266, 48.3467), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1746.9636, -283.531, 48.7574), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1791.0736, -274.0713, 45.0369), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1758.3856, -303.2084, 46.7082), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1798.9934, -266.1691, 44.425), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1761.1641, -279.6887, 46.9848), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1775.9259, -285.5022, 45.9202), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1802.7462, -263.1397, 44.096), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1752.1096, -279.3814, 48.7533), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1784.1173, -278.2318, 45.4887), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1754.1292, -293.057, 47.2577), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.2972, -295.0417, 48.1119), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1771.2092, -288.9741, 45.8264), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1755.4333, -289.4067, 47.3349), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1777.8179, -283.9919, 45.8845), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1757.1013, -281.769, 47.4838), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1745.915, -289.8879, 48.4245), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1804.4088, -262.3982, 43.9284), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1773.5791, -287.5646, 45.8513), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1769.5859, -290.8812, 45.9203), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.2456, -279.5142, 48.8855), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1767.4938, -293.0032, 46.0487), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1789.1453, -275.0585, 45.1681), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1760.4124, -302.0581, 46.5262), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1754.7203, -291.039, 47.323), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.4202, -288.4507, 48.4371), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.7069, -277.4785, 48.921), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.1152, -309.4139, 47.3045), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1774.7697, -286.3979, 45.8928), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1768.6237, -292.0236, 45.9811), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1762.1631, -299.1257, 46.4024), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1747.9271, -296.274, 48.0155), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1744.6593, -294.2546, 48.1797), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1749.8287, -275.121, 48.9216), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1750.6979, -308.2186, 47.1725), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1780.7633, -281.0662, 45.7852), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1763.1406, -297.8685, 46.3236), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1747.2981, -299.1766, 47.8255), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1760.9725, -281.5771, 47.0337), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1805.3055, -261.3748, 43.8079), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1748.6105, -293.5456, 48.1973), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1752.1663, -307.7906, 47.114), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1759.1328, -288.1112, 46.8397), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1779.0042, -282.8546, 45.8491), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1745.371, -291.2845, 48.3471), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1752.6713, -276.4101, 48.5916), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1743.5203, -298.399, 47.9708), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1754.7855, -305.9962, 46.9927), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1759.5671, -286.9658, 46.867), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1752.3649, -277.9043, 48.6719), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1757.21, -280.5007, 47.5016), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1796.038, -268.7952, 44.6839), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1750.8992, -284.2415, 48.6048), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1739.7898, -294.0413, 48.7213), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1739.9053, -292.7033, 48.8138), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1740.3054, -290.1725, 48.994), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1733.1591, -275.1713, 50.812), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1780.2457, -266.4345, 45.977), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1773.8339, -237.1582, 51.8043), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1776.566, -235.1829, 51.6796), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1771.43, -238.85, 50.92), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1766.8, -241.76, 51.08), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1764.39, -243.28, 51.58), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1782.01, -230.98, 50.51), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1762.68, -245.15, 51.0), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
    { coords = vector3(-1756.02, -249.11, 50.85), label = 'Grave', icon = 'fas fa-skull-crossbones', distance = 2.0, cooldown = 300 },
}


--[[
  Loot weights (relative probability per roll).

  Each successful dig rolls Config.MinLootItems–Config.MaxLootItems times; each roll picks
  ONE row using: roll uniform in [1, sum(weights)], then cumulative weight (table order).

  Weights sum to 1000 so each unit ≈ 0.1% per roll (easy mental math).

  Per-roll approximate chance ≈ (weight / 1000) * 100%
]]
Config.Loot = {
    -- weight  ~% per roll   item
    { item = 'bone',             label = 'Bone',             min = 1, max = 3, weight = 300 }, -- 30.0%
    { item = 'dirt',             label = 'Dirt',             min = 2, max = 5, weight = 280 }, -- 28.0%
    { item = 'old_ring',         label = 'Old Ring',         min = 1, max = 1, weight = 120 }, -- 12.0%
    { item = 'silver_coin',      label = 'Silver Coin',      min = 1, max = 2, weight = 100 }, -- 10.0%
    { item = 'ruby',             label = 'Ruby',             min = 1, max = 1, weight = 45 },  --  4.5%
    { item = 'emerald',          label = 'Emerald',          min = 1, max = 1, weight = 45 },  --  4.5%
    { item = 'diamond',          label = 'Diamond',          min = 1, max = 1, weight = 25 },  --  2.5%
    { item = 'old_weapon',       label = 'Old Weapon',       min = 1, max = 1, weight = 35 },  --  3.5%
    { item = 'gold_necklace',    label = 'Gold Necklace',    min = 1, max = 1, weight = 30 },  --  3.0%
    { item = 'ancient_artifact', label = 'Ancient Artifact', min = 1, max = 1, weight = 12 },  --  1.2%
    { item = 'cursed_skull',     label = 'Cursed Skull',     min = 1, max = 1, weight = 6 },   --  0.6%
    { item = 'treasure_map',     label = 'Treasure Map',     min = 1, max = 1, weight = 2 },   --  0.2%
}

Config.MinLootItems = 1
Config.MaxLootItems = 3
