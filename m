Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA36A65C0
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 03:49:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677638958;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=bJzJkyRRgYM2R20iJuX1/TZuIIxi3mmipLWoumy20Qs=;
	b=Lcoltawk6M/bfE9n2Qc9QcoBM+BpngjerfwmlGKhIipqqSnMuWw4Fb9P7r/F7cyhzkJqmB
	vNC1WGVvttlCLdM8w78aU3Gag71gxMZKvUZd9qxf0ppxHeKM0SyagUjp9u//2Rp6Zwbrlf
	/T2+BI0RF/5HUDy9Mrbckf8dLOn362w=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-296-9xxl7zlUPbSBuKoK18kV_Q-1; Tue, 28 Feb 2023 21:49:14 -0500
X-MC-Unique: 9xxl7zlUPbSBuKoK18kV_Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2826B280A323;
	Wed,  1 Mar 2023 02:49:13 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 621862026D68;
	Wed,  1 Mar 2023 02:49:12 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 0649619465A8;
	Wed,  1 Mar 2023 02:49:12 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 28 Feb 2023 21:49:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a podcast player
In-Reply-To: <mailman.981.1677638249.3183647.blinux-list@redhat.com>
References: <mailman.999.1677627794.3183649.blinux-list@redhat.com>
 <mailman.976.1677633132.3183645.blinux-list@redhat.com>
 <mailman.1067.1677637392.3183648.blinux-list@redhat.com>
 <mailman.981.1677638249.3183647.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.982.1677638951.3183647.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

castget needs all files for it built correctly and by the user.
Withpodget you at least get a configuration file you can modify and those
applications I find easier to get working.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 28 Feb 2023, Linux for blind general discussion wrote:

> I like downloading, tell you why. As crazy as things are, someone could have a
> podcast, and then be kicked off and be no more around.
>
>
> Very true. GPodder does download your podcasts, or rather it tells you what
> episodes are available and gives you the option to download them.
>
>
> A quick search of my Fedora repository also shows me castget and kasts.
> Castget indicates it is a command line podcast downloader, so it most
> certainly should download your podcasts. I know nothing of kasts, but I'm
> guessing that since it starts with a k, it's probably a KDE application, and
> not all KDE applications work very well with the Orca screen reader at this
> time, although much progress has been made in this area, so it's worth a look.
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

