Return-Path: <blinux-list+bncBCVPTHE7K4IOZUMXVUDBUBEEBDVWW@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F1E82E7E9
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jan 2024 03:24:45 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-42987be5d14sf126718451cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jan 2024 18:24:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705371884; x=1705976684;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VxrTjb25mQ+YfyJuNcP/pTQ8VKz7aTRcU9+ZEKmjAfs=;
        b=xUCLfC9K3SVT+dWfYkxypEh3jjzXzL8azrtRzoZcG+9eRGIReJ+6J4hkbQD6AoXrUl
         N104H0lBKihbmPTlQohvOFRvtOPPS34OHA2YvSQet/CW1oLq1mJ6vE2dQHjLvWljHnS/
         LyLyrYzA3XNUlSVlFQ0f/JTvGxTWGJlI6TlfFbTbD3LF/k9P6PLgnS+49AGRxTHfpO47
         EyqfGn2uLkhD5U8Umc0ylWmbgcBpNdnKyWjd54Xm7IxDE91mW9z0HP6TXSF5GVrqElWN
         iheLz2AkaqQFKBnJtHjWyDLOLCukU7r+iDoWn1g8jWvOLR2u9IL409edYXApQ5b6izld
         WPaw==
X-Gm-Message-State: AOJu0Yx8p/qSqziu0ZRK4GPnYldt/QXYVhxnsVLueogICJJfv4jr284Z
	jsScxuD+ETEv4tC+6aYeE31JXpKH8hJ81Q==
X-Google-Smtp-Source: AGHT+IEkpQZGU1DvD+HoR8OIEZ6wP5qS6qfUiofY/een7YwAg6bRnBramSjop4QT8GtjOULVGNKL0Q==
X-Received: by 2002:a05:622a:1193:b0:429:cd67:c93b with SMTP id m19-20020a05622a119300b00429cd67c93bmr8379604qtk.79.1705371884527;
        Mon, 15 Jan 2024 18:24:44 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6991:0:b0:429:7609:f7c3 with SMTP id o17-20020ac86991000000b004297609f7c3ls2649148qtq.0.-pod-prod-04-us;
 Mon, 15 Jan 2024 18:24:43 -0800 (PST)
X-Received: by 2002:ae9:e646:0:b0:783:5218:7cfd with SMTP id x6-20020ae9e646000000b0078352187cfdmr5441987qkl.3.1705371883458;
        Mon, 15 Jan 2024 18:24:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705371883; cv=none;
        d=google.com; s=arc-20160816;
        b=0ucAGslRkw4yxDMlGZVC5TZkNJtZX+Ekko3B43ZHRu6we6zyaxM/Iv9egpwJYIVOBE
         oJv7RtAS+F5tRXAUhSJKo/ZLpT3u15w9iQEqHSznkPEEIchr8qcrbD8bAFsEiADb/ksy
         6mQddTMxX9WwXnNpTSuhV8ZNW6SuG7QRwLt+Ngp+kniY3nYjSri6tVFDstrPbhsF/DuO
         5rk8OVLU6K7tS7MxWZWD7G7MNB4JdrFwBVwoZO/XUuuT1aeYlr5zMvyLgNCnsQ90Ea0M
         rXTk1TQKOSQ3fjbluptdyFXjU0/bOtJOXqITDFf9bAdSmsC4Xkxf0+0vBC2fJMkdunVM
         1IFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=VxrTjb25mQ+YfyJuNcP/pTQ8VKz7aTRcU9+ZEKmjAfs=;
        fh=3WcMQvfhmo0H+DAbN68fgpXgafmXfJWUb1u/ZrhEh8U=;
        b=uz+XlEdu/phJ92J4NNutbB9uAMwsTrkPPJTdsVYpxskAwkHYNd3ulx/lDXPX5E6Xdg
         LNaR6j+GK46Eu2exUTN66g54Po+nGiOv5DWWeONpEGu4YqTYklKmpj+T1UuHL0a9qJL4
         8OjBpZ7Vt/0LEtQE6NrCBxBjFObX06kLgw2Khsg4OFpGu3BQMOx5HVa6KMYs6lLWe2Y0
         GqW7z1p03ZN6MQlrA7fipbPhZTMOhlXjiHm7FnIgHLGJzntg6OMFZyJqyKfP4lQiMuxg
         VmO4YH2CkO7BFUkuNHfwuDQ+TFLJxDtRniWrqkk/VP9WLDOHVdeu5Qpsp5ohKb2mmerl
         /QZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id vv25-20020a05620a563900b00781cac14dfdsi8826155qkn.705.2024.01.15.18.24.43
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 18:24:43 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-187-cO0C9xcIPrGK6P3vEHhKCg-1; Mon, 15 Jan 2024 21:24:41 -0500
X-MC-Unique: cO0C9xcIPrGK6P3vEHhKCg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8FE90102B560
	for <blinux-list@gapps.redhat.com>; Tue, 16 Jan 2024 02:24:41 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8C52B1C060B3; Tue, 16 Jan 2024 02:24:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 85A101C060B2
	for <blinux-list@redhat.com>; Tue, 16 Jan 2024 02:24:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5E0DF1C05ABA
	for <blinux-list@redhat.com>; Tue, 16 Jan 2024 02:24:41 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-610-Odl8bYe_MLOjR3aWIuELog-1; Mon,
 15 Jan 2024 21:24:39 -0500
X-MC-Unique: Odl8bYe_MLOjR3aWIuELog-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2D3F640508;
	Mon, 15 Jan 2024 21:24:38 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D9BD81001C0; Mon, 15 Jan 2024 21:24:37 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D932210008B;
	Mon, 15 Jan 2024 21:24:37 -0500 (EST)
Date: Mon, 15 Jan 2024 21:24:37 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: debian-user@lists.debian.org
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: [Lynx-dev] ANN: lynx2.9.0
In-Reply-To: <ZaXPzuthOaViVfqQ@prl-debianold-64.jexium-island.net>
Message-ID: <Pine.LNX.4.64.2401152122260.218292@users.shellworld.net>
References: <ZaXPzuthOaViVfqQ@prl-debianold-64.jexium-island.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

As of today, current edition of lynx.
Announcement below.
Kare



On Tue, 16 Jan 2024, Thomas Dickey wrote:

> The current version of lynx is 2.9.0
>
> It's available at
> 	https://lynx.invisible-island.net/
> 	https://invisible-island.net/archives/lynx/
> Development & patches:
> 	https://lynx.invisible-island.net/current/index.html
>
> Files:
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.0.patch.gz
>  https://invisible-island.net/archives/lynx/patches/lynx2.9.0.patch.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.0.tar.bz2
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.0.tar.bz2.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.0.tar.gz
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.0.tar.gz.asc
>  https://invisible-island.net/archives/lynx/tarballs/lynx2.9.0.zip
>
> 2024-01-15 (2.9.0)
> * change version of OpenSSL used in Windows installers to 3.x and 1.1.1x,
>  for new/old respectively -TD
> * fixes for UBSAN/ASAN issues with clang on Windows -GV
> * modify install-doc rule to use relative path for symbolic links -TD
> * add support for gopher's hURL functionality (patch by Viatrix).
> * allow ^G interrupt to end read from a stalled connection without exiting
>  Lynx (Debian #1033423) -TD
> * allow the ^S keymap to be disabled in the configuration file, e.g.,
>    KEYMAP:^S:UNMAPPED
>  (report by TG) -TD
> * repair docs/OS-390.announce and docs/README.jp -TD
> * make the test-files non-empty, to appease some packaging tools -TD
> * check for getpwuid(), use in preference to deprecated cuserid() -TD
> * modify curses initialization to permit ^S built-in keymap to work without
>  needing external stty changes -TD
> * correct ifdef for LYmsec_delay() (report by Alexander Arkhipov) -TD
> * add a NUL after "/" in the SGML parser when the next character is ">", to
>  make PRETTYSRC view display correctly (report by "Dima") -TD
> * trim some obsolete style code for NeXT -TD
> * improve responsiveness with respect to SIGWINCH (report by Mark Zaharov) -TD
> * improve check for MAX_URI_SIZE -TD
> * improve check for UTF-8 character encoding in XML Text Declaration (report by
>  Lennart Jablonka) -TD
> * fix for decoding utf-8 in CDATA sections (patch by Hiltjo Posthuma)
> * treat HTTP 308 permanently redirected the same as HTTP 301 permanently moved
>  (Debian #1041686).
> * formatting fixes for manpage (Debian #1037353).
> * change defaults in configure script to use compression -TD
> * modify HTChunkPutb2() to avoid passing a zero-size or null pointer to
>  memcpy() -TD
> * correct loop in fill_addrinfo() which adds sizes of struct addrinfo's found
>  in getaddrinfo() call; the 2.8.8dev.15 change did not update the pointer to
>  the struct addrinfo's (Redhat #2185402) -TD
> * modify configure script to reduce implicit-function warnings -TD
> * add viewport meta-tag to documentation/test files -TD
> * update config.guess (2023-08-22), config.sub (2023-09-15)
> * update ro.po from
>    http://translationproject.org/latest/lynx
>
> -- 
> Thomas E. Dickey <dickey@invisible-island.net>
> https://invisible-island.net
>

