---
layout: about
title: about
permalink: /
subtitle: <a href='https://nissymori.github.io/assets/pdf/CV.pdf'>CV</a> / <a href='https://scholar.google.co.jp/citations?user=swJkeuUAAAAJ&hl=ja&oi=ao'>Google Scholar</a> / <a href='https://github.com/nissymori'>GitHub</a> / <a href='https://twitter.com/nissymori1'>Twitter (X)</a>

profile:
  align: left
  image: portrait.png
  image_circular: false # crops the image to make it circular

news: true # includes a list of news items
selected_papers: true # includes a list of papers marked as "selected={true}"
social: true # includes social icons at the bottom of the page
---

I am Soichiro Nishimori, a PhD student at [Sugiyama-Yokoya-Ishida lab](https://www.ms.k.u-tokyo.ac.jp/) supervised by [Prof. Sugiyama](https://www.ms.k.u-tokyo.ac.jp/sugi/index.html). Also, I am working as a research part-timer in Imperfect-information Learning Team at [RIKEN AIP](https://www.riken.jp/research/labs/aip/).

## Research Interests

I am interested in **scalable reinforcement learning (RL)** from three perspectives:

- **Scale to Data**: The amount and quality of data can be traded off. I have worked on offline RL with weak supervision, including domain-unlabeled data [RLC2025](https://arxiv.org/abs/2507.08537) and noisy preferences [TMLR2026](https://openreview.net/forum?id=cBWGLmSeao).
- **Scale to Computation**: I am especially interested in **GPU-accelerated RL** frameworks, both for simulators, including board games [Pgx, NeurIPS2023 (Co-authored)](https://arxiv.org/abs/2303.17503) and Riichi Mahjong [Mahjax, arXiv2026](https://arxiv.org/abs/2605.20577), and for algorithm codebases, such as offline RL [JAX-CORL](https://github.com/nissymori/JAX-CORL).
- **Scale to Trial**: Even if an agent can gain experience through massive data or computation, it is not truly scalable unless it can learn efficiently. From this perspective, I have worked on **exploration** in RL. I focus on a novel exploration objective called **ReMax**, based on the **Retry** idea ([ICML2026](https://arxiv.org/abs/2606.00151), [arXiv2026](https://arxiv.org/abs/2606.05888)).

