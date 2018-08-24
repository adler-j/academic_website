+++
title = "Learning to solve inverse problems using Wasserstein loss"
date = 2017-10-30
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Jonas Adler", "Axel Ringh", "Ozan Öktem", "Johan Karlsson"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["1"]

# Publication name and optional abbreviated version.
publication = "NIPS workshop in optimal transport"
publication_short = ""

# Abstract and optional shortened version.
abstract = "We propose using the Wasserstein loss for training in inverse problems. In particular, we consider a learned primal-dual reconstruction scheme for ill-posed inverse problems using the Wasserstein distance as loss function in the learning. This is motivated by miss-alignments in training data, which when using standard mean squared error loss could severely degrade reconstruction quality. We prove that training with the Wasserstein loss gives a reconstruction operator that correctly compensates for miss-alignments in certain cases, whereas training with the mean squared error gives a smeared reconstruction. Moreover, we demonstrate these effects by training a reconstruction algorithm using both mean squared error and optimal transport loss for a problem in computerized tomography."
abstract_short = "Compute the image-space Wasserstein loss using Sinkhorn iterations and use it for learning to solve inverse problems."

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

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
url_pdf = "https://arxiv.org/pdf/1710.10898"
url_preprint = "https://arxiv.org/abs/1710.10898"
url_code = "https://github.com/adler-j/wasserstein_inverse_problems"
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
