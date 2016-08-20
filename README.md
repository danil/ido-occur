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

## Usage

Run `ido-occur` or to create key binding

```lisp
(global-set-key (kbd "C-c o") 'ido-occur)
```

### Occur at point

This comes in handy to be able to open `ido-occur` at point

```lisp
(global-set-key (kbd "C-c O") 'ido-occur-at-point)
```

### Occur from Isearch

Another use case would be to open `ido-occur` from `isearch`

```lisp
(define-key isearch-mode-map (kbd "C-o") 'ido-occur-from-isearch)
```

## Settings

Optionally you can configure [ido-vertical-mode][] or [ido-grid-mode][]

[ido-vertical-mode]: https://github.com/creichert/ido-vertical-mode.el
[ido-grid-mode]: https://github.com/larkery/ido-grid-mode.el

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

## Contributing

See the `CONTRIBUTING.md` file.

## License

See the `COPYING` file.
