Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 296A24AFFAC
	for <lists+blinux-list@lfdr.de>; Wed,  9 Feb 2022 22:59:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644443990;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=IVLKjN6hXe7fjej5SGT6G2SxeVmMoSzRu33ZZEGSuv0=;
	b=djRKgNzfbC4pT5FgTBDK9+QRCeBBNN2w8PIWbkHON/W+S1KzOy6j2JNngvCiqSuleISLGi
	Ux+G6EczuQ8X+gcQvSlMxUZyRN8ojttZom3X9ae5gXgcDOEEFHolJBofC9dQ3bXblQu//W
	sbwTI0shOOP9QG5buv3dPgrRLxgNKvU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-8g8UP56OM22J-CQTPwHENg-1; Wed, 09 Feb 2022 16:59:46 -0500
X-MC-Unique: 8g8UP56OM22J-CQTPwHENg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7A133874980;
	Wed,  9 Feb 2022 21:59:42 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3791AE715;
	Wed,  9 Feb 2022 21:59:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 89AD71809C88;
	Wed,  9 Feb 2022 21:59:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 219LxXKC013923 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 9 Feb 2022 16:59:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 119BC492D1F; Wed,  9 Feb 2022 21:59:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0DD92492D1C
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 21:59:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9CBF1066558
	for <blinux-list@redhat.com>; Wed,  9 Feb 2022 21:59:32 +0000 (UTC)
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com
	[209.85.219.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-497-bfVgXpSMP-yJjxQ0F5oWzw-1; Wed, 09 Feb 2022 16:59:31 -0500
X-MC-Unique: bfVgXpSMP-yJjxQ0F5oWzw-1
Received: by mail-qv1-f52.google.com with SMTP id fh9so3081656qvb.1
	for <blinux-list@redhat.com>; Wed, 09 Feb 2022 13:59:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=rAhWvfv5bXLY17phHVf7FzZC5N3ThiTEnPHwAcXc/XU=;
	b=P2S5Alxn8Rzdo0s0bVrDVNlCgEMp5yxfibwhAlVm6m20tBpVtythXAk1Tj9Ysai0oN
	YDCB8WvQysLlihIpQjb2jn5faVxyenJe6kzARi49frKJ/YovYST6DQS6UgfR/J62bgnm
	H1OuTyt6u5NQbkIR2yWiwOnIiHH6hvCNEvsrTutqQuEwEsEUDwnlG/vEBKQj75wp+wpl
	oJ0LWNt/r0VZxYL1QVVlRt15XTJzQ79RI+M2M6YLg36Q72wflT1XF3k7heqH03NKQDvl
	8dpw6uKUcOcOuSFIYx0q29MTN595SZ85ztmHwJ/gqboOaPHVKcwCK2bzjvpoXxgvVw7h
	adnQ==
X-Gm-Message-State: AOAM533KhJVT/y4D7kfC/j29FBSrzd7jp7VNPV1j+iTDbuVeUtDP+bkc
	GltnAKIcqE0B8EDQ3v8YHvQMMeKfMyFpWtFWnQIGkdY5
X-Google-Smtp-Source: ABdhPJyC3Mk40EFMYD9TdoHDY0ilkb+bBDMQICYcMNv5EXYGvHEPHKfRzWXJah2ALz0S4gxvRR+BtdV6e4kVICJ5aGA=
X-Received: by 2002:ad4:5941:: with SMTP id eo1mr3032040qvb.50.1644443970583; 
	Wed, 09 Feb 2022 13:59:30 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6214:518d:0:0:0:0 with HTTP; Wed, 9 Feb 2022 13:59:30
	-0800 (PST)
In-Reply-To: <ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
References: <20220209.123818.520.13@192.168.1.100>
	<20220209090549.4659750f@bigbox.attlocal.net>
	<CAO2sX33BR+rnxEVtDOnAzyP=bQ0cB1bkLKpkVKGSmZdYJiSiog@mail.gmail.com>
	<20220209115112.077dcede@bigbox.attlocal.net>
	<CAO2sX309esqHKcpfCUtFQ4njcDtiXVHVCddUxApE8PjNMg2gGg@mail.gmail.com>
	<20220209134336.72a59209@bigbox.attlocal.net>
	<ddfd6124-1054-6f85-0b18-3a4da344a557@slint.fr>
Date: Wed, 9 Feb 2022 21:59:30 +0000
Message-ID: <CAO2sX33Be721PG40oKJY6C9BuZcDJcEpZAAU22L+tTgQnftfnQ@mail.gmail.com>
Subject: Re: regex help
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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

Okay, so basically, whatever's in the braces is treated as a comma
separated array of strings and whatever string the braces are part of
gets duplicated for each entry in the array... and if their are
multiple sets of braces, a test I just did suggests the expansion
covers the entire Cartesian product... at least,

mkdir [1,2,3}test{1,2,3}

generated 9 folders...

Is there a way to define a range? I tried:

mkdir {a-z}{0-9}

But that seems to get interpreted literally, creating a folder named {a-z}{0-9}.

Still, even without a way to handle ranges, this sounds like a very
useful trick and and easy to remember one to boot.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

