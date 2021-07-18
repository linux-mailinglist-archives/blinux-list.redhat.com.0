Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E78863CC9C5
	for <lists+blinux-list@lfdr.de>; Sun, 18 Jul 2021 17:43:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626623006;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TiaWYIBwclNo2HLgAHPa9BHJv7DcwxxSEmOeKbcR+Tg=;
	b=Pz3NnspFQ3L6mRXUrKVzcOqP2HD+fzcCKi5ezMPSwCwz1kfwWXoD3IgCawlO05j/Fq/krP
	Lo52A6z2hluFWny6iyjS0TbdUd4m4v896KuQ9RyKC1LbOQ/Ya71fdQj6qgDy8rsKJGEP00
	mSpRruU24TZ8m3M6yuzRSLoNTZ6YDqw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-441-wA99HlH9OomhaE-BOV9fTg-1; Sun, 18 Jul 2021 11:43:25 -0400
X-MC-Unique: wA99HlH9OomhaE-BOV9fTg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A1DB10066F3;
	Sun, 18 Jul 2021 15:43:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D13D5D6A1;
	Sun, 18 Jul 2021 15:43:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1466B4EA2F;
	Sun, 18 Jul 2021 15:43:09 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16IFflKG016425 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 18 Jul 2021 11:41:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E241720236C9; Sun, 18 Jul 2021 15:41:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DDCBE20236C6
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 15:41:44 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 51BAA80066D
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 15:41:44 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-314-VtFls1UNMIimw8ei9C3i-w-1; Sun, 18 Jul 2021 11:41:36 -0400
X-MC-Unique: VtFls1UNMIimw8ei9C3i-w-1
Received: by mail-qt1-f177.google.com with SMTP id g8so11225143qtj.1
	for <blinux-list@redhat.com>; Sun, 18 Jul 2021 08:41:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=5184vxgL53f7xsuITObvFT218zRyApsaE0saEw373i0=;
	b=QqX7A2XHheBhAJAjDlNFJCqGUnq3RnxhSQigwwN6ViJ8ZHCaKnHNPXONoFpfZaCgfE
	FqXlwfnkSHGvBvdqn3IYvHL8tASpN6PcOnOwopQHRIuU362RmrV1RGOJfBQjePm0KmS3
	8hO3EUmvB+5PY65H5RC/9KWiHXZbk40obC7W4RpGVQ4H7VPz8eiMBoOXqHgF9YE9UPr+
	XhUxXh9fzT12DkpENOC9zGlhLyBE55tv4oFCctUwSgIracXyXvcuOmupaWilGnPHN2i0
	/KajtcxHHemlPPOtjfl1QbxLCVo8qFHul2lZ0TbRenVZuMbe/19WTXHiR8EmfQMq/Pfh
	D+ag==
X-Gm-Message-State: AOAM5305uyO5x8IBeHp4jhAO7QyZDwOxs85kJQpH4QrkP3VpdcHqV9++
	9MqrQrHIrErqeil1CYXDT2DVdka6tzhlGvxL5HY1LR+O
X-Google-Smtp-Source: ABdhPJwRXxRE+jDSVdZCZbwyLGqdQ9op0qsnlnN2J80C4m+TvsQ+h4pYw8Teynwqzi1Fx8iu1+0q0IMTnOsWw120Kdw=
X-Received: by 2002:ac8:7645:: with SMTP id i5mr18498350qtr.133.1626622895639; 
	Sun, 18 Jul 2021 08:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddS4g1jpYPKc_35ziy700JXbS+W2P95XYToAyULNeAAmpg@mail.gmail.com>
	<0671f3ab-3695-f330-5261-3f45531a4a9a@slint.fr>
	<CAD_4ddR+NxQ5Tjd4c0Kpiwk=2m2bRfBO+Mio2KDswbKmxv_aVQ@mail.gmail.com>
	<c5b8b31c-5b2d-e90e-9903-f054b9127a50@slint.fr>
	<CAD_4ddQJnm6Bfj_FJWdYF8-8pZCobkevOwbAPZ-X6s1jPMeBfg@mail.gmail.com>
	<119b96d1-0167-ee36-cdfb-eae9532804b8@gmail.com>
	<CAD_4ddQMPQAiNi938CZM5Pex=FaHgJBRvfgfcGnoggL4NibQ7g@mail.gmail.com>
	<alpine.NEB.2.23.451.2107180656150.11081@panix1.panix.com>
In-Reply-To: <alpine.NEB.2.23.451.2107180656150.11081@panix1.panix.com>
Date: Sun, 18 Jul 2021 17:41:22 +0000
Message-ID: <CAD_4ddQfOmAgbQO-tJGOJKGrP2E2OyF8G6gbS-ZM7Ph9NOtcrA@mail.gmail.com>
Subject: Re: recommended OCR solutions on Arch Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Hello there,

Thanks for explaining that to me, I think, think, got everything working
now.
However, I have a question, two actually: is there a way to navigate
received messages with Orca? right now I am using flat review.
The other question is, I have sounds enabled, but when I send a message
with enter, or when i receive them, I hear nothing.
Is this fixable?
Thanks again for any answer, and I know that this is not about LIOS
anymore, so I am sorry for going this O.T.
Best regards.
Francisco.

On Sun, Jul 18, 2021 at 11:00 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> The first time you configure irc, you choose those for yourself.  This is
> something irc fails to explain.  Once you login, there may be a Nickserver
> to use to register your credentials if those aren't already used by
> another irc user.  Very adviseable to do so since credentials that look
> interesting to others will be stolen unless you get them registered first.
> That happened to me on freenode so I arranged for different credentials in
> that instance.
>
>
> On Sun, 18 Jul 2021, Linux for blind general discussion wrote:
>
> > Hello there,
> >
> > Thanks for the suggestion.
> > Last night I installed both pidgin and the purple-plugin-pack, but when I
> > tried to add an IRC account with it, it asked me for a username, password
> > and local alias.
> > When I clicked on the link Didier gave the list, a page opened up saying
> > that there was nothing there.
> > So how am I supposed to get a username and pass for any IRC server? Is it
> > the same for every server?
> > These might be dum questions, but IRC is something I've heard about, but
> > never dove into.
> > Thanks for any pointers/answers/articles/whatever.
> > Best regards.
> > Francisco.
> >
> > On Sat, Jul 17, 2021 at 7:40 PM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> > > Pidgin is very much usable with Orca, although you will also want to
> > > install the package called purple-plugin-pack. It gives you a few
> extras
> > > that you can enable to make your IRC experience even better. It also
> > > includes a hotkey plugin that will toggle your buddy list and bring up
> > > the accounts and plugins windows from any workspace.
> > >
> > > ~Kyle
> > >
> > > _______________________________________________
> > > Blinux-list mailing list
> > > Blinux-list@redhat.com
> > > https://listman.redhat.com/mailman/listinfo/blinux-list
> > >
> > >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

