Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F934580DC
	for <lists+blinux-list@lfdr.de>; Sun, 21 Nov 2021 00:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637450137;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e/poOMoCWTDmJUb/MUes72grj0S1FQWk7Wrxt5/Xsro=;
	b=WW29/L86Uf5kHQzxm8oIm23vpmlSX0QBzNAwfHb9+jQmce5iV1jIG3Llkt6IBhfc0jQJQL
	DE6lfQrmd8hrgCIiBqwBjrhvPRnHBu4vh7Ncjq7QizfxHdliR6AKhUPhu6pjGxO6gIYXHL
	MrSdKTkINQfn4sC9hezRlq93YViQwNI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-80-XMILMVjoMM-dBgzesvK7Gg-1; Sat, 20 Nov 2021 18:15:33 -0500
X-MC-Unique: XMILMVjoMM-dBgzesvK7Gg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7123102C8CB;
	Sat, 20 Nov 2021 23:15:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EB7B8608BA;
	Sat, 20 Nov 2021 23:15:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BDBA24EA30;
	Sat, 20 Nov 2021 23:15:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AKNFMk1002669 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 20 Nov 2021 18:15:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F354951E2; Sat, 20 Nov 2021 23:15:21 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ED7CD51E1
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:15:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 268DE8001EA
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 23:15:19 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-452-1cN9JEzCM8Ozzp_pIfx2tQ-1; Sat, 20 Nov 2021 18:15:17 -0500
X-MC-Unique: 1cN9JEzCM8Ozzp_pIfx2tQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4HxTsJ3BF5zMbj
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 18:15:16 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4HxTsJ2Bzhzcbc; Sat, 20 Nov 2021 18:15:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4HxTsJ1svvzcbP
	for <blinux-list@redhat.com>; Sat, 20 Nov 2021 18:15:16 -0500 (EST)
Date: Sat, 20 Nov 2021 18:15:16 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Startup sound for Linux Mint 20.2?
In-Reply-To: <7f7274cf-ace2-abc4-c94c-3410fa61cff1@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2111201814320.13170@panix1.panix.com>
References: <BE1579A1-9922-4342-9C4B-7BBF8D41F1A0@icloud.com>
	<7f7274cf-ace2-abc4-c94c-3410fa61cff1@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Maybe a packages search of mint may find the event sounds if those are
even available.


On Sat, 20 Nov 2021, Linux for blind general discussion wrote:

> Hi,
> I added a new entry using the startup programs utility and used the following
> command:
> paplay /usr/share/sounds/LinuxMint/stereo/desktop-login.ogg
> Now, when I login, that sound plays.
>
> I have not been able to find the various event sounds in Mint. I have even had
> a sighted person go into the sound utility and look for them and they just are
> not there.
>
> This little workaround is better than nothing.
>
> John
>
> On 11/20/2021 3:33 PM, Linux for blind general discussion wrote:
> > Hi,
> > Accessible Coconut has a nice startup sound.
> > But Mint has no sound. Is there a way to have a sound play at startup?
> >
> > Thanks,
> > Rob
> >
> > _______________________________________________
> > Blinux-list mailing list
> > Blinux-list@redhat.com
> > https://listman.redhat.com/mailman/listinfo/blinux-list
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

