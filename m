Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E54BC4C78D7
	for <lists+blinux-list@lfdr.de>; Mon, 28 Feb 2022 20:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1646077421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5Nn6nAhid/KOJHrdbnNko6KsfJP9Aht9fgE8HlQlP+g=;
	b=iYh5NeOyPWPdR6HGpkLHsdW2vX/8oPSQoMTOQb6CaJcr6mYlmmoM4pBlnlsExxnMCQcHfy
	LRVBWdP2JBdc7lsV5Q8moQf0+kdsCnFPiySXhvIOyRuwqvWIwHJ6Og9rAYGkt2bMiA4qne
	RwRYcJbf4QESFAKWvrKQkqRGJKKQVpI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-656-JkKYNploPC60l9Z-lm22Fw-1; Mon, 28 Feb 2022 14:43:38 -0500
X-MC-Unique: JkKYNploPC60l9Z-lm22Fw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4498051DC;
	Mon, 28 Feb 2022 19:43:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CD90F30582;
	Mon, 28 Feb 2022 19:43:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 76A3B4BB40;
	Mon, 28 Feb 2022 19:43:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21SJhQVJ004107 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 28 Feb 2022 14:43:26 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 74850400F3EA; Mon, 28 Feb 2022 19:43:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70825400E136
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:43:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 58B131C04B4B
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 19:43:26 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
	[209.85.219.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-353-KFlYR6FFOJ2596lrj_WKyg-1; Mon, 28 Feb 2022 14:43:24 -0500
X-MC-Unique: KFlYR6FFOJ2596lrj_WKyg-1
Received: by mail-qv1-f47.google.com with SMTP id 8so14397328qvf.2
	for <blinux-list@redhat.com>; Mon, 28 Feb 2022 11:43:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=lAOHrOas4St3r3CRdIXlpY4MBV4TOqoGH1Fr3JNdUUI=;
	b=p27yszk7L3fWmPvf8urOMN0PuudNCfPontPXtL8uSlgmC2h5bjoljUoZwDukdG3C/r
	EbRfibykoC7i9dxUAHMUvdTMzE3HLJtyFrQPYEZCBEC9qho8sWUlquWrmL2PNnb4E6pK
	KW1VyryQ2wrbbdrh/bmjpPpyTMABF7f2+RcokpnEqhSnrLsHEpEbZNi56UHxvPN0iQ0h
	IbGXb47cXRXr00KPL8bYeNiuSZdtSSessveC6OUoBDG1TVWmLsVl64JTi9wFoRXPJ+wc
	JgLf6cOG0x9eq500RJy1ertubsYJ2AIWhsqZNlxf4D+0vKILdXHlvXKz1VzOYQU3ZvvX
	/g/Q==
X-Gm-Message-State: AOAM531LEXod29ylHYtNrkgS1v7K9YAx2aUiqkIAuxibk1nGAJRxXScG
	6m7Jt9c32k2h2Wd4AGGiHlLf+iSHik8UmDhIqQ15fFQE/sI=
X-Google-Smtp-Source: ABdhPJxQa+ToujuiB55S0ZmwWODLQJLIccLZ6aIVWW6XWijrfzrwrMPkKASmx7Gl5iu9VnPjxt+G5evPJu8UZ3ugrx8=
X-Received: by 2002:ac8:5d8b:0:b0:2dd:d855:66e0 with SMTP id
	d11-20020ac85d8b000000b002ddd85566e0mr17731095qtx.258.1646077403203;
	Mon, 28 Feb 2022 11:43:23 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5f08:0:0:0:0:0 with HTTP; Mon, 28 Feb 2022 11:43:22
	-0800 (PST)
In-Reply-To: <30be31e3-1962-44f3-a7ea-c5895e9870b1@gmail.com>
References: <b58188d0-6477-4bd2-1f6-3e9115dafb5a@gmail.com>
	<30be31e3-1962-44f3-a7ea-c5895e9870b1@gmail.com>
Date: Mon, 28 Feb 2022 19:43:22 +0000
Message-ID: <CAO2sX31c1gHuFLJBdvqNh-QBvAoCW4Sjx0+0NXe8D89Q8M6SUg@mail.gmail.com>
Subject: Re: Use alexa on linux
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, I have an older model Echo(second generation I think, the one
that's a tall cylinder with four buttons on top) and am kind of
interested in trying to get one of these digital assistents running on
my old desktop or a Raspberry Pi, especially if I can type a question
at the command line instead of speaking and hoping it can hear me,
hears what I said, and that I didn't trip over my words) but I'm
hesitant to install anything that isn't an apt-get install away... and
everything I've heard about snapd suggests the package format breaks
accessibility of sortware that's accessible when installed through
other means.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

