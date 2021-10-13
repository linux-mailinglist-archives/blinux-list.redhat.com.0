Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 684C242C1CB
	for <lists+blinux-list@lfdr.de>; Wed, 13 Oct 2021 15:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1634133206;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=fSDVuIOrEp3xF5G32Y1o0pPMFWkzwQkU7W7bMFCPGp0=;
	b=dRpym+783TMI4RM0wNUXW5l5zLmIIfcnw6qyk2BPTxLxHQEkRd4bTJxS3jDyOdz0IkjrXK
	dLVQ42yMrO3BmnA2yykXeXRzAMfR1DnKa0A1GcHf/KA0vLHjk3aW7uRQ3WICQ7CcnjtMgp
	8vWRpqD6aTm2HteJbEu1+0W53b1Kc1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-434-iKx8-zGqNSi3bwPERxOVZA-1; Wed, 13 Oct 2021 09:53:24 -0400
X-MC-Unique: iKx8-zGqNSi3bwPERxOVZA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id AB48C1006AA2;
	Wed, 13 Oct 2021 13:53:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8D6C619D9B;
	Wed, 13 Oct 2021 13:53:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D52551806D02;
	Wed, 13 Oct 2021 13:53:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19DDrGY5012623 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 Oct 2021 09:53:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2FAB540D1B98; Wed, 13 Oct 2021 13:53:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2BE1240D1B9D
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:53:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 10C2210AF950
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 13:53:16 +0000 (UTC)
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com
	[209.85.219.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-268-JmzQj3mbOoKu5gcaNLxn5w-1; Wed, 13 Oct 2021 09:53:13 -0400
X-MC-Unique: JmzQj3mbOoKu5gcaNLxn5w-1
Received: by mail-yb1-f178.google.com with SMTP id d131so6624940ybd.5
	for <blinux-list@redhat.com>; Wed, 13 Oct 2021 06:53:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Xhx1dJY2dEHDzxO5ABGBrPMwuxeZIVS94BykLkh94u8=;
	b=H8CeShWb6MZ/kmESlo1G3yzsYpcC0MhJzOaipVKVMaQb9UPHeT0rRKkvauaYSbvjxq
	pQnoRSgdisj1TjwxNB1YJaTglzYHz5i0txx9xcSc8cEl/LLZ9mLZ5F7/ErsyCr7044Mm
	Ne+/fykWksjBrT2Xu+Uqae264M//khs98w3uU6Ho35ZeYWFtS273Be4/fbRdrzRl67Zt
	nwygcBYkh+OOoO5oM5/nQ3+dvWFQHAVrkHV1wtpOrVhjjo3yIWwyL+h6Y3pK5tLe1L10
	LeIrhR3qKWSq9Ro9jGWdExOZLKH5Qi5Upd/w1EBK0yBeLY/PccKl+v3Bn9GARpe03nki
	WenQ==
X-Gm-Message-State: AOAM532x5O73xbd7wkGjTq6/VsVxxqf0u+2LBpcW4AVB41evZxix7WXs
	YLyjv4YM2L+/7yiuoBgudqVt3MVj+tKJOYCaeRcmYnzRfKQ=
X-Google-Smtp-Source: ABdhPJy0jDStuMvA/bSvsqjx8HsASU9n2p05NdiBA83DN8uzgfmaULrUCpCBUNtQLyTVLYbQ/058EiNGoyNTReTXoU4=
X-Received: by 2002:a5b:145:: with SMTP id c5mr35744237ybp.60.1634133193170;
	Wed, 13 Oct 2021 06:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200.ref@yahoo.com>
	<BE642CCD-41FD-4C31-AAFB-C4EE0CB1A200@yahoo.com>
	<830943b7-8c77-54d2-ef41-ebf35b2317d4@gmail.com>
	<41D44D20-F41D-4D2D-B3CE-3F00567522EC@gmail.com>
	<25040872-3042-4567-9052-D9FA44B55880@gmail.com>
	<CAGJxbF7g7n_wd6EAMSh+vm_kkdfurQZ+X=7-4em2XObQCxcXww@mail.gmail.com>
	<65AF279E-5331-45BE-B637-7CD454E89D68@gmail.com>
In-Reply-To: <65AF279E-5331-45BE-B637-7CD454E89D68@gmail.com>
Date: Wed, 13 Oct 2021 08:53:02 -0500
Message-ID: <CAGJxbF5-ekrKayN2J5twy-0uwE+-RQTUomZPMH60GjYNQ7orqQ@mail.gmail.com>
Subject: Re: Any suggestions of what distro of Linux I should load onto a new
	computer?
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hmm. Kyle, any thoughts?
Devin Prater
r.d.t.prater@gmail.com
gemini://tilde.pink/~devinprater/



On Wed, Oct 13, 2021 at 8:52 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> I did try that, it did not work.
>
> > On Oct 13, 2021, at 8:24 AM, Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
> >
> > Have you tried pressing Alt + F2, typing orca, and pressing Enter?
> > Devin Prater
> > r.d.t.prater@gmail.com
> > gemini://tilde.pink/~devinprater/
> >
> >
> >
> > On Wed, Oct 13, 2021 at 5:49 AM Linux for blind general discussion <
> > blinux-list@redhat.com> wrote:
> >
> >> I installed fedora mate 34, and had orca and logged in.
> >> But after logging in, I could not get orca to work.
> >> Using be my eyes, someone said mute was not pressed.
> >> Volume was up.
> >> So not found the problem yet.
> >>
> >>> On Oct 12, 2021, at 6:20 PM, Linux for blind general discussion <
> >> blinux-list@redhat.com> wrote:
> >>>
> >>> Hi,
> >>>
> >>> Has anyone had problems with audio with the latest fedora 34 or even
> the
> >> 35 beta.  There was a bug which someone reported something that had to
> do
> >> with also, but perhaps this is fixed now?  I will have to give it a look
> >> and see if it is fixed or not.
> >>>
> >>> Matthew
> >>>
> >>>
> >>>
> >>>> On Oct 12, 2021, at 8:12 AM, Linux for blind general discussion <
> >> blinux-list@redhat.com> wrote:
> >>>>
> >>>> A huge +1 for Fedora MATE. I have it running on two computers here,
> one
> >> is not mine, and it works great. Orca comes with it, and you can run a
> full
> >> install after pressing alt+f2 to open the run window and then entering
> the
> >> word orca. Wifi generally works out of the box, though the
> NetworkManager
> >> applet that controls it doesn't tell you what it is. Still, you can just
> >> hold the alt and control keys and double tap the tab key to get to the
> top
> >> panel, then shift tab past the toggle button and press the enter key to
> >> bring up the menu that has your wifi connections. There's not much more
> to
> >> tell other than it's a great OS, not just for learning, but for daily
> use,
> >> and one of the computers in the house that is running it is even being
> used
> >> for gaming and live streaming. If you need to dig deeper into the guts
> of
> >> the system, it allows for that as well. I for one highly recommend the
> >> Fedora MATE spin.
> >>>>
> >>>> ~Kyle
> >>>>
> >>>> _______________________________________________
> >>>> Blinux-list mailing list
> >>>> Blinux-list@redhat.com
> >>>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>>
> >>>
> >>>
> >>> _______________________________________________
> >>> Blinux-list mailing list
> >>> Blinux-list@redhat.com
> >>> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>>
> >>
> >>
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >>
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
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

