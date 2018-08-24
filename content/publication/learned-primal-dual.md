+++
title = "Learned Primal-Dual Reconstruction"
date = 2017-07-05
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
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "IEEE - Transactions on Medical Imaging"
publication_short = ""

# Abstract and optional shortened version.
abstract = "We propose the Learned Primal-Dual algorithm for tomographic reconstruction. The algorithm accounts for a (possibly non-linear) forward operator in a deep neural network by unrolling a proximal primal-dual optimization method, but where the proximal operators have been replaced with convolutional neural networks. The algorithm is trained end-to-end, working directly from raw measured data and it does not depend on any initial reconstruction such as FBP. <br><br>We compare performance of the proposed method on low dose CT reconstruction against FBP, TV, and deep learning based post-processing of FBP. For the Shepp-Logan phantom we obtain >6dB PSNR improvement against all compared methods. For human phantoms the corresponding improvement is 6.6dB over TV and 2.2dB over learned post-processing along with a substantial improvement in the SSIM. Finally, our algorithm involves only ten forward-back-projection computations, making the method feasible for time critical clinical applications."
abstract_short = "By learning in both reconstruction and data domain, we can improve image reconstruction."

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
url_pdf = "https://arxiv.org/pdf/1707.06474.pdf"
url_preprint = "https://arxiv.org/abs/1707.06474"
url_code = "https://github.com/adler-j/learned_primal_dual"
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
