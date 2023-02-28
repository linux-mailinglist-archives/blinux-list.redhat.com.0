Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4FD6A63E8
	for <lists+blinux-list@lfdr.de>; Wed,  1 Mar 2023 00:53:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1677628400;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7PHDN/TY181Jmsg4Ab/JpnAu79CV0p47x6IKfBHB3zw=;
	b=cKmVOJCR11ez+d/cRfNk82wB86IndwHVOrW1BrcPWv2tJMgV2ho3SOpZ5iCHg1ivI+M1i7
	ZNCDrO6cr4rkxLoawXuhR6qkxeW66lzMvF0OpYMEmJIOLI5/mPwOtwOYkROZ0IzrZqy0wR
	NCaDUdtmoqqOifnWw9GBolpEUCU4kCs=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-613-TFUwSEI7N5uCyYnAxLMSHw-1; Tue, 28 Feb 2023 18:53:17 -0500
X-MC-Unique: TFUwSEI7N5uCyYnAxLMSHw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 22BFF3810785;
	Tue, 28 Feb 2023 23:53:15 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id C948F1121314;
	Tue, 28 Feb 2023 23:53:14 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 699D019465A8;
	Tue, 28 Feb 2023 23:53:14 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Tue, 28 Feb 2023 18:53:10 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Looking for a podcast player
In-Reply-To: <mailman.999.1677627794.3183649.blinux-list@redhat.com>
References: <mailman.959.1677626979.3183645.blinux-list@redhat.com>
 <mailman.999.1677627794.3183649.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.1040.1677628393.3183648.blinux-list@redhat.com>
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

The search for podcasts feature on podcast catchers is often handicapped
since they search a small selection of locations for podcasts and the
reason for this is many websites obscure the publicly available feeds for
podcasts just as they do for many radio stations.  Podcast catchers need
to be able to break this concealment so those that want to listen to
podcasts can get a decent selection of them on their systems.  What would
be even better for the podcast listening community to do is black list web
sites that conceal publicly available podcast links and boycott the sites
that do this practice.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Tue, 28 Feb 2023, Linux for blind general discussion wrote:

> Hi Rob: Actually my Linux expert is working on 1, which essentially I've been
> useing for some time, but it has some issues before we are ready to release
> it. You are the 2nd person who is anxious for this, but `trust me, you will
> really like it. Several years ago, there was one I liked, but it was written
> in hascal-and-so we couldn't make alterations. I am quite tempted to show you
> an opening menu. OK
> number 1 add category
> number 2 edit category
> number 3 add new podcast
> number 4 edit existing podcast
> number 5 delete existing podcast
> number 6 choose episodes to download
> number 7 start downloads
> number 8 search for podcasts
> number 9 delete from download queue
> number 10 update all podcasts
> number 11 archive
> choice
> Back again live: So, you can see its written with a screen-reader in mind
> Chime
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

