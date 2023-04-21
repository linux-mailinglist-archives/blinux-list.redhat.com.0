Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F6C6EAF87
	for <lists+blinux-list@lfdr.de>; Fri, 21 Apr 2023 18:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1682095910;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tAe1SAY2ePgUGC74futS8nPYtEgaH7mUMoBcLjM8wf4=;
	b=OcpmQVIIW0NLzmKgZv+K8aXoWS5fOieuX/UhvY1sOpEjpTgMVFUTw0d/DTOKhmVA3Tl/n6
	uAy8A6UayCduoS77KRCxynpEB4SHTclfanxfl4rtQnuKmzV2q4vegqcdtgoGa3qEagm9FX
	OpL1cEodI4Vps0k4QvHmC7lo/o6D6EY=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-386-PpU-VMtEPyS9WnaeDl5oXw-1; Fri, 21 Apr 2023 12:51:46 -0400
X-MC-Unique: PpU-VMtEPyS9WnaeDl5oXw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 89DA285A588;
	Fri, 21 Apr 2023 16:51:44 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 5B3A440C6EC4;
	Fri, 21 Apr 2023 16:51:38 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 964341946A4A;
	Fri, 21 Apr 2023 16:51:37 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 21 Apr 2023 12:51:34 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: My new Desktop
In-Reply-To: <mailman.2121.1682045057.283958.blinux-list@redhat.com>
References: <mailman.1841.1681419307.2632801.blinux-list@redhat.com>
 <mailman.2007.1681419804.2632806.blinux-list@redhat.com>
 <mailman.1988.1681426095.2632800.blinux-list@redhat.com>
 <mailman.2113.1682021544.283955.blinux-list@redhat.com>
 <mailman.2118.1682023712.283955.blinux-list@redhat.com>
 <mailman.2121.1682045057.283958.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.2052.1682095897.283957.blinux-list@redhat.com>
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

I need to try this, but think use of s for speakup on a debian install
boot along with priority=low should get an installer into the main
installer menu with speakup talking.


-- 
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Thu, 20 Apr 2023, Linux for blind general discussion wrote:

> Thanks and, again, apologies for the length of my post.  If it
> was simple enough to express in 1 line, I would have done that.
>
> Martin
>
> Linux for blind general discussion <blinux-list@redhat.com> writes:
> > Well, gentoo has nohdmi as a boot parameter if memory serves and maybe
> > that can be done with debian but I don't know about the recent boot
> > parameter changes done to debian so can't say for sure.
> > You may have better luck running the debian main menu with the numbers
> > down the side and set debconf priority to low and save your log files.
> > There's going to be a list of drivers debian wants to load for your system
> > somewhere in that installation process.  If you get that list, hit space
> > when you get down to the hdmi drivers and that should prevent debian from
> > installing hdmi support on the machine.  All of that may get the onboard
> > sound card working for you.
> >
> >
> > -- Jude <jdashiel at panix dot com>
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

