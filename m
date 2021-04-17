Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 44F5336311F
	for <lists+blinux-list@lfdr.de>; Sat, 17 Apr 2021 18:16:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618676205;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KbePfIvkZV1bUWd6yFxANx3l/Fykv1f3SqEiJRokGkY=;
	b=WDWzFkY9nB4HFdBN5SoOAIpISZaPYfZNCzGO+pd6V+/ASp9eXCoQU1Or3o2TK/g2ZXA5zr
	6sZ4SMLUQLHu8ojQmJnNFna3c7iFEawQukL+Gl4QAG9Z/xlFz3R0halJSd8DNla6zBi8go
	4p1SknLOZi5lVCy8wzgxpNjjVHTvWus=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-lTxDFF0pMhKIq4k0pdem3g-1; Sat, 17 Apr 2021 12:16:43 -0400
X-MC-Unique: lTxDFF0pMhKIq4k0pdem3g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F2A93501F5;
	Sat, 17 Apr 2021 16:16:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1871B9CA0;
	Sat, 17 Apr 2021 16:16:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC8A61806D15;
	Sat, 17 Apr 2021 16:16:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13HGGLOZ032163 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 17 Apr 2021 12:16:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C5EF2202847B; Sat, 17 Apr 2021 16:16:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BFC2F2182DCF
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 16:16:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DF41811E93
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 16:16:19 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-549-tm1kic3GP2yEdNSqgpv96g-1; Sat, 17 Apr 2021 12:16:17 -0400
X-MC-Unique: tm1kic3GP2yEdNSqgpv96g-1
Received: by mail-qk1-f172.google.com with SMTP id c123so27129071qke.1
	for <blinux-list@redhat.com>; Sat, 17 Apr 2021 09:16:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=04c3lejoenoy7/t/VGL4S0cMtwpqV9ekQH494t9O+K0=;
	b=iyZffakAPIIhwbBmShSE160p+5AZuP60zBtcOo2GMu9xac3paNDYE6aquyhfmk/39S
	/L+ulhHocXgeqT2CQojmyXF6LbQgGST7Wnms9sYfCNpoDL11qgxQ7FPIiFixdMvMrQEH
	f5GUX5akkGDlqhjflRGXQoU7CNyyztPnNPQf9cRuoIBtQ2GbkByciaHEq4qftLyIOqTA
	twlMweKKUJdpNXWkOp+BqonqoxWMh7dKBZty+3EEzZCUG0WNjLLBGVZ+cTwAKkTlCAnX
	JsD9zPzOXl/7rCnLhZmeG5rAGZG2dlrxk7/97p9cAw/u3yMrc0+Q2UjnbctwyPfn8gkx
	4//w==
X-Gm-Message-State: AOAM533i+UvBmptLJX+CXyVJ8dMPdSOMGOWeLYcUg3nP2DoF3gRyhU1e
	OSwMDmZRtkSniB/VouYXFkbjO2HgsGqbD/SLYhvhpb6ZV1Q=
X-Google-Smtp-Source: ABdhPJwDJYN8HMpM56fd03yVLvi1y8+MMTEKXBKEg/SXo6uZ5KmRrt/xoiPIJAepHBPrwfWoyQCvnqIfU2VC/g+9+Gc=
X-Received: by 2002:a37:6c01:: with SMTP id h1mr4787231qkc.182.1618676176403; 
	Sat, 17 Apr 2021 09:16:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a0c:eb4e:0:0:0:0:0 with HTTP; Sat, 17 Apr 2021 09:16:16
	-0700 (PDT)
In-Reply-To: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
References: <590d3aa1-b8d5-5999-63a3-f94bff3d694e@gmail.com>
Date: Sat, 17 Apr 2021 16:16:16 +0000
Message-ID: <CAO2sX31G8zsH4axUFCf5gyGFjEcon-ksqRWPX4k0kLQts_GSzQ@mail.gmail.com>
Subject: Re: Gmail and attachments (or...how do I?)
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I can only speak for Gmail, and then only for it's basic HTML view,
but if there are multiple attachments to an e-mail, viewing it in a
web browser should present a download all link that serves a zip
archive of all of the attachments... and there's no reason to think
Gmail's Standard, JavaScript absuing view wouldn't have an equivalent
feature... Admittedly, I don't think this works across entire
conversations and I'm not aware of any means of doing entire folders
worth of attachments... Admittedly, I've never used a dedicated e-mail
client and have always just accessed my e-mail via web browser.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

