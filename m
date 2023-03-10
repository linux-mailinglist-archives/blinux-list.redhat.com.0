Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A51D6B502C
	for <lists+blinux-list@lfdr.de>; Fri, 10 Mar 2023 19:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678473353;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=2SmYFvYIJMjJG28uyWJe5FjwD4xdX8jKJbnp7eXj8vA=;
	b=FilkdVtjG4KgQTxi3cFKNpCbWLoJ8aBomCHBDMX1WztWxUjiqV1jnpGgIY5mUSiwbIsYbj
	pMZz+itB46EB6vK1BidRbIfsLqFjhlO+Lo6iQ4eVBlm8IVpvpDY/80Pqp5B3pjOPeuKJY3
	N0fLjSHak0kXl2AdV9w2MJQRt8jNKQ4=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-388-oImpcHPaMn6w4KdRHPqTkA-1; Fri, 10 Mar 2023 13:35:51 -0500
X-MC-Unique: oImpcHPaMn6w4KdRHPqTkA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 248AF3C10EC4;
	Fri, 10 Mar 2023 18:35:50 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E1D921121319;
	Fri, 10 Mar 2023 18:35:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 4FAC61946A70;
	Fri, 10 Mar 2023 18:35:35 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 10 Mar 2023 13:35:28 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: XFCE a11Y specific tweaks?
In-Reply-To: <mailman.2304.1678472653.1521165.blinux-list@redhat.com>
References: <mailman.2253.1678436282.1521160.blinux-list@redhat.com>
 <mailman.2232.1678451795.1521165.blinux-list@redhat.com>
 <mailman.2304.1678472653.1521165.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2424.1678473335.1521161.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

If you can find it, there's a whisker box menu in xfce and use of that
menu can open up lots of functionality for screen reader users.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Fri, 10 Mar 2023, Linux for blind general discussion wrote:

> Last I knew, XFCE's panel and notification daemon didn't like Orca very much.
> I seem to recall the alt+tab application switcher also not speaking. Many
> people have had good luck with the desktop and file manager though, and most
> of the standard applications work out of the box, since they're GTK-based. I
> never found a work-around for the issues, so I pretty much stopped working
> with XFCE, but if someone did find a way around that, I'd be happy to know of
> it.
>
> ~Kyle
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

