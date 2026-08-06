;; https://dev.to/tell396/emacs-as-a-rss-reader-2blj

(use-package elfeed
:ensure t)

;; data is stored in ~/.elfeed
(setq elfeed-feeds
        '(
                ;; programming
                ("https://news.ycombinator.com/rss" hacker)
                ("https://www.reddit.com/r/programming.rss" programming)
                ("https://www.reddit.com/r/emacs.rss" emacs)
                ("https://habr.com/ru/rss/all/all/?fl=ru" habr-all)
                ("https://habr.com/ru/rss/news/?fl=ru" habr-news)
                ("https://nuancesprog.ru/feed" nop)
                ("https://dev.to/feed" dev-to)
		("https://ldap.com/feed/" ldap)
		("https://meow.uz/rss.xml/" meow-uz)

                ;; hobby
                ("https://www.reddit.com/r/nasa.rss" nasa)
                ("https://habr.com/ru/rss/hub/astronomy/all/?fl=ru" habr-astronomy)
                ("https://habr.com/ru/rss/flows/popsci/all/?fl=ru" habr-popsci)

                ;; programming languages
                ;; ("https://www.reddit.com/r/javascript.rss" javascript)
                ;; ("https://www.reddit.com/r/typescript.rss" typescript)
                ("https://www.reddit.com/r/golang.rss" golang)
                ("https://www.reddit.com/r/rust.rss" rust)

                ;; Reddit
                ;; ("https://www.reddit.com/r/aws.rss" aws)
                ;; ("https://www.reddit.com/r/googlecloud.rss" googlecloud)
                ;; ("https://www.reddit.com/r/azure.rss" azure)
                ("https://www.reddit.com/r/devops.rss" devops)
                ("https://www.reddit.com/r/kubernetes.rss" kubernetes)
                ))

(setq-default elfeed-search-filter "@2-days-ago +unread")
(setq-default elfeed-search-title-max-width 100)
(setq-default elfeed-search-title-min-width 100)
