Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id D5F45322086
	for <lists+blinux-list@lfdr.de>; Mon, 22 Feb 2021 20:54:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614023698;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=O7zZITMDmLbt1BOFPmjdFRfdJQP+v7lTHEv7SgGzLOY=;
	b=d9BKQiaYpm6EbVOU3b5LcQxKU5ff86loyjpTvweD8f0NSChEUu8PU7yT7CMnlB9+6uN4YH
	S3ixOLg4kuUAz2Ob2CHjd9zxgs3ek3xgin5fVTR2OG5BzcgpDA4b91O14zgqbIaz8CPs/s
	GA4Xx21FQcfGB/QahcSng5udRGerDsw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-xKhmyL_CNxSgenusecwnkg-1; Mon, 22 Feb 2021 14:54:56 -0500
X-MC-Unique: xKhmyL_CNxSgenusecwnkg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0B389107ACE4;
	Mon, 22 Feb 2021 19:54:51 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 26CFD19C78;
	Mon, 22 Feb 2021 19:54:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6287E4EE4D;
	Mon, 22 Feb 2021 19:54:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MJsejG005792 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 14:54:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EBDE610CE7; Mon, 22 Feb 2021 19:54:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E651F9E9E
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 19:54:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBC05100AFE3
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 19:54:36 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-199-NuAYwoPvM82FNIMLptOONg-1; Mon, 22 Feb 2021 14:54:34 -0500
X-MC-Unique: NuAYwoPvM82FNIMLptOONg-1
Received: by mail-qk1-f174.google.com with SMTP id b14so13933085qkk.0
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 11:54:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=iF4VgdQruh1WDvJyt+04LvJQOIcIMQ2heg0haCQoovQ=;
	b=n8KuxLAJDePJR7xuuJv1HcZPuUjo/KEuLjjDwJnvGUrbtBwue9gGehrJ+Z5gylN+bY
	l8WdS42jh6e1T3gbnXS9VLCtU9HFLGJ+sNydfTgFVTHCI4dw/UhoYg1JUQ5hN84eICNx
	NkuTwIIOHZdYv3vZ27cCHKCFtWaJKJC5PQuCLiOjy6p25Uy+uASb6w+0L+yhupvF4s0h
	YfrwE2osKwmp7z+ivbh6lH+bQVHIzSySkf4VVAu4qe8Y0hbpmA2vqG5cAIvwXa7X63mV
	rzWBizsSnYuSlxLBO6tMB7km4CuD+LxzfLOClq/q952Jb8O43lCN/3BDvufSuz8+8tbE
	Msww==
X-Gm-Message-State: AOAM531V7SjXex/2DdL5hikfyDSKkQuOp9TX58DWlEV9oiLG/gMctm6Z
	GbkPnlOv3svIjM4vQ12EYEzPBosIydxFeP51ifSfTzynZcw=
X-Google-Smtp-Source: ABdhPJwHhcnmrkJDesDNAjctFsgdendX2flcYDEfQ2prRL/9NfbvE2W18yygzbp2kvzSkg6LUWK8MN4pVPxuTCJ2tJ4=
X-Received: by 2002:a37:61cd:: with SMTP id
	v196mr22527200qkb.341.1614023673684; 
	Mon, 22 Feb 2021 11:54:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:b48c:0:0:0:0:0 with HTTP; Mon, 22 Feb 2021 11:54:33
	-0800 (PST)
In-Reply-To: <dfb5b6c7-a3c6-9bc2-3385-5d8bab5e17e@hubert-humphrey.com>
References: <dfb5b6c7-a3c6-9bc2-3385-5d8bab5e17e@hubert-humphrey.com>
Date: Mon, 22 Feb 2021 19:54:33 +0000
Message-ID: <CAO2sX32rMOTpxk9xNuSk6pzYGEXQe-QyA2PogHrt+uAOVxrx-Q@mail.gmail.com>
Subject: Re: Running Android Voices in Linux?
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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

No clue about actually using the voices, but a little Googling would
suggest .apk files are just zip archives with a different file
extension.

So the first thing to try might be:

mv voice.apk voice.zip
unzip voice.zip

to extract the contents of the package.

That said, Googling also suggest some .apk files are encrypted, though
apparently, decoding apk files so the above works can be done with
apktool.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

