Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6445D34D300
	for <lists+blinux-list@lfdr.de>; Mon, 29 Mar 2021 17:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617030020;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NXLQLt0wnhwo8tkrx8TnoI8aqIaFIOUPGGUEqz7+DyY=;
	b=DSKeIdGYZCBwrv8Jk5uWj7GzCJ1x/wKnCH0OPHXUhPO/W3DPQ7UzbHajYB04M4ycFCx3xT
	ZRt7FEEEuxVnB5iRgZBX54n25cQrwCEcMYa1LDtJbChgKT3y7pjkR61XNSrtg/oBciDiPa
	GI30jUd6S8rVoulZCwJazTU98Ap0g68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-554-xks-tb-DNLGL46GcxAwJvg-1; Mon, 29 Mar 2021 11:00:18 -0400
X-MC-Unique: xks-tb-DNLGL46GcxAwJvg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3C732107BEFC;
	Mon, 29 Mar 2021 15:00:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 01BA65C582;
	Mon, 29 Mar 2021 15:00:11 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 80B811809C84;
	Mon, 29 Mar 2021 15:00:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12TExuKA016363 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 29 Mar 2021 10:59:56 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A3DB43671; Mon, 29 Mar 2021 14:59:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62FA043680
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 14:59:54 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E419085A5BB
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 14:59:53 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-396-80ZtpNlTNm2VeG9brdGSVQ-1; Mon, 29 Mar 2021 10:59:51 -0400
X-MC-Unique: 80ZtpNlTNm2VeG9brdGSVQ-1
Received: by mail-wr1-f46.google.com with SMTP id j7so13225883wrd.1
	for <blinux-list@redhat.com>; Mon, 29 Mar 2021 07:59:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=SZsaDTt+yUpHbDrKoVUWhY+QJEJtSnbMv49wVrEjFSU=;
	b=WYowSXhl44ADzknEUSspjcbBwfbv6itDMOePm9sEGb2LeG4Fwb9ifLpMM9aB1hg1t0
	qSq1OokuiKobWCiPK10gL1cWSBv1feXWAuAqzpBE24XYNZ3yWjsOgh4S38b67gJCSnGY
	Vqn8TiWH5ORMgimRO9HEjjJuodRM46D7Y4yvgqFqVQGuFzDycl2Reb41kmcPyZemjz9s
	8vAE4c6DunZ7stF27zP7NBsG2e/z2Yihxb4jSEhFIyZSVIOQwtlUy3V9iqMHFDtSUZEs
	vULw6yEEqLDWgP9OmY4kG+uVsDFSKOfuO7ue2FvtAdEmxDk0zUMXndhjkGmJ10pS+SGi
	vQBw==
X-Gm-Message-State: AOAM533U+c8WyhyjzpHUcgJctkciF/He5l7AZ47eQPk58iS2meAJy1b/
	E45w3Ygn0mVlBCYPlKVzhKogavu6OXg=
X-Google-Smtp-Source: ABdhPJwPP0rhiCb0S2KAsNNsiTdqgNJZqKdcMSzqtpPWn4QLtzVwNwY48uNOFur95p1fRzv2VAqrMA==
X-Received: by 2002:adf:dd48:: with SMTP id u8mr28675238wrm.139.1617029990257; 
	Mon, 29 Mar 2021 07:59:50 -0700 (PDT)
Received: from [192.168.1.130] ([87.74.160.207])
	by smtp.gmail.com with ESMTPSA id
	j136sm27092427wmj.35.2021.03.29.07.59.49 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 29 Mar 2021 07:59:49 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: QT apps frezing in Virtualbox?
Message-ID: <0f7bcaa6-6ce7-d110-7c24-061b8a2c770f@gmail.com>
Date: Mon, 29 Mar 2021 15:59:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.7.1
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Quick question. I swear this got fixed, but I've been playing around 
with Solus recently since 4.2 fixed the installer (woohoo!), among 
others and I'm running into a consistent theme of Electron/QT based apps 
freezing the VM with null driver issues.

So given I'm running Virtualbox, is there anything I can do about this?

I've tried Solus Mate/Budgei, and both lock up as soon as I alt+f4 
Chromium/QT apps, as in host+r is the only way to fix it sort of lock up.
Same for a few other distros too but Solus is the one that leaps out at 
me. I thought this was fixed at least in Mate last year? It works 
flawlessly in Ubuntu Mate after all.

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

