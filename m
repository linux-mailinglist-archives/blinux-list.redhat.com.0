Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0D46396B4
	for <lists+blinux-list@lfdr.de>; Sat, 26 Nov 2022 15:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1669474712;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NAAGuFOr25UP6QTBXnrIoS4X579uGfhMbL11rxXmoOc=;
	b=RJPp/bzv0cOWw2pthFpt/0fxM8LuZY15uxnVlZD/B7PSMEegTgR9omVuYkBiRvXBdlJ7lP
	Wiu+HSnpiNhiUNHI3SaKE4FPIfEJfEZ0rn1F2IqcHhxLI+Xi3Vntlt0CGyGBhCJBVT50uu
	uq4oo9Q4eXR8roQeoG6+sc/NFrksaCg=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-28-AaAcd7YoOAquJL6f-sBMdQ-1; Sat, 26 Nov 2022 09:58:28 -0500
X-MC-Unique: AaAcd7YoOAquJL6f-sBMdQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DE6C3804527;
	Sat, 26 Nov 2022 14:58:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DA4F740C6EC3;
	Sat, 26 Nov 2022 14:58:26 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 6FA2C1946597;
	Sat, 26 Nov 2022 14:58:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 26 Nov 2022 09:58:22 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessible front ends for Pleroma?
In-Reply-To: <mailman.1917.1669441933.6934.blinux-list@redhat.com>
References: <mailman.1920.1669425887.6932.blinux-list@redhat.com>
 <mailman.1994.1669440416.6925.blinux-list@redhat.com>
 <mailman.1917.1669441933.6934.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2026.1669474706.6925.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

it's possible to locate and join existing servers but those need
researching so if you're not a maga character and accidentally join a
maga-oriented or maga-only server you'll be disappointed.  Different
servers have different content and different moderation in place.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 25 Nov 2022, Linux for blind general discussion wrote:

> Thanks for the info.  I'm not at all sure that I want to set up a server, but I'm interested in knowing about the most accessible clients.
>
> -r (Rich Morin)
>
> > On Nov 25, 2022, at 21:26, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> >
> > I was thinking about running something like this. I mean I already have Friendica, which is easy to get up and running, but then I heard Pleroma may be harder to get started, but may perform better. I'm not sure what front ends are or are not accessible, although I have heard that pleroma-fe I think it's called, which is the default front end that I believe ships with it, works pretty well with screen readers. If you do get the back end server up and running, it may be worth trying the various front end web services available for it to find the one you like the best. From what I understand, you can switch them out fairly easily. Welcome to the Fediverse.
> >
> > ~Kyle
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

