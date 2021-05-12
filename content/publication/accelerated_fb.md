+++
title = "Accelerated Forward-Backward Optimization using Deep Learning"
date = 2021-05-12
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Sebastian Banert", "Jevgenija Rudzusika", "Ozan Öktem", "Jonas Adler"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["0"]

# Publication name and optional abbreviated version.
publication = "arXiv"
publication_short = ""

# Abstract and optional shortened version.
abstract = "We propose several deep-learning accelerated optimization solvers with convergence guarantees. We use ideas from the analysis of accelerated forward-backward schemes like FISTA, but instead of the classical approach of proving convergence for a choice of parameters, such as a step-size, we show convergence whenever the update is chosen in a specific set. Rather than picking a point in this set using some predefined method, we train a deep neural network to pick the best update. Finally, we show that the method is applicable to several cases of smooth and non-smooth optimization and show superior results to established accelerated solvers."
abstract_short = "Provably convergent convex optimization using Deep Learning."

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's filename without extension.
#   E.g. `projects = ["deep-learning"]` references `content/project/deep-learning.md`.
#   Otherwise, set `projects = []`.
projects = []

# Tags (optional).
#   Set `tags = []` for no tags, or use the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []

# Links (optional).
url_pdf = "https://arxiv.org/pdf/2105.05210.pdf"
url_preprint = "https://arxiv.org/abs/2105.05210"
url_code = "https://github.com/JevgenijaAksjonova/Deep-Optimization"
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# url_custom = [{name = "Custom Link", url = "http://example.org"}]

# Does this page contain LaTeX math? (true/false)
math = true

# Does this page require source code highlighting? (true/false)
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""

+++
