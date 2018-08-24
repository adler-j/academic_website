+++
title = "Solving ill-posed inverse problems using iterative deep neural networks"
date = 2017-04-13
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
publication = "Inverse Problems"
publication_short = ""

# Abstract and optional shortened version.
abstract = "We propose a partially learned approach for the solution of ill-posed inverse problems with not necessarily linear forward operators. The method builds on ideas from classical regularisation theory and recent advances in deep learning to perform learning while making use of prior information about the inverse problem encoded in the forward operator, noise model and a regularising functional. The method results in a gradient-like iterative scheme, where the 'gradient' component is learned using a convolutional network that includes the gradients of the data discrepancy and regulariser as input in each iteration.<br><br>We present results of such a partially learned gradient scheme on a non-linear tomographic inversion problem with simulated data from both the Sheep-Logan phantom as well as a head CT. The outcome is compared against filtered backprojection and total variation reconstruction and the proposed method provides a 5.4 dB PSNR improvement over the total variation reconstruction while being significantly faster, giving reconstructions of $512 \\times 512$  pixel images in about 0.4 s using a single graphics processing unit (GPU)."
abstract_short = "A deep learning scheme for solving inverse problems that incorporates knowledge about the data formation process, improving both speed and quality compared to classical methods."

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
url_pdf = "https://arxiv.org/pdf/1704.04058"
url_preprint = "https://arxiv.org/abs/1704.04058"
url_code = "https://github.com/adler-j/learned_gradient_tomography"
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
