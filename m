Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 644A6466D62
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 23:58:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638485895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=iVU/khEg3Q5Am9WmDCSmLjHJIbFjE1VvYnOhVQY+Hio=;
	b=CUSYins6us/JgoOzxuujRtdD1w96UXNaa+J7/dQAz/CQGPikmHIb73UhVTaoNd75/gn9OM
	yaDR7XFfvRDspjcl9LqyRUge9ABXDDxOAv7HimVw9OaPVueOS5EvhmslojPgkwLYt8hL4b
	TawvUsTCWlUjQmmGF5uhsQVQ0TUlNqI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-156-2vO3JZMrP4Og8-YYZ8uLnQ-1; Thu, 02 Dec 2021 17:58:11 -0500
X-MC-Unique: 2vO3JZMrP4Og8-YYZ8uLnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9BF60192CC40;
	Thu,  2 Dec 2021 22:58:07 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8495B5DF2B;
	Thu,  2 Dec 2021 22:58:07 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5E7484A718;
	Thu,  2 Dec 2021 22:58:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B2MvxFu016766 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 2 Dec 2021 17:57:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 435AB401E56; Thu,  2 Dec 2021 22:57:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3EFCD401E38
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:57:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25A38858EED
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 22:57:59 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-535-iZy5QxTTN2SMogAVJ91Y9w-1; Thu, 02 Dec 2021 17:57:57 -0500
X-MC-Unique: iZy5QxTTN2SMogAVJ91Y9w-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J4rvn0vcRz48ks
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 17:57:57 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J4rvn0J3dzcbc; Thu,  2 Dec 2021 17:57:57 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J4rvm73tlzcbP
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 17:57:56 -0500 (EST)
Date: Thu, 2 Dec 2021 17:57:56 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Help booting live disk
In-Reply-To: <CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112021754500.1114@panix1.panix.com>
References: <8165B247-F098-4F16-8FFB-3F797D5153B0@icloud.com>
	<CAM+Q2c7ZodTV6ZbYN2tFsiQ_iG6NzfcdoC77VWytuN5sePmJMA@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Depending on the date of the bios on a machine booting from usb sticks is
possible on the newer hardware and not supported on the older hardware.
I've never heard of a flash bios update adding this support but it may be
possible.  My amd machine has an outdated bios on it but even with that it
boots from usb sticks.  The older computer I had built in 2008 was too old
for usb stick booting to work.


On Thu, 2 Dec 2021, Linux for blind general discussion wrote:

> Rob, you're either going to have to go into bios to change some
> settings in order to boot from a USB stick (for which you'll need
> sighted assistance), or, sometimes, if you're lucky, you can press a
> key like escape as the machine is starting to go into a boot menu
> (that doesn't speak) from which you can select your desired boot
> drive. You'll need to consult your computer's manual to see if in fact
> that facility exists. That too is problematic, because sometimes you
> get it right and others you don't. This is not standardized at all, so
> you'll really need to consult your computer's manual on how to
> accomplish this.
>
> On 12/2/21, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> > Hi,
> > I was so excited to receive my new Laptop.
> > But I can?t get it to boot from USB, or from the external USB DVD drive.
> > It always boot to Windows.
> > Is there anything I can do, or do I need sighted help?
> > Here are the specs.
> > Gateway 14.1" Ultra Slim Notebook,
> > FHD, Intel Core i5-1135G7, Quad Core,
> > 16GB RAM, 512GB SSD, Tuned by THX Audio,
> >  Fingerprint Scanner, 1.0MP Webcam, HDMI, Cortana, Windows 10 Home
> >
> > Thanks,
> > Rob
> >
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
> --
> Subscribe to a WordPress for Newbies Mailing List by sending a message to:
> wp4newbs-request@freelists.org with 'subscribe' in the Subject field OR by
> visiting the list page at http://www.freelists.org/list/wp4newbs
> & check out my sites at www.brightstarsweb.com & www.mysitesbeenhacked.com
>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

