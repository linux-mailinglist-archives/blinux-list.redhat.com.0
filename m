Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6D6482BA9
	for <lists+blinux-list@lfdr.de>; Sun,  2 Jan 2022 16:17:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1641136654;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=V+bS0+0l/t7ZMott/9aVROGpuHg6ogM0IUf99sCKRmk=;
	b=Co/grGiWx3PbaBREHKQBsf7Y2BH0V6pr2/1TR6CjDqCWLB8Zep3PdPmrSgG5CB8ljthVAm
	97kckqy1X+YT4A9vWtq8roVE/pUFT3ak0Emi6n9N3P2geCKKavgf7hAJNflqJm4/yyhjk6
	Apyh0Kxd8Ir/ssbprm0B+8+KFAyiEfw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-621-U8UE4w37PJ-NkqsxlLKx4w-1; Sun, 02 Jan 2022 10:17:30 -0500
X-MC-Unique: U8UE4w37PJ-NkqsxlLKx4w-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 198031015DA4;
	Sun,  2 Jan 2022 15:17:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 877FE1059107;
	Sun,  2 Jan 2022 15:17:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7492F1809C88;
	Sun,  2 Jan 2022 15:17:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 202FHAbR024964 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 2 Jan 2022 10:17:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DD846400F3F1; Sun,  2 Jan 2022 15:17:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D98DF400F3FF
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 15:17:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B91E52A59545
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 15:17:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-112-TASTVBF9MW2p-nVg-CiWEw-1; Sun, 02 Jan 2022 10:17:09 -0500
X-MC-Unique: TASTVBF9MW2p-nVg-CiWEw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JRjCm5TC4z4LQ5
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 10:17:08 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JRjCm4zglzcbc; Sun,  2 Jan 2022 10:17:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JRjCm4Y5yzcbC
	for <blinux-list@redhat.com>; Sun,  2 Jan 2022 10:17:08 -0500 (EST)
Date: Sun, 2 Jan 2022 10:17:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: archlinux and pulseaudio
In-Reply-To: <1914a2cd-e729-c2df-8859-cf0a6dd86377@gmail.com>
Message-ID: <c69d61-5060-8cf9-e792-a4311d6e116f@panix.com>
References: <cc5a1a34-5d16-e4bf-cd5-80988090af45@panix.com>
	<1914a2cd-e729-c2df-8859-cf0a6dd86377@gmail.com>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

It didn't, I did another archinstall run but this time chose none for
sound server and that did work.   First run was with pipewire and I'll try
that again but I need to read up on how to configure it properly.


On Sun, 2 Jan 2022, Linux for blind general discussion wrote:

> If I'm understanding your situation correctly, it sounds like you may want
> pulseaudio-alsa. This package will configure alsa applications to use
> Pulseaudio, so they shouldn't be blocked. Hope it helps.
>
> ~Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

