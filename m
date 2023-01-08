Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 399BA6616D9
	for <lists+blinux-list@lfdr.de>; Sun,  8 Jan 2023 17:50:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673196631;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=5QG6Ynb8zljBQtekepdLSg1G/F0oJFPPld8Ui/N8kow=;
	b=CxnPkb58bG7M6Kf/EIm84mdBeWbl9SzHK1D8Z1ll3MrAVnjQFweOxt0ThaBBbMyfmxdx4Y
	feKq80uLNBvwu0F9wt82HdCASnP08FtI0bxMZiqKQIx+Vi8aFLf2McNTlLBngKXRjDvx+L
	K0Mztq9tQMLPsFA/NXjajgZND4i5aMo=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-351-ZOzZlauXMV629SCXtQfjzA-1; Sun, 08 Jan 2023 11:50:27 -0500
X-MC-Unique: ZOzZlauXMV629SCXtQfjzA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7C8131C05AF5;
	Sun,  8 Jan 2023 16:50:25 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E804439DCA;
	Sun,  8 Jan 2023 16:50:19 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C825E19459CC;
	Sun,  8 Jan 2023 16:50:17 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 8 Jan 2023 11:50:13 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
In-Reply-To: <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
 <mailman.3474.1673161769.2515660.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3584.1673196617.2515658.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I don't put anything in git.



Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Sun, 8 Jan 2023, Linux for blind general discussion wrote:

> On 1/7/23 22:29, Linux for blind general discussion wrote:
> > The script c-jenux.sh checks for existence of a specific Jenux iso and
> > lets the user know if it exists and does not download the file.  I'm
> > finding this useful for this particular project and I figure others may
> > find it useful to check for other files as well so I'll post this below.
> >
> > #!/usr/bin/env bash
> > #file: c-jenux.sh - check for bad iso
> > wget --spider -S
> > https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep
> > -i remote
> > https://listman.redhat.com/mailman/listinfo/blinux-list
> >
>
> Would be better if you would point to that file being tracked in Git!
>
> --
> John Doe
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

