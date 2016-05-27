[![MELPA](https://melpa.org/packages/ido-occur-badge.svg)](https://melpa.org/#/ido-occur)

# Ido occur

Yet another [occur][] with [ido][]

[ido]: https://www.emacswiki.org/emacs/InteractivelyDoThings

![ido-occur](https://raw.githubusercontent.com/danil/ido-occur/master/ido-occur.png)

## Description

Search lines in current buffer like `occur` interactively with `ido`

## Dependencies

* [dash][]
* [ido][] (built-in)

## Installation

Via [melpa][]: `M-x package-install ido-occur`.

[melpa]: https://melpa.org/#/ido-occur

### Settings

Optionally you can configure [ido-vertical-mode][] or [ido-grid-mode][]

[ido-vertical-mode]: https://github.com/creichert/ido-vertical-mode.el
[ido-grid-mode]: https://github.com/larkery/ido-grid-mode.el

#### Occur at point

This comes in handy to be able to open `ido-occur` at point

```lisp
(defun ido-occur-at-point ()
  "Open ido-occur at point."
  (interactive)
  (ido-occur (symbol-name (symbol-at-point))))

(global-set-key (kbd "C-c o") 'ido-occur-at-point)
```

#### Occur from Isearch

Another use case would be to open `ido-occur` from `isearch`:

```lisp
(defun ido-occur-from-isearch ()
  "Open ido-occur from isearch."
  (interactive)
  (ido-occur (if isearch-regexp
                 isearch-string
               (regexp-quote isearch-string))))

(define-key isearch-mode-map (kbd "C-o") 'ido-occur-from-isearch)
```

## Alternatives

* [occur][]
* [swoop][]
* [helm-swoop][]
* [swiper][]

[occur]: https://www.gnu.org/software/emacs/manual/html_node/emacs/Other-Repeating-Search.html
[swoop]: https://github.com/ShingoFukuyama/emacs-swoop
[helm-swoop]: https://github.com/ShingoFukuyama/helm-swoop
[swiper]: https://github.com/abo-abo/swiper
[dash]: https://github.com/magnars/dash.el
