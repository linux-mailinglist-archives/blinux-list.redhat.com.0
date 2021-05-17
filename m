Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8406E383C8F
	for <lists+blinux-list@lfdr.de>; Mon, 17 May 2021 20:42:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1621276974;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rplgtFFx7dA1E8+F0vvmddX2XISeI41oqZU68vT6BKU=;
	b=NWzUKW1xtaiVCryd0gGUcnZ88fWKk7yd83i6JRVIc8v5om36YOLa6k73J+tayF9uVC6f0F
	BY8KA7QNbuMdLvmtsp0HQItTLsmZu4uhK4QEX+vvsAchGducXi4Xw8/+D8Ve+xyg5k4Jdj
	s6EyfcVivMiUztn75R/sCHQffdSWg1w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-eKYPL4sLNUKwKH3eeTLF3Q-1; Mon, 17 May 2021 14:42:51 -0400
X-MC-Unique: eKYPL4sLNUKwKH3eeTLF3Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 254531007467;
	Mon, 17 May 2021 18:42:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CB7318A78;
	Mon, 17 May 2021 18:42:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 10E8B1800BB4;
	Mon, 17 May 2021 18:42:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14HIgcVT017285 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 17 May 2021 14:42:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 73311111287D; Mon, 17 May 2021 18:42:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6DB7D1112879
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:42:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8311D101D221
	for <blinux-list@redhat.com>; Mon, 17 May 2021 18:42:33 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
	[209.85.160.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-528-McbuFuzLMiioGFKXyHu8EA-1; Mon, 17 May 2021 14:42:30 -0400
X-MC-Unique: McbuFuzLMiioGFKXyHu8EA-1
Received: by mail-qt1-f170.google.com with SMTP id y12so5575498qtx.11
	for <blinux-list@redhat.com>; Mon, 17 May 2021 11:42:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=NSyh91GMTVhSOd1lhN+AnRSo+KpSeXg7YCrOe8aEMGw=;
	b=iMFws9QsSfQr6KtfY5V2J1WHBpWvDsGDlC9LirAfyxg+2jsBKN0t4dG/tN0yzLSb4b
	xRMooKYPrytaZpg6ImWOE4wk5H4M2H7qOPs3vBbVN1QZ7tp+a3em3JFkzs8czy50EARi
	33lvsLgvIux0Oqxc9qo+g6JBy2T4B1CLfMUfCmh5lOTRSJAmcJRJBHHkPHtqia8DdeZU
	5BPPoVXsrzPQvrBFjNM2IckBKeL+Qle5G7T7RB5gOkoKjc9OjMxpjZ8pCfLdfWWiqx9z
	Eu/B32xZho6GzVrkCehNYJEyKvCTg4J5nkdHNh5MeGmQaUaE1RVuDIXO1mlbU+c+uMzC
	/EKw==
X-Gm-Message-State: AOAM533aCYVYqnKE5GviJYik/xGAkNuQYpeu8CO37v1KNzS5nd5Q4l5c
	ZbvoCE+m4K/R8Q90peJsC0m5Wf8e0ZdYW+8fZFcpbNbOypo=
X-Google-Smtp-Source: ABdhPJyPwiiToeYJI4+JjLO0e0oX42/Tbd6UWds0aaJI4C/Fp8STyY+vkcQhfosB0zimEFwQh9zKfWsYMnU3EmJcJjA=
X-Received: by 2002:a05:622a:15:: with SMTP id x21mr917923qtw.6.1621276949695; 
	Mon, 17 May 2021 11:42:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ad4:576e:0:0:0:0:0 with HTTP; Mon, 17 May 2021 11:42:29
	-0700 (PDT)
In-Reply-To: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
References: <0e57a608-299f-e90f-f5aa-432e6cab3eb5@gmail.com>
Date: Mon, 17 May 2021 18:42:29 +0000
Message-ID: <CAO2sX31Kr63wZRT0ZO=CW55XqovH1VomX50RASxUgbYA2nn1bQ@mail.gmail.com>
Subject: Re: A question about Fenrir on Arch linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't know anything about Arch's package management, but my first
guess would be trying to install

libhspell
libvoikko
libnuspell

With whatever Arch uses in place of apt...

Doing some searches in Aptitude, libvoikko is a library for language
processing and libnuspell is a spellchecker. No results came up for
libhspell, but I suspect it might be related to hunspell, another
spellchecker... Checking the Debian package for Fenrir and doing some
dependency tracing, all three of these might be in the dependency tree
for python3-enchant, which Debian lists as one of Fenrir's
recommendations... Unless you need Fenrir to provide spell checking, I
think you can safely ignore these errors.

No clue about the lack of speech, though Debian also lists
speech-dispatcher and python3-speechd as recommends of Fenrir, and
while packages can usually function if none of the recommends are
satisfied, recommends are often required for important functionality.

No clue how much of this translates to an Arch environment, but
hopefully it gives you a starting point.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

