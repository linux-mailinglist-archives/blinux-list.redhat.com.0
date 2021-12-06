Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D81469B1E
	for <lists+blinux-list@lfdr.de>; Mon,  6 Dec 2021 16:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638803371;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=00THsUf6BIv7MGPSL14CUe/BhSdCUM5PeC2AssCBG1Y=;
	b=GwsPkI5muImNL0MLZL9qDRa3CS2LngqHhNvFng0q9qG8NQ9JP/axoyJo2+n0AmBcKhJ+hP
	ePgHPS4460rqMbjUq3rxjItX9cYAW587wlLJWKnuS7804XqQk0UX+WhCD/C23f4g8+ScwU
	ZVXv5ulj76M8jcF+sIoXungUct8s2fg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-514-KkLlN6ZLPOCeVdbCOCZ4SA-1; Mon, 06 Dec 2021 10:09:27 -0500
X-MC-Unique: KkLlN6ZLPOCeVdbCOCZ4SA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3BBFE102CB38;
	Mon,  6 Dec 2021 15:09:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 37328100AE2C;
	Mon,  6 Dec 2021 15:09:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D09A81806D1C;
	Mon,  6 Dec 2021 15:09:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B6F78N2025867 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 6 Dec 2021 10:07:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 641F61427AFD; Mon,  6 Dec 2021 15:07:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5F975140EBFE
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:07:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 429EE3D2CE87
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 15:07:08 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-553-r5uWKoI9ODW6NTUN3WhnTg-1; Mon, 06 Dec 2021 10:07:06 -0500
X-MC-Unique: r5uWKoI9ODW6NTUN3WhnTg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4J76Gd6ZKvz4Lyp
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 10:07:05 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4J76Gd6J90zcbc; Mon,  6 Dec 2021 10:07:05 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4J76Gd6CRtzcbP
	for <blinux-list@redhat.com>; Mon,  6 Dec 2021 10:07:05 -0500 (EST)
Date: Mon, 6 Dec 2021 10:07:05 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Suggestions for Ratpoison-friendly apps?
In-Reply-To: <7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
Message-ID: <alpine.NEB.2.23.451.2112061006520.21473@panix1.panix.com>
References: <0818b814-95e3-f334-fb62-5a89bc96124e@gmail.com>
	<d6a364d7-7484-4b48-3700-1ba8f938d271@gmail.com>
	<00e07fa6-109f-b5c9-5680-ed8a56e959a9@slint.fr>
	<2b86a2b5-6e3d-08f6-6516-3a62a894ab62@gmail.com>
	<9468598d-1cb6-1c1f-4ddb-b1dbfeaf9740@gmail.com>
	<02e2f29d-b065-6591-d8ec-07d9b4a26e75@gmail.com>
	<b12ef7c4-e8f6-688c-706f-e97aef903c4a@gmail.com>
	<47dbd804-240f-b170-7f2c-6c96d189762c@gmail.com>
	<alpine.NEB.2.23.451.2112051228080.13531@panix1.panix.com>
	<88b763bc-c035-735f-0efe-dea5f26182d6@gmail.com>
	<459ce7d5-11e4-8707-77f8-0a4c46bb8899@gmail.com>
	<9098b35b-4f3d-0455-2a46-472e3d924cab@gmail.com>
	<CAPo=n--jv0xUAfGGYb3y16Rc4JkZphD7ySapij_dBZgWnY=ywQ@mail.gmail.com>
	<e9503aaa-86d5-e5fa-0abf-dc1a951ae425@gmail.com>
	<7f515825-d9ca-c954-924a-945902c4e68a@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How is waterfox?


On Mon, 6 Dec 2021, Linux for blind general discussion wrote:

> My only gripe with Seamonkey mail is there's no reply to list option, and it's
> a hassle to set Gmail up as far as the servers go. Is there an easier way of
> importing Gmail accounts to Seamonkey mail I'm not aware of aside from first
> installing THunderbird and importing from there?
>
> I've been poking at lightweight browsers but most of the known ones don't work
> with Orca, talking about stuff like qtbrowser and Falcon, things that always
> come up on lists of lightweight browsers, along with Gnome-Web and Midori.
> Seamonkey never shows up on those lists unfortunately.
>
>
>
> On 12/6/21 12:42, Linux for blind general discussion wrote:
> > I think you're pretty much spot on about webkit-gtk from what I'm seeing
> > here. I was told by Evolution developers that webkit-gtk was responsible for
> > random paragraphs not being spoken when reading email, so it's logical that
> > it may have trouble browsing as well.
> >
> > ~Kyle
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

