Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id DDF363AD110
	for <lists+blinux-list@lfdr.de>; Fri, 18 Jun 2021 19:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1624036812;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fF7NSn65cWdPQFgrpEBcr7fj0j5Uoh2RkLnb4TAPPds=;
	b=b30LCFmWie1ixrvb0cs33CX35+Bp6nGZQXcmfr5XuenfRH254+gJwFaM4swsswFTKawJhP
	cDcqydWOunUWp2AZgd9LtdWQu3xnRBjFxu9ZaZ8ECw3s6C7hUxfp8neigoaPFdFZbWXu5U
	G1UUFMMh+WWQFAD/12kqJOEdvGws7Aw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-462-mRfOH8yfMQCG6IQGwGeVsA-1; Fri, 18 Jun 2021 13:20:10 -0400
X-MC-Unique: mRfOH8yfMQCG6IQGwGeVsA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9AFBF18414A4;
	Fri, 18 Jun 2021 17:20:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 05A6026DC0;
	Fri, 18 Jun 2021 17:20:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7516C1809C9A;
	Fri, 18 Jun 2021 17:19:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 15IHGNTY024702 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Jun 2021 13:16:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 9970921449AC; Fri, 18 Jun 2021 17:16:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 92AEE21449A8
	for <blinux-list@redhat.com>; Fri, 18 Jun 2021 17:16:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 261EA89B846
	for <blinux-list@redhat.com>; Fri, 18 Jun 2021 17:16:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-447-5be62dQyMP6dU8W5VL-dag-1; Fri, 18 Jun 2021 13:16:17 -0400
X-MC-Unique: 5be62dQyMP6dU8W5VL-dag-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4G65Dd2sknzPvC;
	Fri, 18 Jun 2021 13:16:17 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4G65Dd2Lj5zcbc; Fri, 18 Jun 2021 13:16:17 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4G65Dd1zl3zcbW;
	Fri, 18 Jun 2021 13:16:17 -0400 (EDT)
Date: Fri, 18 Jun 2021 13:16:17 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>,
	orca-list@gnome.org, brltty@brltty.app,
	debian-accessibility@lists.debian.org
Subject: Re: Bootable linux cd iso image with ssh daemon activated
In-Reply-To: <YMyj0/v0v3wR0Etb@v.cs-x.de>
Message-ID: <alpine.NEB.2.23.451.2106181311090.17847@panix1.panix.com>
References: <YMyj0/v0v3wR0Etb@v.cs-x.de>
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

That can be done with gentoo if you use the ssh boot parameter as it comes
up.  Gentoo though is the most difficult flavor of linux to install so
accessibility remains after first boot.  This is one linux that could
really use an accessible installation podcast to be produced for it.  I
wouldn't want to recommend an iso be produced for gentoo to make it as
easy to install say as Jenux or debian though since after install people
really do need to be friendly and familiar with the command line to run
gentoo effectively and that could get windows refugees or dual booters
into lots of trouble very quickly.


On Fri, 18 Jun 2021, Linux for blind general discussion wrote:

> Hello,
>
> I've created a bootable linux cd ISO image which has ssh enabled and alows
> login as root. I thought this might be also usefull for you, because I was
> searching around the net for such a cd and did not find anything which was
> working out of the box. The ISO can also be written to a USB stick and used
> as bootmedia, but this I have not tested yet.
>
> The ISO is based on the well known SystemRescue CD:
>
> https://www.system-rescue.org
>
> The cd contains many usefull tools for different administrative tasks, see
> here for more infos about the included tools, but the programms which need a
> grafical environment will not be useable:
>
> https://www.system-rescue.org/System-tools/
>
> If a package is missing it can be installed after booting the cd, the whole
> system is based on Arch linux. So it should be possible to also install and
> run brltty for example....
>
> You can download the ISO file with ssh deamon enabled here:
>
> https://download.schoeppi.net/systemrescuecd-custom/
>
> After booting the cd your computer will get a dynamic ip address in your
> network. You can get this address e.g. by scanning your network or via your
> routers webinterface. If you know the address you can connect via ssh with
> the following userdata:
>
> Username: root
> Password: geheim
>
> I am using the cd to install new linux machines or as a rescue system for my
> home server or VServers which I am administrating and which are running at a
> provider.
>
> If new versions of the SystemRescue CD will be available I'll update the ISO
> with the enabled ssh daemon on my server to always have the actual versions
> of the tools included on the cd.
>
> If you have questions or ideas regarding the cd just let me know!
>
> Have fun with the ISO, I hope you find the cd also that usefull and
> helpfull as I do ;-).
>
> Ciao,
>
>   Schoepp
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

