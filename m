Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5400942C21E
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 16:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634134013;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sGOS3W4BNoMQORAk6KuAJ4xPcV0+jEodcYfjiWVXSEg=;
	b=NFPd+360iYoR2cFOAG2IeQYQV4wErdfA5D22NiBpROSsyq6ea7DyzxUuY3bg/T5nKonsfa
	6EZRwN8Caoh0xo4oUqpVbqBqCWpaKBNSd7d9T3Qy4tofaPplmv6rfx5vdOzRC4kKZa+oRY
	AArPE59FXtzQaPIYoSKfMW8ArR22QYk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-535-c0l2Nd4gOEm65tyNaWtkbQ-1; Wed, 13 Oct 2021 10:06:49 -0400
X-MC-Unique: c0l2Nd4gOEm65tyNaWtkbQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 26218802575;
	Wed, 13 Oct 2021 14:06:46 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E3E89694B4;
	Wed, 13 Oct 2021 14:06:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C2E92180598A;
	Wed, 13 Oct 2021 14:06:41 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DE6V0n014469 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 10:06:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E9120404727C; Wed, 13 Oct 2021 14:06:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E53A8404727A
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:06:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CBCBF800883
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 14:06:30 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-499-Bu7w6athMHW229TZJtCtmA-1; Wed, 13 Oct 2021 10:06:26 -0400
X-MC-Unique: Bu7w6athMHW229TZJtCtmA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HTvTZ3yQNz2kpV
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:06:26 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HTvTZ32VFzcbc; Wed, 13 Oct 2021 10:06:26 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HTvTZ2gpNzcbW
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 10:06:26 -0400 (EDT)
Date: Wed, 13 Oct 2021 10:06:26 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: GRUB boot tone on Fedora
In-Reply-To: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2110131003001.29121@panix1.panix.com>
References: <922a2740-b06a-c964-ddd6-c65e095507e6@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

As root edit /etc/defaults/grub and uncomment the line with Tune on it
then save that file.  Next run grub-update then reboot.
If the computer hasn't got a speaker, some don't you may need to find and
install the rc.local package then put a file in /etc/rc.local/rc.local.d/
with a script that plays a sound and make that script executeable.  I
solved that problem that way for a friend once.


On Wed, 13 Oct 2021, Linux for blind general discussion wrote:

> Hi list,
>
>
> I want to try Fedora on my laptop. So far I really like the experience from
> installation and all.
>
> -- Next I want to add some minor tweak which I like from Debian based system
> which is boot tone.
>
> I try adding "play x y z" to /boot/grub2/grub.cfg but nothing happened.
>
> I hope someone can throw some suggestions. Any help is greatly appreciated.
>
> Btw, it's an UEFI system.
>
> Regards
> --
> Edhoari Setiyoso
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

