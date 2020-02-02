Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 3B5B114FD66
	for <lists+blinux-list@lfdr.de>; Sun,  2 Feb 2020 14:44:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1580651043;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=+tfbBu3M18vZlkqy54X4NYh8JPhuGGYYxu1yzzlpSBw=;
	b=PwwdKkhjr4Z/6ykvVv9OPuKz//lKO3/kay7z5dBR7TD5abThWDbztEUj2I4gDwa2NHZvD/
	htnB1++rpDCvI2yJmQgWRcBLbTRVb5zqzMi6FqFx9mIMMUwRD1fP0zps6kUhq9endXCjiJ
	GnM7uG1rPSGOTV5okQ1iQkhw9nQdFLY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-115-MNO-CBSVN_uAqVGvcIwEjg-1; Sun, 02 Feb 2020 08:44:00 -0500
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 98D54107ACC9;
	Sun,  2 Feb 2020 13:43:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 154378642B;
	Sun,  2 Feb 2020 13:43:53 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E561018089CD;
	Sun,  2 Feb 2020 13:43:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 012DhdI7026508 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Feb 2020 08:43:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A4227200AF7F; Sun,  2 Feb 2020 13:43:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F81A2093CE9
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 13:43:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D841D8026E2
	for <blinux-list@redhat.com>; Sun,  2 Feb 2020 13:43:37 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-292-egarDHqNPaKPk_vxAaJexQ-1; Sun, 02 Feb 2020 08:43:35 -0500
Received: by mail-oi1-f176.google.com with SMTP id q84so12205635oic.4
	for <blinux-list@redhat.com>; Sun, 02 Feb 2020 05:43:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=aTGERdKdgri7TZIvPfxT/sxnomvzFEEyOka5L6QCnig=;
	b=Z1IhdiB08jtyvrUwsSvo4Y/yrzjk1KYUiuTerefbt5hQYiRxo5eQ13EMCn5nPCjEP8
	jRTCaDIHWAmzjXNHs5HRfpdqk5zRcnCAnCyfAnixXZs8NhpUPCG5tlebm7BYUFWb7MNK
	sRnuYrQNYv0W/P5Pexf5hA7tczr8U+wN2itWiLjaZnjNaYG+iB79uM70NOb8TrGt9Z7Y
	RzbnKrnWVsXyujT+uqz2WrZQdHEV9Oie65aMhVB1CciD5NtfI0xLGTi5AzZdwYgw9gQH
	P2xX9+AaNY3PuCwSx+soWQ1FgCjmogG4Z5g6tx3nsccAoB3mj02K1gDu6FbcWt2uzkXD
	Xhfw==
X-Gm-Message-State: APjAAAXFQCcvHAXbcWFyejoMfLoOIiRRM2nELi68YTw95gusRQ+iV9hZ
	Mq7CcySqXaUuU1M008+8jj4eAzhSKsyVKAtr554hgw==
X-Google-Smtp-Source: APXvYqy05UarMGMlyS6Ssp65MIavDXBjIteb5/cJ1TnRvFXgfatK4FIILzmxH2NCw2bmzG/E2IOYFE9QIRl7lxoQCpQ=
X-Received: by 2002:aca:c551:: with SMTP id v78mr12039076oif.161.1580651013896;
	Sun, 02 Feb 2020 05:43:33 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a9d:4d96:0:0:0:0:0 with HTTP;
	Sun, 2 Feb 2020 05:43:33 -0800 (PST)
In-Reply-To: <20200202.053250.708.97@192.168.1.118>
References: <E1ixMhY-0001xB-U2@wb5agz>
	<alpine.NEB.2.21.2001310111580.13258@panix1.panix.com>
	<E1iy1ln-00062r-3h@wb5agz>
	<alpine.NEB.2.21.2002011806001.10332@panix1.panix.com>
	<d75a7b21-75c1-ee44-5d35-71129cfeea51@verizon.net>
	<10e5062a-cb11-97d5-e394-2042b9dedfaf@gmail.com>
	<E1iy5Fq-0006fl-BN@wb5agz>
	<CAO2sX32EXpxci1Y3q2Jch+Z75vdUx-cRQS2=dxdOOtBLiqY-yQ@mail.gmail.com>
	<alpine.NEB.2.21.2002020031250.19173@panix1.panix.com>
	<20200202.053250.708.97@192.168.1.118>
Date: Sun, 2 Feb 2020 13:43:33 +0000
Message-ID: <CAO2sX31+azoWqvieRF7NCPZ=rD8gsjFj5XLSDeyyrf-LNyLPFQ@mail.gmail.com>
Subject: Re: A Live Boot Image for the Mac that Talks
To: blinux-list@redhat.com
X-MC-Unique: egarDHqNPaKPk_vxAaJexQ-1
X-MC-Unique: MNO-CBSVN_uAqVGvcIwEjg-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 012DhdI7026508
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I hadn't thought about older machines being incapable of booting from
USB, I was talking about newer machines that can boot from USB, but
which have it(and even booting from optical media) disabled by
default(or have them enabled, but the harddrive is first in boot
order, making them inaccessible).


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

