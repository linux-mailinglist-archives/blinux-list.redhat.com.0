Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D9244F9FE
	for <lists+blinux-list@lfdr.de>; Sun, 14 Nov 2021 19:50:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636915847;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jL3+yKWnZ5R41+ZVfVJk9dYg50p6u+nLTOFIVKpmPTo=;
	b=RGVPMN/4xnU0OLO4V74weZVKdsD3tLezSsKi/tu7/t5hBh0C3iFkJhqcW1nSe9JgNae/jH
	/b6rQhFzZZadALnoREGnIB12RKy/ZD2CskxfgrRrkXC4FuuLNpjxXN39qCdMKG77icenSm
	kiipZle/RpvbORJJyTbxeNqRrVW1To8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-404-n1JA-5-lNuW9PKtHMzba_A-1; Sun, 14 Nov 2021 13:50:44 -0500
X-MC-Unique: n1JA-5-lNuW9PKtHMzba_A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DEF56802C92;
	Sun, 14 Nov 2021 18:50:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 39ABB5C22B;
	Sun, 14 Nov 2021 18:50:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 87DC018199EE;
	Sun, 14 Nov 2021 18:50:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AEIoLbM019839 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 13:50:21 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 279DB2026D7F; Sun, 14 Nov 2021 18:50:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 22A932026D46
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 18:50:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B6EA1066558
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 18:50:18 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-358-VqsVzbzVNmaJobQ3dxeltw-1; Sun, 14 Nov 2021 13:50:16 -0500
X-MC-Unique: VqsVzbzVNmaJobQ3dxeltw-1
Received: by mail-qv1-f41.google.com with SMTP id a24so9895523qvb.5
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 10:50:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:mime-version;
	bh=RUjZlDIgTgg3ENuglbjY0Kou/KfudfbZRqPTPE1BypA=;
	b=GEYzS/4DXOvYzyaBoiDwIljvK6j/D+ESIm2LRmo8b0cyeeGcgucTcVbk38s/u1nkQd
	5lHUNFIGj3SPICnFkUU/t/WN//XjHAw1+3dmmj5HeOauBRfjllBTVJJr47GY5Huw0r9X
	pKFedt93oOQziKCvsXfrpMeF0YN+VlmPEGwkUJNNURQWCpPugQL51jhu7/b8vnrPiJiw
	241VjXvKH/Wp6ikfgjzxjhxQBVK+DumjOPDgmhZI5RAFuGaip/KKQ1vQ8SXMwl7AG8Ou
	q5U+nX7LZRbgUh/fceXD1LwlPdG0Z/wHA/jc44C3c0McSVSxFPEySDX9QNiyZMjp/xF1
	hXew==
X-Gm-Message-State: AOAM533IOhO9sv83vA9rpFfBBsepoOHMIitb75igSl4Gw+X0uM3ib1NC
	lo8WX2Gphna9BZbwu9GwT27kBxT8sk8=
X-Google-Smtp-Source: ABdhPJye+PbkuzO7eyt7pEFsheV82JMucDQTIT5HYo+1A4S+0ywmyjSOKMJKz194qPWYQkNaSYoD2w==
X-Received: by 2002:a0c:e98a:: with SMTP id z10mr30846282qvn.43.1636915816174; 
	Sun, 14 Nov 2021 10:50:16 -0800 (PST)
Received: from dans-mac-mini-2.home
	(pool-74-98-213-46.pitbpa.fios.verizon.net. [74.98.213.46])
	by smtp.gmail.com with ESMTPSA id
	e17sm6614189qtw.18.2021.11.14.10.50.15 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sun, 14 Nov 2021 10:50:15 -0800 (PST)
Date: Sun, 14 Nov 2021 13:50:13 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: any other accessible email client for linux?
Message-ID: <c5f0b1a-e63-8b28-c2de-1419d49be0cd@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit



Alpine allows opening an url in email; using the browser of your choice.
On Sat, 13 Nov 2021, Linux for blind general discussion wrote:

> Right. I'm not fond of terminal email clients, but as terminal email
> clients go, Alpine is probably the best of the lot. Its menu system is
> certainly far easier than dealing with writing a configuration from
> scratch by hand. In fact, the first time I used a mail program on Linux
> nearly 20 years ago, Pine was what I used and learned first, and I found
> it pretty useful, at least for plain text email. Nothing in the terminal
> works well when you have to click links in an email though, or if you
> receive one of those HTML emails that everybody sends these days, which
> is why I still recommend a desktop client in most situations.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

-- 
ent-
XR

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

