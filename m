Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E649A3D2BF7
	for <lists+blinux-list@lfdr.de>; Thu, 22 Jul 2021 20:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626978830;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=zEBxJPOwxlZXUnLRzrx/Cy4rOiFPosD2bOdGj6SOxM8=;
	b=Y/qpknHRQ7wyHt9NaE8PEFwIOv4Qxl1EaVmshMr7ykn8nnoHmoNlVyduhSc9YSRHOMklSC
	B+YIN02HJUFTSXIOa3Q78Mi8gvkzDDRVDCihQWQOHJUQfACjpbd/uX4G3cN0GdKIFKMreJ
	LTMlbySKrPF1ykG3CKt+FNrFA39Hm5o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-553-Z2Wb1O_DM763LYRrfMnWAA-1; Thu, 22 Jul 2021 14:33:49 -0400
X-MC-Unique: Z2Wb1O_DM763LYRrfMnWAA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EF13C800581;
	Thu, 22 Jul 2021 18:33:44 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71B118A6A;
	Thu, 22 Jul 2021 18:33:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7E5D3180BAB1;
	Thu, 22 Jul 2021 18:33:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16MIXemw007861 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 22 Jul 2021 14:33:40 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2375B20B4A34; Thu, 22 Jul 2021 18:33:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1DD8720B4A3D
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:33:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EA716800883
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 18:33:36 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-311--ERWdmo-OECgBovDRwVvjw-1; Thu, 22 Jul 2021 14:33:34 -0400
X-MC-Unique: -ERWdmo-OECgBovDRwVvjw-1
Received: by mail-qt1-f180.google.com with SMTP id k3so4881895qtq.7
	for <blinux-list@redhat.com>; Thu, 22 Jul 2021 11:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=RXhkL9xmyYqTrQKrfxC/zinP6LrHHBlQ4RjtIEV5CRc=;
	b=Ignpwd623MK046l+NjkafdzRJ6b0806NqP6NCZmQyFKsMbwl3++GJoLiObe9wewQ86
	MPM69BG0KOi1pbJz/gxfGi6ao1lATJPXbT2ntT84CNmUc9WcQ7GixERcaawlgrzkzoJR
	mckBaGGA8Yn93GYZW7KWBaEP7T22KfhBDEC4QK2/tX1YjwmTNcnkJPMJzk2drzLV9vuV
	1Ss31EA2pNkt5O/JyuMnS2+o265nwNom6UJdxATXiT6iElYFITAGHnQGiS3EWetzbFOy
	awZ7jNEyWbP8XkHMetif8tV65nyIt9L5a+aSCqPlGKfoXyYqQ297eF5naa7LnWB6sQiD
	19mg==
X-Gm-Message-State: AOAM533QfilytkZgHgZXJsT1vPperqz4rZ7c/6/QQQ08T4KG67OagJTs
	pEelxAmKZSdFBTdPa4sGd6Kbb2fDthg//AIa4ERW+XYC
X-Google-Smtp-Source: ABdhPJwN/sljbThtYE9REyyd6VxzffxTCQ8Gmxtp6Y6sPIGywCn3SAxcjnLuWjeuwYitJOXSMwJRQ3r5J8iOw3/tnTw=
X-Received: by 2002:ac8:7f42:: with SMTP id g2mr911256qtk.218.1626978813429;
	Thu, 22 Jul 2021 11:33:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_4ddRiqb1QK=SuovMrM8OBGNJKuP6m=Wd+rqC6ykAY-ymRMg@mail.gmail.com>
	<20210722134626.jueyx7z7q7a4oska@alex-pc>
	<CAD_4ddTKb85p_Wcr6-gH5EP_85tmyUn1rh0PCLD3veXmVywoxQ@mail.gmail.com>
	<20210722160953.fxkwmhyhb3oxa6fh@alex-pc>
	<CAGJxbF45urvOykPsbQ8XPP4aY+ZcMpbk4JGMsA3mD7fEZfSuRw@mail.gmail.com>
In-Reply-To: <CAGJxbF45urvOykPsbQ8XPP4aY+ZcMpbk4JGMsA3mD7fEZfSuRw@mail.gmail.com>
Date: Thu, 22 Jul 2021 20:33:15 +0000
Message-ID: <CAD_4ddTCXJuOmnYJzHUYhC_MBd+sW+o3jB4JggTdnmQEAzUJ+g@mail.gmail.com>
Subject: Re: A question about running emacspeak on Arch
To: Linux for blind general discussion <blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello everyone,

I got it, thanks.
I just subscribed to the mailing list and wrote to them, will se
what happens!
Alexander, sorry, I forgot to add you as CC! my apologies!
Best regards.
Francisco.

On Thu, Jul 22, 2021 at 6:31 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> The Emacspeak group is at, I believe, emacspeak@emacspeak.org.
> Devin Prater
> r.d.t.prater@gmail.com
> gemini://tilde.pink/~devinprater/
>
>
>
> On Thu, Jul 22, 2021 at 11:10 AM Linux for blind general discussion <
> blinux-list@redhat.com> wrote:
>
> > On Thu, Jul 22, 2021 at 05:51:59PM +0000, Linux for blind general
> > discussion wrote:
> > >Hello Alexander and all,
> > >
> > >I am using pipewire indeed, so I understand why emacspeak doesn't work.
> > >Thanks for the answer, I'll wait until, and if, they fix this
> outstanding
> > >bug.
> >
> > I think it would be better if you write to the developer, or to the
> > mailing list
> > about it. you can even CC: Alexander Epaneshnikov <email@alex19ep.me>
> > it's me.
> >
> > >Best regards.
> > >Francisco.
> >
> > --
> > Sincerely, Alexander
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
> >
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

