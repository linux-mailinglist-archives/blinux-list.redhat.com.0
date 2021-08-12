Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9A0F83EA8D6
	for <lists+blinux-list@lfdr.de>; Thu, 12 Aug 2021 18:55:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628787324;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HMTxHbZixoqhTxs6CWdWIst3ZY7ofdCUYssVDRl86Vg=;
	b=GPiuf1JBbq6uLUzxkcCqTsRZ05HRglqHYcCmiaLr1CKyET/sFdZoII/J+c+/Zke7Gis1hl
	MSZSBX/hP0UJrN9yU+lJ0WMDD9HBfmEdjxWuKrIRfljXnJrlFz/cA8YyE8uyl1j/e8zCeT
	gcXvHViTU8cS1wqPWBsTe0IqwmA1uII=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-375-7tzoQFzMODOS1N0ZHfRF6A-1; Thu, 12 Aug 2021 12:55:23 -0400
X-MC-Unique: 7tzoQFzMODOS1N0ZHfRF6A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB37C8799EC;
	Thu, 12 Aug 2021 16:55:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEE9760C9D;
	Thu, 12 Aug 2021 16:55:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 74C444A7C9;
	Thu, 12 Aug 2021 16:55:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17CGpw5W025016 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 12 Aug 2021 12:51:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8689211E6A9; Thu, 12 Aug 2021 16:51:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81B9811E699
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 16:51:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EFFDD801E6D
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 16:51:54 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-555-OkmOfsRqPAGVaf7nkD7Flg-1; Thu, 12 Aug 2021 12:51:53 -0400
X-MC-Unique: OkmOfsRqPAGVaf7nkD7Flg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Glt543xHlzPZl
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 12:51:52 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Glt54375qzcbc; Thu, 12 Aug 2021 12:51:52 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Glt542jJYzcbP
	for <blinux-list@redhat.com>; Thu, 12 Aug 2021 12:51:52 -0400 (EDT)
Date: Thu, 12 Aug 2021 12:51:52 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Installing using a service like "Be My Eyes"
In-Reply-To: <c54cf737-95d1-e7b4-7a51-bde217deca0d@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2108121248500.9633@panix1.panix.com>
References: <f350ad42-2eff-9ca8-429d-59c13e839627@gmail.com>
	<20210812140740.qlkk7wajgogjktq6@alex-pc>
	<c54cf737-95d1-e7b4-7a51-bde217deca0d@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

With pulseaudio when that happens I found
rm -fr $HOME/.config/pulse
followed by a reboot of the system cleans pulseaudio out so it can start
again clean.
I don't know why this becomes necessary.  Short of that running pulseaudio
--cleanup-shm has sometimes worked.


On Thu, 12 Aug 2021, Linux for blind general discussion wrote:

> Hi Alexander,
>
>
> I do not know why, but pulseaudio always breaks about a day or two after I
> install arch. I have no idea why. I am considdering doing a base arch install
> and installing my GUI after the fact; this would probably be either Mate or
> Rat Poison.
>
>
> If you are willing to chat, you can find me on twitter and clubhouse both with
> user: brandtsteenkamp.
>
>
> I am use to running static release distros, either Ubuntu based or my current,
> Slint, which I really love btw. I would like to spred my "Linux Wings" a bit
> more.
>
>
> Yours,
>
>
> Brandt Steenkamp
>
> On 8/12/21 4:07 PM, Linux for blind general discussion wrote:
> > On Thu, Aug 12, 2021 at 03:42:25PM +0200, Linux for blind general discussion
> > wrote:
> >> Hi all,
> >>
> > hello Brandt.
> >> I would really like to run either Arch, which I always fail to install
> >> correctly for some or other reason, or an Arch derivative, but, Calamaris,
> >> enough said.
> >>
> > did you try new arch installer[1]?
> > I'll be happy to help you install arch. but for this I need to know what
> > exactly you are failing to do.
> >
> > [1]: https://archlinux.org/news/installation-medium-with-installer/
> >
> >> --
> >> Warm regards,
> >>
> >> Brandt Steenkamp
> >>
> >> Sent from my steam powered Slint vacuum cleaner
> > --
> > Sincerely, Alexander
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

