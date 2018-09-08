+++
title = "Task adapted reconstruction for inverse problems"
date = 2018-08-27
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Jonas Adler", "Sebastian Lunz", "Olivier Verdier", "Carola-Bibiane Schönlieb", "Ozan Öktem"]

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
abstract = "The paper considers the problem of performing a task defined on a model parameter that is only observed indirectly through noisy data in an ill-posed inverse problem. A key aspect is to formalize the steps of reconstruction and task as appropriate estimators (non-randomized decision rules) in statistical estimation problems. The implementation makes use of (deep) neural networks to provide a differentiable parametrization of the family of estimators for both steps. These networks are combined and jointly trained against suitable supervised training data in order to minimize a joint differentiable loss function, resulting in an end-to-end task adapted reconstruction method. The suggested framework is generic, yet adaptable, with a plug-and-play structure for adjusting both the inverse problem and the task at hand. More precisely, the data model (forward operator and statistical model of the noise) associated with the inverse problem is exchangeable, eg, by using neural network architecture given by a learned iterative method. Furthermore, any task that is encodable as a trainable neural network can be used. The approach is demonstrated on joint tomographic image reconstruction, classification and joint tomographic image reconstruction segmentation."
abstract_short = "Task adapted reconstruction for inverse problems."

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
url_pdf = "https://arxiv.org/pdf/1809.00948"
url_preprint = "https://arxiv.org/abs/1809.00948"
url_code = ""
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
