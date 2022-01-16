Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AE18C48FA81
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 04:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642304382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=aUg7kz8tor/vml6aqDNusE6DEDPlP1nPoqxyLmRuFQM=;
	b=bdvvTtjL4E02X1oH66B/vijN/8gDuUqp0ay9GSEdJmSBbDbJkfELSS2KSDGtRyk34xSvF1
	DvjTGtkrlVqfEfFLdWts2M6x+a679HRTzDEpMIA7T04wjxbIolAEl4L7aKo8Hem9uGKuyH
	WvhyvSIBYCT4GkErJ24o4Gi+0H7sY0Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-UhqM0K_1Noi6kC2ZInLg7Q-1; Sat, 15 Jan 2022 22:39:38 -0500
X-MC-Unique: UhqM0K_1Noi6kC2ZInLg7Q-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 624E9802924;
	Sun, 16 Jan 2022 03:39:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B79CB1024879;
	Sun, 16 Jan 2022 03:39:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CFE664BB7C;
	Sun, 16 Jan 2022 03:39:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20G3WUxR014846 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 15 Jan 2022 22:32:30 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 5BFAC40CFD14; Sun, 16 Jan 2022 03:32:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 56E9B40CFD0E
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:32:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3764628F1095
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 03:32:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-327-9tDJdZ1bPT-BfiYoTGIU3g-1; Sat, 15 Jan 2022 22:32:28 -0500
X-MC-Unique: 9tDJdZ1bPT-BfiYoTGIU3g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Jc0wC6qjtz2ws0
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:32:27 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Jc0wD00Ypzcbc; Sat, 15 Jan 2022 22:32:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Jc0wC717pzcbC
	for <blinux-list@redhat.com>; Sat, 15 Jan 2022 22:32:27 -0500 (EST)
Date: Sat, 15 Jan 2022 22:32:27 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: No Orca in Fedora
In-Reply-To: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
Message-ID: <ada734e7-60f0-2562-5870-d8b1392c38d@panix.com>
References: <E0D83498-771B-46C6-A46E-F3FC7ED1E64E@icloud.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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

It won't.  Very few flavors of Fedora have orca in them.
fedora-workstation I think is gnome has orca but so far as I now know,
that's the only spin with orca in it.
How to get around this would be to have a kickstart file made for a
fedora-workstation spin install.
Once that kickstart file is made, you'll have to understand kickstart file
syntax and the post-install command.
You'd want to put a post-install command in that installs orca and all of
its dependencies and then use the kickstart file you modified to install
your desired spin.


On Sat, 15 Jan 2022, Linux for blind general discussion wrote:

> Hi,
> I downloaded Fedora-Cinnamon-Live-x86_64-35-1.2
> Super+Alt+S did not start Orca, so I pressed alt+F2 and typed orca and hit enter, but got nothing.
> So I then pressed alt+ctrl+T and typed orca in the terminal. I used my phone to read the screen to get orca command not found.
> Whats going on?
> Thanks,
> Rob
>
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

