Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 236EB500168
	for <lists+blinux-list@lfdr.de>; Wed, 13 Apr 2022 23:52:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649886729;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=es6vTONNGKyEyG8PEm07oUEau5CFq6fvqLABQ+ZEWXc=;
	b=dctpNTRAnA8LyHYimmTeO2n1gpH7DDXHjSAN5JZDybgFQJ894fdmVjegre113ZR+6hB37s
	CuPSobIQiUCMMNtOFL3787ghBKDXajAoV4dPgeZcv/uZd71fQJ9K1gc9F27+t9DJcbmsGr
	XAfs/3hbuP3G1m4o9ZMzQF984pw2RyI=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-290-nxyZ4ECCOuubiOZzyOyvEQ-1; Wed, 13 Apr 2022 17:52:05 -0400
X-MC-Unique: nxyZ4ECCOuubiOZzyOyvEQ-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0D602811E7A;
	Wed, 13 Apr 2022 21:52:04 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 1856457531C;
	Wed, 13 Apr 2022 21:51:59 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C77F91940353;
	Wed, 13 Apr 2022 21:51:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
MIME-Version: 1.0
References: <mailman.7836.1649830111.111205.blinux-list@redhat.com>
 <mailman.8034.1649840185.111204.blinux-list@redhat.com>
 <mailman.8235.1649845924.111201.blinux-list@redhat.com>
 <mailman.8235.1649853207.111206.blinux-list@redhat.com>
 <mailman.8153.1649856275.111209.blinux-list@redhat.com>
 <mailman.8268.1649857705.111206.blinux-list@redhat.com>
 <mailman.8242.1649858545.111203.blinux-list@redhat.com>
 <mailman.8365.1649876915.111204.blinux-list@redhat.com>
In-Reply-To: <mailman.8365.1649876915.111204.blinux-list@redhat.com>
Date: Wed, 13 Apr 2022 16:51:38 -0500
Subject: Re: FYI - Command Line Programs for the Blind
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
X-Content-Filtered-By: Mailman/MimeDel 2.1.29
Message-ID: <mailman.8363.1649886716.111208.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Wow, responding to these points:
Devin Prater
r.d.t.prater@gmail.com


On Wed, Apr 13, 2022 at 2:08 PM Linux for blind general discussion <
blinux-list@redhat.com> wrote:

> Why not use windows 11 then?
>
>
> Now why the hell would I wanna do something like that? First, I want my
> freedom. Next, I don't want to have to get a Microsoft account just to
> use my computer.

These are valid points. But what I get from Windows: a mostly clean
accessibility experience (mostly thanks to NVDA and community support), and
a good many apps designed by and for the blind.


> And for God's sake I want to be able to change my
> default browser or uninstall something I don't want.

I mean I have Google Chrome set as my default browser right now. And I can
uninstall a lot. There's no Candy Crush Saga, and I just uninstalled Dizney
Plus.


> And if I do want to
> open up a terminal sometimes, it is my right to do so.

Windows Terminal exists. They even have a Windows package manager. But if
you don't like that one, you use Scoop, or Chocolatey, which also have some
Linux apps and command line programs.

> And their mail
> application is broken as fsck as well.
>
That's still true. But you'd just install Thunderbird wouldn't you? It
works even better on windows than Linux because the accessibility bus is
faster to load all those messages into its buffers.

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

