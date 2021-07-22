Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 331173D2378
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 14:42:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626957745;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=X9nwbeIUh1MRlq/g3nP8IA261gwwIFCMjK7fR01f7GA=;
	b=iNI5XZszqq6xqGoxxyJiD9sule3LoEZyuW+jG69PlW8Fpv+KtJmGENesIcFBJ9e4IXJGct
	iP03dwpckjq0jOZGaZY4EsoBzH9rZIWC9TwG94L1N5dRB/gk81RKGTFcc+jMwzOn/T0QCI
	6b//B5fDqo0c5wOnjMPqfnD2pxxSdyQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-GwD1htVnN0qFJ7a9l9_SPg-1; Thu, 22 Jul 2021 08:42:23 -0400
X-MC-Unique: GwD1htVnN0qFJ7a9l9_SPg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9641B100E42E;
	Thu, 22 Jul 2021 12:42:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 228956B55B;
	Thu, 22 Jul 2021 12:42:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 38A74180BAB2;
	Thu, 22 Jul 2021 12:42:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MCgFCv002993 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 08:42:15 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3BF4920B94B8; Thu, 22 Jul 2021 12:42:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3756420BB91F
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:42:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AEDDC8726DE
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 12:42:11 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-120-MnSAgGCdNASDxT7XnRKpQg-1; Thu, 22 Jul 2021 08:42:09 -0400
X-MC-Unique: MnSAgGCdNASDxT7XnRKpQg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4GVsXc6bBsz3mjJ
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:42:08 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4GVsXc5tZCzcbc; Thu, 22 Jul 2021 08:42:08 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4GVsXc5WvlzcbW
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 08:42:08 -0400 (EDT)
Date: Thu, 22 Jul 2021 08:42:08 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: A question about running emacspeak on Arch
In-Reply-To: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2107220839520.19047@panix1.panix.com>
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

You don't run emacspeak. You configure your .emacs file and put lines at
its top to run emacspeak for you.  I haven't had breakfast or coffee yet,
so I'll suggest you run info emacspeak to find the necessary lines and
copy them into your .emacs file.


On Thu, 22 Jul 2021, Linux for blind general discussion wrote:

> Hello everyone,
>
> Last night I installed emacspeak on Arch Linux from the aur, version 54.0
> with yay, but I am having a problem: whenever i type
> emacspeak
> in a terminal, it tells me to choose a synthesizer, but i can't choose
> either espeak, or espeak-ng, because no matter what i do, arrows, tab,
> emacspeak doesn't play a sound.
> After I press tab, in fact, an emacs panel opens, and nothing speaks inside
> it except orca.
> Does Anyone have any ideas on how to fix it?
> I'd like to try and get into emacspeak, so to see what it can and can't do.
> Best regards.
> Francisco.
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

