Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E014E55783B
	for <lists+blinux-list@lfdr.de>; Thu, 23 Jun 2022 12:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1655981631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VQ3iDXQkmvLRtfQG1eK6GbVIags/fBGMbpGF7oGhx0Q=;
	b=S/YQQI9RWv7CAfs/i04GeSrdzvYSUPSz/q3ux2piBG3UETWkbv2zFh83ozjVunAc/waAMA
	Gf9eOtenm+ojcCb2fLes9uc6akfjg4dQjpYjaepiZWCWKAGqSshd5C+AbiJ7s5L862pXzl
	ykJlC2DixYiBZZYGu8xHd/UrnTKeT+g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-460-dTPRabePPvGn0c2pqH4mvg-1; Thu, 23 Jun 2022 06:53:47 -0400
X-MC-Unique: dTPRabePPvGn0c2pqH4mvg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8C220101AA47;
	Thu, 23 Jun 2022 10:53:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A67AC40149A6;
	Thu, 23 Jun 2022 10:53:45 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 143E7194B951;
	Thu, 23 Jun 2022 10:53:45 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
In-Reply-To: <mailman.28324.1655979483.111202.blinux-list@redhat.com>
Date: Thu, 23 Jun 2022 05:53:28 -0500
Subject: Re: Thoughts on KDE Plasma as of right now
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.28082.1655981624.111205.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yeah, I've not tried it in like half a year, but this has prompted me to
begin as a Patron to linux-accessibility again. Just $19 per month, but I
hope it helps enthusiasm and to keep up this really great work!
Devin Prater
r.d.t.prater@gmail.com




On Thu, Jun 23, 2022 at 5:18 AM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> So given the news about KDE accessibility getting worked on, I figured
> I'd give KDE a shot. I wasn't that impressed last time.
>
> However. It's improved a lot, I can do basic things, which is a big step
> up, and I get talking app launchers, and can do email, web browsing and
> text editing which is a big, big plus.
>
>
> That being said, I still cannot change system settings or default apps
> like I can on, say, Mate but, and here's the thing I like about KDE
> Plasma as of writing this...
>
>
> It is fast, it, on my Arch box, so YMMV on other OSes, but I'm running
> this on my Arch box, the thing I like about it is the keyboard commands
> make sense.
>
> Now, if I can just work on adding a shortcut that doesn't require me to
> go and fight with a window that won't read, that'd be good. Plasma is
> pleasently surprising and worth checking in on.
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

