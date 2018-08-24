+++
title = "Data-driven Nonsmooth Optimization"
date = 2018-08-02
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Sebastian Banert", "Axel Ringh", "Jonas Adler", "Johan Karlsson", "Ozan Öktem"]

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
abstract = "In this work, we consider methods for solving large-scale optimization problems with a possibly nonsmooth objective function. The key idea is to first specify a class of optimization algorithms using a generic iterative scheme involving only linear operations and applications of proximal operators. This scheme contains many modern primal-dual first-order solvers like the Douglas-Rachford and hybrid gradient methods as special cases. Moreover, we show convergence to an optimal point for a new method which also belongs to this class. Next, we interpret the generic scheme as a neural network and use unsupervised training to learn the best set of parameters for a specific class of objective functions while imposing a fixed number of iterations. In contrast to other approaches of 'learning to optimize', we present an approach which learns parameters only in the set of convergent schemes. As use cases, we consider optimization problems arising in tomographic reconstruction and image deconvolution, and in particular a family of total variation regularization problems."
abstract_short = "We show how learning can be applied to proximal Primal-Dual schemes while still guaranteeing convergence."

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
url_pdf = "https://arxiv.org/pdf/1808.00946"
url_preprint = "https://arxiv.org/abs/1808.00946"
url_code = "https://github.com/aringh/data-driven_nonsmooth_optimization"
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
