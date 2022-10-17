Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C314601333
	for <lists+blinux-list@lfdr.de>; Mon, 17 Oct 2022 18:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1666023033;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tN8jddiC/a6fPVhjtxCiwEbmgdp2Jzktd5G8JTv/DG0=;
	b=eXJvZIat2BTWhYhknQDuRWlJd9M7FcYmE70hcyKA61GyZTvLGdY1KRlYjjMHDbL24YoJY8
	ba7u/BCfTnjt27zlCJbWIuKwKNgwsNV3U7tT7Co5PMtRItV1Pqd6lXWoac1F3B3zBspUBI
	zJgdipAeiOIhUPwMVUcy9hvd4WsjCX8=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-310-v3eKD31dMriF-PA9ccIrqA-1; Mon, 17 Oct 2022 12:10:30 -0400
X-MC-Unique: v3eKD31dMriF-PA9ccIrqA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3BF1F8027EB;
	Mon, 17 Oct 2022 16:10:28 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 528FC40369AA;
	Mon, 17 Oct 2022 16:10:27 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id AF76919465A2;
	Mon, 17 Oct 2022 16:10:26 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Mon, 17 Oct 2022 12:10:14 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to start Espeakup before login
In-Reply-To: <mailman.715.1666021768.3011.blinux-list@redhat.com>
References: <mailman.715.1666021768.3011.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.780.1666023026.3005.blinux-list@redhat.com>
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

See if hitting enter starts espeakup before logging in.  That's what
happens on debian bookworm now and since you didn't mention your operating
system I'm shooting in the dark.  As root did you run sysctl enable
espeakup yet?  If not, you want to do that.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Mon, 17 Oct 2022, Linux for blind general discussion wrote:

> Hi,
>
>
> I decided to switch to multi-user.target with systemctl. But one problem I am
> getting is that before logging in, I do not get speech from espeakup. So I had
> to resort to using the graphical.target. Then after logged in, I can then
> switch to a tty window and Espeakup will speak only because I am logged in in
> graphical.target.
>
>
> Any help on where I can set Espeakup to start even before log in, so that I
> can switch to multi-user.target without problem? I am on Arch Linux, but I am
> sure any system using systemd can work just the same.
>
>
> TIA,
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

