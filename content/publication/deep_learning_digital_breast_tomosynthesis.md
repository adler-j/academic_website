+++
title = "Deep Learning Framework for Digital Breast Tomosynthesis Reconstruction"
date = 2018-08-14
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Nikita Moriakov", "Koen Michielsen", "Jonas Adler", "Ritse Mann", "Ioannis Sechopoulos", "Jonas Teuwen"]

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
publication = "arXiv"
publication_short = ""

# Abstract and optional shortened version.
abstract = "Digital breast tomosynthesis is rapidly replacing digital mammography as the basic x-ray technique for evaluation of the breasts. However, the sparse sampling and limited angular range gives rise to different artifacts, which manufacturers try to solve in several ways. In this study we propose an extension of the Learned Primal-Dual algorithm for digital breast tomosynthesis. The Learned Primal-Dual algorithm is a deep neural network consisting of several `reconstruction blocks', which take in raw sinogram data as the initial input, perform a forward and a backward pass by taking projections and back-projections, and use a convolutional neural network to produce an intermediate reconstruction result which is then improved further by the successive reconstruction block. We extend the architecture by providing breast thickness measurements as a mask to the neural network and allow it to learn how to use this thickness mask. We have trained the algorithm on digital phantoms and the corresponding noise-free/noisy projections, and then tested the algorithm on digital phantoms for varying level of noise. Reconstruction performance of the algorithms was compared visually, using MSE loss and Structural Similarity Index. Results indicate that the proposed algorithm outperforms the baseline iterative reconstruction algorithm in terms of reconstruction quality for both breast edges and internal structures and is robust to noise."
abstract_short = "Learned Primal-Dual for DBT"

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
url_pdf = "https://arxiv.org/pdf/1808.04640"
url_preprint = "https://arxiv.org/abs/1808.04640"
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
