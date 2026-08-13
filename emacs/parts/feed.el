;; https://dev.to/tell396/emacs-as-a-rss-reader-2blj

(use-package elfeed
:ensure t)

;; data is stored in ~/.elfeed
(setq elfeed-feeds
        '(

	  ;; IETF & IANA
	  ("https://www.iana.org/assignments/http-proxy-status/http-proxy-status.xml" iana-http-proxy)
          ;; programming
          ("https://news.ycombinator.com/rss" hacker)
          ("https://www.reddit.com/r/programming.rss" programming)
          ("https://www.reddit.com/r/emacs.rss" emacs)
          ("https://dev.to/feed" dev-to)
	  ("https://ldap.com/feed/" ldap)
	  ("https://meow.uz/rss.xml/" meow-uz)

          ;; hobby
          ("https://www.reddit.com/r/nasa.rss" nasa)

          ;; PL
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

	  ;; OSS
	  ("https://blogs.kde.org/authors/nategraham/index.xml" kde-blog)
          ))

(setq-default elfeed-search-filter "@2-days-ago +unread")
(setq-default elfeed-search-title-max-width 100)
(setq-default elfeed-search-title-min-width 100)
