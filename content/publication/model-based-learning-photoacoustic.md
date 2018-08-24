+++
title = "Model based learning for accelerated, limited-view 3D photoacoustic tomography"
date = 2017-08-31
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Andreas Hauptmann", "Felix Lucka", "Marta Betcke", "Nam Huynh", "Jonas Adler", "Ben Cox", "Paul Beard", "Sebastien Ourselin", "Simon Arridge"]

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
abstract = "Recent advances in deep learning for tomographic reconstructions have shown great potential to create accurate and high quality images with a considerable speed-up. In this work we present a deep neural network that is specifically designed to provide high resolution 3D images from restricted photoacoustic measurements. The network is designed to represent an iterative scheme and incorporates gradient information of the data fit to compensate for limited view artefacts. Due to the high complexity of the photoacoustic forward operator, we separate training and computation of the gradient information. A suitable prior for the desired image structures is learned as part of the training. The resulting network is trained and tested on a set of segmented vessels from lung CT scans and then applied to in-vivo photoacoustic measurement data."
abstract_short = "Using gradient boosting we scale learned iterative reconstruction to a very large scale inverse problem."

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
url_pdf = "https://arxiv.org/pdf/1708.09832"
url_preprint = "https://arxiv.org/abs/1708.09832"
url_code = "https://github.com/asHauptmann/3DPAT_DGD"
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
