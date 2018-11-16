+++
title = "Deep Bayesian Inversion"
date = 2018-11-16
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Jonas Adler", "Ozan Öktem"]

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
abstract = "Characterizing statistical properties of solutions of inverse problems is essential for decision making. Bayesian inversion offers a tractable framework for this purpose, but current approaches are computationally unfeasible for most realistic imaging applications in the clinic. We introduce two novel deep learning based methods for solving large-scale inverse problems using Bayesian inversion: a sampling based method using a WGAN with a novel mini-discriminator and a direct approach that trains a neural network using a novel loss function. The performance of both methods is demonstrated on image reconstruction in ultra low dose 3D helical CT. We compute the posterior mean and standard deviation of the 3D images followed by a hypothesis test to assess whether a 'dark spot' in the liver of a cancer stricken patient is present. Both methods are computationally efficient and our evaluation shows very promising performance that clearly supports the claim that Bayesian inversion is usable for 3D imaging in time critical applications."
abstract_short = "We use deep learning to perform bayesian inversion."

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
url_pdf = "https://arxiv.org/abs/1811.05910"
url_preprint = "https://arxiv.org/pdf/1811.05910.pdf"
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
math = false

# Does this page require source code highlighting? (true/false)
highlight = true

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""

+++
