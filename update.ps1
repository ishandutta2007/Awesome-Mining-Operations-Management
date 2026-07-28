$content = Get-Content -Raw "README.md"

# Step 1: Update SaaS list
$saasTable = @"
## SaaS/Hosted Platforms

| Product | Description | Pricing | Company Size (Rev/Val) |
| :--- | :--- | :--- | :--- |
| **[Deswik (Sandvik)](https://www.deswik.com/)** | Comprehensive CAD, design, scheduling, and operational planning platform (Spatial, Planning, OPS, GO) for open-pit and underground mines. | Contact for Pricing | ~$12B |
| **[GEOVIA (Dassault Systèmes)](https://www.3ds.com/products/geovia)** | Geology modelling, pit optimisation (Whittle), scheduling (MineSched), and collaborative mine planning on the 3DEXPERIENCE platform (Surpac and related roles). | Contact for Pricing | ~$6.5B |
| **[MineRP (Powered by Epiroc)](https://www.epiroc.com)** | Open OT platform unifying technical mining data with ERP systems; includes Enterprise Production Scheduler and short-interval control for open-pit and underground operations. | Contact for Pricing | ~$6B |
| **[Hexagon Mining](https://hexagon.com/products/product-groups/mining)** | Integrated life-of-mine solutions covering mine planning (HxGN MinePlan), fleet management (OP Pro / UG Pro), drill & blast, survey, monitoring, and collision avoidance. | Contact for Pricing | ~$5B |
| **[Seequent (Bentley)](https://www.seequent.com/)** | Implicit geological modelling and resource estimation (Leapfrog Geo & Edge), data management (Central, MX Deposit), and geoscience collaboration platform (Evo). | Contact for Pricing | ~$1B |
| **[Datamine](https://dataminesoftware.com/)** | Connected suite for geology, resource modelling, strategic & detailed planning, production, and laboratory management across the mining value chain. | Contact for Pricing | ~$200M |
| **[RPMGlobal](https://rpmglobal.com/)** | Enterprise mining software suite spanning strategic & tactical scheduling (MinePlanner, XECUTE), simulation (HAULSIM), asset maintenance (AMT), and cost modelling. | Contact for Pricing | ~$150M |
| **[Maptek](https://www.maptek.com/)** | 3D mine planning and geological modelling (Vulcan), scheduling (Evolution), laser scanning/survey (PointStudio), and drill & blast (BlastLogic). | Contact for Pricing | ~$120M |
| **[Micromine](https://www.micromine.com/)** | End-to-end ecosystem for exploration, geological modelling (Origin), mine design & planning (Beyond, Alastri, Spry, Advance), and production control (Pitram). | Contact for Pricing | ~$100M |
| **[MineSense](https://minesense.com/)** | Real-time sensor-based ore characterisation and sorting (ShovelSense) for grade control, dilution reduction, and smart truck routing at the face. | Contact for Pricing | ~$50M |
| **[Minemax](https://www.minemax.com/)** (now part of Datamine) | Strategic mine schedule optimisation (Minemax Scheduler) and detailed open-pit planning (Tempo) focused on NPV maximisation. | Contact for Pricing | ~$25M |
| **[GroundHog](https://groundhogapps.com/)** | AI-powered mining operations platform for short-interval control, fleet management, maintenance, safety, and real-time location systems. | Contact for Pricing | ~$20M |
| **[EarthSoft](https://earthsoft.com/)** | EQuIS environmental data management platform widely used by mining companies for water quality, compliance, sustainability reporting, and regulatory workflows. | Contact for Pricing | ~$15M |
"@

$content = $content -replace "(?s)## SaaS/Hosted Platforms.*?(?=## Open-Source GitHub Projects)", "$saasTable`r`n`r`n"
Set-Content "README.md" -Value $content
git add .
git commit -m "Added company size and sorted the SaaS based on that"

# Step 2: Open Source list
$osList = @"
## Open-Source GitHub Projects

- **[GemPy](https://github.com/gempy-project/gempy)** [![GitHub stars](https://img.shields.io/github/stars/gempy-project/gempy?style=social&color=white)](https://github.com/gempy-project/gempy/stargazers)
  Open-source Python library for implicit 3D structural geological modelling of complex folded structures, fault networks, and unconformities, with strong support for probabilistic/uncertainty modelling.

- **[GeostatsPy](https://github.com/GeostatsGuy/GeostatsPy)** [![GitHub stars](https://img.shields.io/github/stars/GeostatsGuy/GeostatsPy?style=social&color=white)](https://github.com/GeostatsGuy/GeostatsPy/stargazers)
  Open-source Python reimplementation of classic GSLIB geostatistical algorithms for spatial data analysis, estimation, and simulation — excellent for teaching and prototyping.

- **[LoopStructural](https://github.com/Loop3D/LoopStructural)** [![GitHub stars](https://img.shields.io/github/stars/Loop3D/LoopStructural?style=social&color=white)](https://github.com/Loop3D/LoopStructural/stargazers)
  Open-source 3D structural geological modelling library supporting multiple interpolation schemes, fault networks, fold modelling, and time-aware geological feature construction.

- **[PyGSLIB](https://github.com/opengeostat/pygslib)** [![GitHub stars](https://img.shields.io/github/stars/opengeostat/pygslib?style=social&color=white)](https://github.com/opengeostat/pygslib/stargazers)
  Python package for mineral resource estimation and geostatistics (GSLIB-based), including drillhole compositing/desurveying, block modelling, kriging, and validation workflows.

- **[MiningPy](https://github.com/miningpy/miningpy)** [![GitHub stars](https://img.shields.io/github/stars/miningpy/miningpy?style=social&color=white)](https://github.com/miningpy/miningpy/stargazers)
  Python tools for mining engineering: block model manipulation, reblocking, haulage modelling, interfacing with commercial packages, and visualisation.

- **[Albion](https://gitlab.com/Oslandia/albion)**
  Open-source 3D geological model reconstruction from boreholes built on QGIS, using Delaunay triangulation for rapid correlation and volume modelling.

- **[Baselode](https://github.com/darkmine-oss/baselode)** [![GitHub stars](https://img.shields.io/github/stars/darkmine-oss/baselode?style=social&color=white)](https://github.com/darkmine-oss/baselode/stargazers)
  Open-source multi-language (Python + JavaScript/React) toolkit for mineral exploration and mining focused on drillhole and spatial data processing, management, and visualisation.

- **[Mining-Gym](https://github.com/CBCodeHub/Mining-Gym)** [![GitHub stars](https://img.shields.io/github/stars/CBCodeHub/Mining-Gym?style=social&color=white)](https://github.com/CBCodeHub/Mining-Gym/stargazers)
  Configurable OpenAI Gym-compatible environment for reinforcement-learning research on truck dispatch and haulage scheduling in open-pit mines.

- **[Open Pit Scheduling (PuLP/CBC)](https://zenodo.org/records/17170962)**
  Transparent Python optimisation framework for open-pit mine production scheduling using linear programming (PuLP + CBC), incorporating economic, geotechnical, and environmental constraints.

- **[QGIS + Mining Plugins](https://plugins.qgis.org/plugins/tags/mining/)**
  Ecosystem of open-source QGIS plugins for drillhole visualisation (e.g. OpenLog), mineral exploration data services, implicit modelling experiments, and geospatial mining workflows.

"@
$content = $content -replace "(?s)## Open-Source GitHub Projects.*?(?=### Additional Strong Open-Source Options)", "$osList`r`n"
Set-Content "README.md" -Value $content
git add .
git commit -m "Added github stars and sorted the opensource based on that"

# Step 3: Decorate banner
$banner = "![Banner](assets/banner.svg)`r`n`r`n"
$content = $banner + $content
Set-Content "README.md" -Value $content
git add .
git commit -m "added banner"

# Step 4: Emojis
$content = $content.Replace("# Awesome-Mining-Operations-Management", "# ⛏️ Awesome-Mining-Operations-Management")
$content = $content.Replace("## Top Mining Operations Management Tools Ecosystem", "## 🌍 Top Mining Operations Management Tools Ecosystem")
$content = $content.Replace("## Table of Contents", "## 📑 Table of Contents")
$content = $content.Replace("## SaaS/Hosted Platforms", "## ☁️ SaaS/Hosted Platforms")
$content = $content.Replace("## Open-Source GitHub Projects", "## 🔓 Open-Source GitHub Projects")
$content = $content.Replace("### Additional Strong Open-Source Options", "### 🔧 Additional Strong Open-Source Options")
$content = $content.Replace("## How to Contribute", "## 🤝 How to Contribute")
$content = $content.Replace("## Disclaimer", "## ⚠️ Disclaimer")
Set-Content "README.md" -Value $content
git add .
git commit -m "added emojis"

# Step 5: SEO
$seo = "<!-- SEO: Mining Software, SaaS, Open Source Mining, Fleet Management, Geological Modelling, Mining Operations Management -->`r`n"
$content = $seo + $content
Set-Content "README.md" -Value $content
git add .
git commit -m "seo optimised"

# Step 6: Badges to left
$badgesLeft = "<a href=`"https://github.com/ishandutta2007/Awesome-Awesome-Awesome`"><img src=`"https://img.shields.io/badge/Awesome-%E2%9C%94-blueviolet?style=flat-square&logo=github`" alt=`"Awesome`"/></a><a href=`"https://discord.gg/jc4xtF58Ve`"><img src=`"https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white`" alt=`"Discord`" /></a>"
$badgesWrapper = "<div align=`"center`">`r`n$badgesLeft`r`n</div>`r`n`r`n"
$content = $content -replace "\[\!\[Banner\]\(assets/banner\.svg\)\]", "![Banner](assets/banner.svg)`r`n`r`n$badgesWrapper"
# Fallback replace if exact regex doesn't match
$content = $content.Replace("![Banner](assets/banner.svg)`r`n`r`n# ⛏️ Awesome", "![Banner](assets/banner.svg)`r`n`r`n$badgesWrapper# ⛏️ Awesome")
Set-Content "README.md" -Value $content
git add .
git commit -m "badges to left added"

# Step 7: Badges to right
$badgesRight = "<a href=`"https://github.com/ishandutta2007`"><img alt=`"GitHub followers`" src=`"https://img.shields.io/github/followers/ishandutta2007?label=Follow`" /></a>"
$content = $content.Replace("$badgesLeft`r`n</div>", "$badgesLeft $badgesRight`r`n</div>")
Set-Content "README.md" -Value $content
git add .
git commit -m "badges to right added"

# Step 8: Star History
$starHistory = @"

## 📈 Star History
<div align="center">
<a href="https://www.star-history.com/?repos=ishandutta2007/Awesome-Mining-Operations-Management&type=date&legend=bottom-right">
<picture>
<source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Mining-Operations-Management&type=date&theme=dark&legend=bottom-right" />
<source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Mining-Operations-Management&type=date&legend=bottom-right" />
<img alt="Star History Chart" src="https://api.star-history.com/chart?repos=ishandutta2007/Awesome-Mining-Operations-Management&type=date&legend=bottom-right" />
</picture>
</a>
</div>
"@
$content = $content + $starHistory
Set-Content "README.md" -Value $content
git add .
git commit -m "star history added"

# Step 9: Fix star plot
$content = $content.Replace("chartrepos", "chart?repos")
Set-Content "README.md" -Value $content
git add .
git commit -m "fixed star plot"

# Step 10: Fix awesome link
$content = $content.Replace("https://github.com/sindresorhus/awesome", "https://github.com/ishandutta2007/Awesome-Awesome-Awesome")
Set-Content "README.md" -Value $content
git add .
git commit -m "invalid awesome link fixed"
