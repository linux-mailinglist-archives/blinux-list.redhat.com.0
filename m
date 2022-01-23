Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EF85F4970BB
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 10:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642930993;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=elPn/59K9VheUbEEuv51vyGxNXKofkGzFaRUzH2JECU=;
	b=PBynOlDuWJezgHTYCFJHRmB8umNc/TtlW4r5Al/9ZViL8szqFjETLWHb/zlY20bBBj02KI
	u5ECydDmZG6QpU6DQMma247CP1ajcljf69ox/nx2bBBfqDQ+wbJ/WYVNbrGA8iVRucXW4J
	dhM9Z5GYDXfDLEKt1VJfTjWJmReicLA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-673-Zrvk01nBMiqYeOPchSLkGA-1; Sun, 23 Jan 2022 04:43:09 -0500
X-MC-Unique: Zrvk01nBMiqYeOPchSLkGA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E90551006AA5;
	Sun, 23 Jan 2022 09:43:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE5147316A;
	Sun, 23 Jan 2022 09:43:05 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AA2784CA93;
	Sun, 23 Jan 2022 09:43:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N9Yuat023932 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 04:34:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9DB27400E12B; Sun, 23 Jan 2022 09:34:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 98DC840C1242
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:34:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7F4B1805B25
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:34:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-645-tQoyo5yYMAmvuFw0gzE7Ew-1; Sun, 23 Jan 2022 04:34:54 -0500
X-MC-Unique: tQoyo5yYMAmvuFw0gzE7Ew-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4JhSd94bTtzMm3
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 04:34:53 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4JhSd93gKlzcbc; Sun, 23 Jan 2022 04:34:53 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4JhSd939hVzcbP
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 04:34:53 -0500 (EST)
Date: Sun, 23 Jan 2022 04:34:53 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
In-Reply-To: <e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
Message-ID: <3449a41e-479-d678-f49-310f4c2eff@panix.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
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

Well now, that just depends on what brand and model of laptop comes your
way.  I remember a Dell Dimension 1550 that wouldn't install linux on it
at all.  The retirement program I'm with subsequently trashed that laptop
as a result of that failure.
Not all of the older laptops will take linux and perhaps some of the newer
laptops won't take linux either.
Some people prefer not to gamble.


On Sun, 23 Jan 2022, Linux for blind general discussion wrote:

> I have never bought a laptop that comes with Linux pre installed, why should
> I, when I can just do it myself, and then install everything I want/need in a
> system.
>
>
> My favorite machine thus far would be my Huawei MateBook D15. It has a very
> nice, grate, big keyboard, yes, also a rather large screen, but what can you
> do? The battery is also reasonable.
>
> Warm regards,
>
> Brandt Steenkamp
>
> Sent from the Slint machine using Thunderbird
>
> On 2022/01/23 00:12, Linux for blind general discussion wrote:
> > Well,
> > For me it was always either the HP Pavillion or the Dell Satellite models.
> > Relatively easy to use, come with standard options and a nice big keyboard.
> > Yes, I have large hands. And yes, like you, screen size isn?t important to
> > me. Still, with a larger screen there is video capability that can be
> > retasked easily enough. Also, since most laptops often use screen size as a
> > depending factor, a larger one will have the advantage of a larger keyboard.
> >
> > -Eric
> >
> >
> >> On Jan 22, 2022, at 1:16 PM, Linux for blind general discussion
> >> <blinux-list@redhat.com> wrote:
> >>
> >> I am looking for a Linux machine to use in graduate CS courses. I probably
> >> want Ubuntu or another common distro that comes with the screen reader (I
> >> assume Orca) and other a11y stuff already installed. I like small, light
> >> laptops (since I don't use the screen) that have decent memory and battery
> >> life. Which machines are your favorites.
> >>
> >> Thanks for the tip on VmWare the other day, BTW.
> >>
> >> Amanda[0]
> >> _______________________________________________
> >> Blinux-list mailing list
> >> Blinux-list@redhat.com
> >> https://listman.redhat.com/mailman/listinfo/blinux-list
> >>
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

