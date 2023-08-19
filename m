Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8954A781A56
	for <lists+blinux-list@lfdr.de>; Sat, 19 Aug 2023 17:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1692458580;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VrQek+tothIMQvibXX7oLN+i7j680RlMIoHy52Kx68U=;
	b=cWg5vgi0gxOmrJZ8pB2kRFCXTElh/wT9I3A596A289g6CDEk5YaHUsa480BRQYUZHwYXGy
	lJo/Uy6WPVGA7UT7kfw6TlMjzuKkbr53VjpLhTqv0GMSRF+bpA3uQZC/aMWAIuGa+HsQ9+
	xZEMLF+raWseSviztefIbjuwUduV3j0=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-198--7vVlVBPP26812WaOtdnqw-1; Sat, 19 Aug 2023 11:22:56 -0400
X-MC-Unique: -7vVlVBPP26812WaOtdnqw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2B376101A53C;
	Sat, 19 Aug 2023 15:22:54 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 7DDC42166B2D;
	Sat, 19 Aug 2023 15:22:53 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C66BA194658F;
	Sat, 19 Aug 2023 15:22:52 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 19 Aug 2023 11:22:49 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to have Orca in LightDM?
In-Reply-To: <mailman.18.1692457269.492712.blinux-list@redhat.com>
References: <mailman.1754.1692407072.2238099.blinux-list@redhat.com>
 <mailman.14.1692426687.492710.blinux-list@redhat.com>
 <mailman.18.1692457269.492712.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.15.1692458572.492711.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Have you run spdconf yet?  If you do, likely you will do well to run all
diagnostics.  You may also want to run pulseaudio --cleanupshm.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sat, 19 Aug 2023, Linux for blind general discussion wrote:

> Hi, I initially wrote the lines a11-states=+reader and reader=orca into the
> lightdm-gtk-greetter file, but orca didn't come up. then I started trying some
> things here and there, and I ended up discovering an interesting fact. when I
> start the display-manager service immediately after powering up and logging as
> root at a console, orca doesn't come, but I am able to make it come if I
> execute the following steps:
> * Log as a normal user;
> * Run spd-say to make speech-dispatcher say something;
> * Log as root, then run display-manager and Orca comes up speaking. So, I
> guess that speech-dispatcher is not being able to bring up pulseAudio as root
> before it brings it up as a normal user. Why, I have no idea... In any case, I
> haven't so far enabled display-manager to start at boot, because I'd like to
> make sure it start speaking.
>
> thanks,
> Cleverson
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
>
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

