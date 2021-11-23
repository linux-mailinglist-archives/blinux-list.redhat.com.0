Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C3945AEC5
	for <lists+blinux-list@lfdr.de>; Tue, 23 Nov 2021 22:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637704463;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=kt5Vtg/n6Wz7whnPN+pgCIzeaLRmQrOQhXI6db7kqx4=;
	b=EkXUnI2FtSli6JiWe0JcDBWwkbrkqK20MQgXAyQxP5IixJFfqC8WZE8Rl7VcEbObW16r3L
	eZGzkoQjGK9nH+5iOmk1eY/c1EPVvrK5w4GZLkXIW1xppOIT4IAJva8CzlVz81G72QWJZ6
	cJWY0aMB1edyqzJyBb+enDwZoWJxpcc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-231-3tkB2W1SMeWwpl1YcM8W-w-1; Tue, 23 Nov 2021 16:54:22 -0500
X-MC-Unique: 3tkB2W1SMeWwpl1YcM8W-w-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6DE5B87950F;
	Tue, 23 Nov 2021 21:54:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A784794A1;
	Tue, 23 Nov 2021 21:54:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 29A8E1832E7F;
	Tue, 23 Nov 2021 21:54:16 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ANLsDJ6020630 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 23 Nov 2021 16:54:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B27051121318; Tue, 23 Nov 2021 21:54:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE1211121315
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:54:10 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD093811E76
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 21:54:10 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-369-xZbOrR4NO_y649iBm1OmKA-1; Tue, 23 Nov 2021 16:54:09 -0500
X-MC-Unique: xZbOrR4NO_y649iBm1OmKA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HzHwJ4PFDzMfs
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:54:08 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HzHwJ3mcfzcbc; Tue, 23 Nov 2021 16:54:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HzHwJ3SPyzcbW
	for <blinux-list@redhat.com>; Tue, 23 Nov 2021 16:54:08 -0500 (EST)
Date: Tue, 23 Nov 2021 16:54:08 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: looking for two gui accessible applications ClipGrab
In-Reply-To: <9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111231652480.18399@panix1.panix.com>
References: <c4fb736f-b117-f9f6-54da-4a76e260339b@icloud.com>
	<E407E834-C618-4795-BBBA-876D57309CF0@gmail.com>
	<CAO2sX32rX+pa=rWwkCuH2gwUuY2NcrjA3UNZHR5HMQvqhDE+ig@mail.gmail.com>
	<a5e32fec-9c12-db07-69b7-ca6a5e7a8397@gmail.com>
	<9ec61018-27d4-8eb3-98a2-3ac4cd8a0ca5@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

so long as you don't download any broken snaps you should be good to go.
I tried setting up weather in mate and couldn't get that done.


On Tue, 23 Nov 2021, Linux for blind general discussion wrote:

> Just gonna chime in and say I have snaps on Solus out of the box as well.
> Really, I don't care if it's 'too much like SWindows', if I can get apps
> easier than having to install a bunch of packages I'll only ever use
> once...it's a win win for me really
>
> On 11/23/21 20:06, Linux for blind general discussion wrote:
> > Snapd isn't just an Ubuntu thing. I have it on Fedora, and it's also
> > available from the AUR for Arch users. Flatpak is another similar type of
> > cross-distro packaging system, and it's available from the Arch community
> > repository, Fedora and Solus, and I think it's available for other distros
> > as well.
> > ~Kyle
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

