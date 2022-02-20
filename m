Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E97714BD0C9
	for <lists+blinux-list@lfdr.de>; Sun, 20 Feb 2022 20:01:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645383667;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dclyI6Zh6NoVKIE/i6bDS6LZKAzSvVJiOvHzyMcTOBs=;
	b=imOJ/zE7UQPxlCw+WgRbTV2mADZ3eNRtRa2LFo6Bps7aVPa9y4EU3IgadaxR3zcxmt3e2F
	+R6pnhbgIOSVKrmm+k7c90UxlKDJ+0x8LDyrcniHWEuY38mG13kiugogREHPFL9G+9mKWN
	vgeirDUGhpRVf2N658cZin6CkksywiU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-570-5trFKmtSOESUV5bweRPk2Q-1; Sun, 20 Feb 2022 14:01:03 -0500
X-MC-Unique: 5trFKmtSOESUV5bweRPk2Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC29C801AC5;
	Sun, 20 Feb 2022 19:00:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 348AB5D6B1;
	Sun, 20 Feb 2022 19:00:58 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4E3C4BB7B;
	Sun, 20 Feb 2022 19:00:52 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21KJ0i7G031286 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Feb 2022 14:00:45 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CE633400C849; Sun, 20 Feb 2022 19:00:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CA69140D1B98
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 19:00:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B307680120D
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 19:00:44 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-457-YcFDM4TRPqWiVXiJKR7Cpw-1; Sun, 20 Feb 2022 14:00:42 -0500
X-MC-Unique: YcFDM4TRPqWiVXiJKR7Cpw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4K1vs61TCzz3qM9
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 14:00:42 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4K1vs617MKzcbf; Sun, 20 Feb 2022 14:00:42 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4K1vs60m70zcbP
	for <blinux-list@redhat.com>; Sun, 20 Feb 2022 14:00:42 -0500 (EST)
Date: Sun, 20 Feb 2022 14:00:41 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Any arch users notest that there hasn't been any updates in over
	a week?
In-Reply-To: <02cb01d82688$ff3af010$fdb0d030$@gmail.com>
Message-ID: <eef2f03a-228-331a-f492-1be76f39d@panix.com>
References: <02cb01d82688$ff3af010$fdb0d030$@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Your jenux system includes blackarch, so it's possible you're getting the
blackarch updates.


On Sun, 20 Feb 2022, Linux for blind general discussion wrote:

> Hi all, Is it just me or Is there something going on with the arch repos?  I
> have 3 different arch systems and only one seems to be updating.  2 of them
> are vanela arch systems in that they were installed using the arch iso.   2
> of them also have packages from the aur in particularly, an aur helper yay
> to be exact.  The third is a jenux system which seems to be getting package
> updates just fine.  The 2 that were installed from the arch install iso,
> just tell me that there is nothing to do.  It we seem to me that if the main
> ararch repos are the sme that the package for the must part should find the
> same packages unless there is something I am missing.  As a matter of
> interest, I have gnome on one system and mate on the other 2.  Any ideas?
>
>
>
> Matthew
>
>
>
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

