Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F77474F8B
	for <lists+blinux-list@lfdr.de>; Wed, 15 Dec 2021 01:50:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639529428;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2T3U3tdubE4WWCe2uTCI9MAhvDdy5+AcubWLhQbndeM=;
	b=Nuagkiit7BaISkQA42ZYvec6NP7g99M553eNNoYgLBs5Stj+GJxQReQfmxIYc0V8m2UKpm
	7P4EEdD64zaCY9uMQuSpFY/VH3u+8Y+lJNOK5Kr2YyDHE0dZwV3QZTOoS46FjSE5nQBRm9
	JJRQ0yop3Yp1Y34qktbHsp3wwVFi1p4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-451-8SuO5TJTOki8QXrey8tSWg-1; Tue, 14 Dec 2021 19:50:24 -0500
X-MC-Unique: 8SuO5TJTOki8QXrey8tSWg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 86C571023F50;
	Wed, 15 Dec 2021 00:50:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C68A360C53;
	Wed, 15 Dec 2021 00:50:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C53F11802E27;
	Wed, 15 Dec 2021 00:50:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BF0oAiT006926 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 19:50:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EBC662166B41; Wed, 15 Dec 2021 00:50:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E66AC2166B40
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:50:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 029361064E6A
	for <blinux-list@redhat.com>; Wed, 15 Dec 2021 00:50:07 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
	[209.85.219.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-12-enTo3AprNwSyLDo4AhvksQ-1; Tue, 14 Dec 2021 19:50:05 -0500
X-MC-Unique: enTo3AprNwSyLDo4AhvksQ-1
Received: by mail-qv1-f43.google.com with SMTP id b11so18871921qvm.7
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 16:50:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=n2bXDbVj/0A9NmjfZn+BHi2oY2OtvcqIbQUch7EH9Z4=;
	b=pDjtLohXZEfYxFXXt07lrlM63nVXbuDqVgeS+wGUpvDN22AFuG/8Q6twtPUV2IC32M
	SNk+NM4srXa1OicF6enOq75LqpkSsETl0W1ZqGsnYE6UPUhuENnAIM1FYg+gv6RpMFXY
	7c+859tKY6hYWmoF13PYteYtGAVjQXVKZ6QuyBYn/eq9r+z0w4aOqxoi5sLKriL9DRy+
	qGUXkYJg2CZMQpsXHrnJL7V91ESJQ8FQUET1Giq51UbZm911RssJ62fFw924vOwVLBZV
	B/VV2SUf4WQJQKMDF7G1enX6nJ7QZzDt5TmVZCvc2STGeYLYExsPwpHtaqMnPIZ5gCAH
	o2vg==
X-Gm-Message-State: AOAM531EtS1rfTWG+2iwVZF95kvaF2Kzk5mH8u/k+Hx/Xb9C/mX0pMxt
	mvwS+pl+ELI+bn3JshbN2LVciytKn4WDyJhOwt5IIFFh
X-Google-Smtp-Source: ABdhPJwhNHPMSuNusIYfqT6Dyr7y9KSCRf/Nw15g5EUi5sIHqlC1ikrpzj2D9vLiV01ZkJO0A+ZoGz51vkmKJ4eLuOA=
X-Received: by 2002:ad4:5bc5:: with SMTP id t5mr9367611qvt.72.1639529404580;
	Tue, 14 Dec 2021 16:50:04 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a0c:c34a:0:0:0:0:0 with HTTP; Tue, 14 Dec 2021 16:50:04
	-0800 (PST)
In-Reply-To: <20211211191419.48ec5612@bigbox.attlocal.net>
References: <CAO2sX33xFEVcratw7R8jfbHY5v7LtCGkHbj3u91fXWTdBsnp4w@mail.gmail.com>
	<20211211191419.48ec5612@bigbox.attlocal.net>
Date: Wed, 15 Dec 2021 00:50:04 +0000
Message-ID: <CAO2sX31nGP6-=DgsvRCoTBwRtfP=pALKcnuvWPfy6o=9ccE_NQ@mail.gmail.com>
Subject: Re: Ignoring hard wrapping when doing copy and paste.
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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

Hey Tim,

fmt worked, though I had to reduce to -w999 as -w99999 and -w9999 both
gave me an out of bounds error.

Tried installing xsel, but it gave me a can't open display error.
Granted, my stripped down xserver is running on tty1 and I tried
running it from the console on tty4, which might be the problem if
it's designed for being used in a terminal emulator for copying to and
from graphical applications running on the same xserver as the
terminal emulator instead of copying between an xserver and the
console.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

