# From March 21 conversation

https://chat.openai.com/share/ee029248-28fe-4240-9374-c52970a6b2bd

First conversation with GPT-4 about project design: https://github.com/anhinga/DMM-synthesis-lab-journal/blob/main/drafts/GPT-4-conversations/first-conversation.md

Then I asked it to convert this markdown to LaTeX: https://github.com/anhinga/2022-notes/blob/fc662b9bb159b12b86dbef7c0dbdedfc6af07e41/Generative-autoregressive-models-are-similators/README.md

and GPT-4 produced the following LaTeX: 

```latex
\section{Generative autoregressive models are simulators}

A radical novel understanding of the nature of GPT-3-like models seems to be crystallizing.

\textit{These models are simulators, they generate various entities (which tend to be rather short-lived at the moment),
and users are interacting with those entities. This novel understanding explains a lot of observable phenomena and
opens new promising directions of work.}

A lot of people were seeing glimpses of this for a few years now. E.g. when I was playing with GPT-2 in 2019, I noticed that
it looked like a virtual personality was created at first (sampled from a distribution of virtual personalities
conditioned by the initial prompt), and then that personality was speaking to me. Or, at least, that was my impression.

\begin{center}
\line(1,0){250}
\end{center}

Fast-forwarding to September 2022:

The following text has been published by \textbf{``janus''} on Sep 2, 2022:

\url{https://www.lesswrong.com/posts/vJFdjigzmcXMhNTsx/simulators}

It has been further publicized and discussed by Scott Alexander on Sep 19:

\url{https://astralcodexten.substack.com/p/janus-gpt-wrangling}

This both crystallizes a lot of that new understanding, shows that this viewpoint is gradually proliferating in leading
organizations focusing on better understanding the true nature of modern generative Transformers and on leveraging this
improved understanding, and helps to disseminate this viewpoint (due to the popularity of Scott Alexander's substack in
the relevant circles of professionals).

This subdirectory is for the materials related to this new understanding.

\begin{center}
\line(1,0){250}
\end{center}

\subsection{My reading notes:}

\href{reading-janus-gpt-wrangling.md}{reading-janus-gpt-wrangling.md} - written (this page also contains links to some tools and papers by ``Janus'' including their \textbf{loom} tool and ``Prompt Programming for Large Language Models: Beyond the Few-Shot Paradigm'' paper, \url{https://arxiv.org/abs/2102.07350})

\href{reading-simulators-essay.md}{reading-simulators-essay.md} - written

\begin{center}
\line(1,0){250}
\end{center}

\subsection{Thinking further about this topic}

\textit{Work in progress}
```

together with this remark:

"Make sure to include the necessary packages in your LaTeX document preamble for the hyperlink and URL functions, such as:"

```latex
\usepackage{hyperref}
\usepackage{url}
```

I said:

"Great! Almost there, but I'd like some minor changes. I'd like paragraphs to start on the left margin without indent, to have some modest vertical space between paragraphs, and to have the whole LaTeX document generated starting from \documentclass"

and GPT-4 replied:

"Sure! Here's the full LaTeX document with the requested formatting changes:"

```latex
\documentclass{article}

\usepackage{hyperref}
\usepackage{url}

% Remove paragraph indent
\setlength{\parindent}{0pt}
% Add vertical space between paragraphs
\setlength{\parskip}{6pt plus 2pt minus 1pt}

\begin{document}

\section{Generative autoregressive models are simulators}

A radical novel understanding of the nature of GPT-3-like models seems to be crystallizing.

\textit{These models are simulators, they generate various entities (which tend to be rather short-lived at the moment),
and users are interacting with those entities. This novel understanding explains a lot of observable phenomena and
opens new promising directions of work.}

A lot of people were seeing glimpses of this for a few years now. E.g. when I was playing with GPT-2 in 2019, I noticed that
it looked like a virtual personality was created at first (sampled from a distribution of virtual personalities
conditioned by the initial prompt), and then that personality was speaking to me. Or, at least, that was my impression.

\begin{center}
\line(1,0){250}
\end{center}

Fast-forwarding to September 2022:

The following text has been published by \textbf{``janus''} on Sep 2, 2022:

\url{https://www.lesswrong.com/posts/vJFdjigzmcXMhNTsx/simulators}

It has been further publicized and discussed by Scott Alexander on Sep 19:

\url{https://astralcodexten.substack.com/p/janus-gpt-wrangling}

This both crystallizes a lot of that new understanding, shows that this viewpoint is gradually proliferating in leading
organizations focusing on better understanding the true nature of modern generative Transformers and on leveraging this
improved understanding, and helps to disseminate this viewpoint (due to the popularity of Scott Alexander's substack in
the relevant circles of professionals).

This subdirectory is for the materials related to this new understanding.

\begin{center}
\line(1,0){250}
\end{center}

\subsection{My reading notes:}

\href{reading-janus-gpt-wrangling.md}{reading-janus-gpt-wrangling.md} - written (this page also contains links to some tools and papers by ``Janus'' including their \textbf{loom} tool and ``Prompt Programming for Large Language Models: Beyond the Few-Shot Paradigm'' paper, \url{https://arxiv.org/abs/2102.07350})

\href{reading-simulators-essay.md}{reading-simulators-essay.md} - written

\begin{center}
\line(1,0){250}
\end{center}

\subsection{Thinking further about this topic}

\textit{Work in progress}

\end{document}
```

That was a perfect conversion, as far as I could see from looking at the compiled PDF.
