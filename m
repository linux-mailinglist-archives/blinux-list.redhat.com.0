Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 957827ABAA6
	for <lists+blinux-list@lfdr.de>; Fri, 22 Sep 2023 22:50:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1695415816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TlmpdwyZSE1SkdSdtX+y7w05ucFd0pvluCMgVJYuSHs=;
	b=Bo4NvqayU98UvIzMLvC42pY9H3OPxlFBD9UUXFPtcZZn5pWekGzCHpBt6JRxcIZcRHcH7g
	4ZtshV48QKerGiAB4yzq+t+5HPq0uMx+3YfuT7H1ZbRZ74Aj3kDfI3m9ZRyOH337BBi5Yd
	wW8kfyQ1pkMcuCxIzQVKsJ0GriCDOjo=
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-428-qOafHik0ODOU8V76hdHUPQ-1; Fri, 22 Sep 2023 16:50:12 -0400
X-MC-Unique: qOafHik0ODOU8V76hdHUPQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 12134280D215;
	Fri, 22 Sep 2023 20:50:11 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 0581971128A;
	Fri, 22 Sep 2023 20:50:10 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 8733A19466F3;
	Fri, 22 Sep 2023 20:50:09 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 22 Sep 2023 16:50:04 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Talking Images for 64-bit Laptop
In-Reply-To: <mailman.1883.1695412856.2242622.blinux-list@redhat.com>
References: <mailman.1883.1695412856.2242622.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1808.1695415809.2242623.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I think slint can fill the bill for you.  You can put slint on a flash
drive if you need to do that and have it install for you.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Fri, 22 Sep 2023, Linux for blind general discussion wrote:

> I have a HP Pavilion lap top system which my wife was using to
> run Windows 11 and it is presently failing to boot but
> fortunately for this list, that is not what I am really here to
> post about.
>
> 	What I think I need is a bootable version of linux which
> is similar in behavior to the many Raspberry Pi images available
> that can fit on a SSD card.  Usually, they are compressed and
> will fill the SSD card one has written the image to so they are
> not your standard iso live CD's but one uses it as a
> self-contained Linux system.  What I want to do is keep Windows
> 11 on the SSD but get the laptop capable of booting off of a
> bootable usb drive if it is present.  If not, it goes ahead and
> boots Windows.
>
> 	This will probably require changing the BIOS settings to
> turn off secureboot and have usb be the first boot candidate
> tried.
>
> 	Right now, for this discussion, I am asking if there is
> such an image for a 64-bit system.  If it talks, that's the icing
> on the cake but if not, I still might be able to use it via ssh
> from a system that does talk.
>
> 	I want to use this instance of Linux to try to fix the
> problem the dead box is having but also use Linux to backup the
> box since Windows does not have a native backup program.  This
> also gives me yet another portable Linux box as if I needed one.
>
> 	As far as this list is concerned, is there something like
> this out there and does it talk?
>
> 	Another reason why I have not simply tried to use a
> debian installation image is frankly because there is a slight
> chance of accidentally installing it on the SSD where Windows 11
> currently lives so I want to avoid that if possible.
>
> 	The idea is to do no more harm than has already been
> done.  From what I read based on the error screen, the problem is
> fixable but if I write to the wrong device, that pretty well
> blows things up so I am playing it safe if possible.
>
> 	One person mentioned grml with clonzilla which sounds
> like a good thing but at this stage, I am open to any suggestion.
> Don't forget that it's a laptop so one can't just pop drives and
> memory cards in and out like one should be able to do in a
> desktop system so I am trying to avoid doing that unless the SSD
> proves to be bad.
>
> 	Thanks.
>
> Martin McCormick
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

