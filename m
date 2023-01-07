Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5BB6611DD
	for <lists+blinux-list@lfdr.de>; Sat,  7 Jan 2023 22:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1673128382;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pkAhdAfd2KGkXV9uzy/qN9JU99Lkoe1e/cCGxV62SKg=;
	b=R0fe9E8S22x4xTPc0rS2i0pajxddRVHm1Fc+eWmBAVM1mgp1hLx07fuwtrphEUe390+MDY
	x6sEUHb5jTXSzm1ieQmrj7aj6aw0rzu1tpo8TydJFrN/h4UaN24EacDt2mS/fINQKNcZzk
	W6R1avApuv8CJ1Fr3JkKICFpoaGQ2OE=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-383-42SZqGDdN5Su8Z7KFb2vww-1; Sat, 07 Jan 2023 16:52:58 -0500
X-MC-Unique: 42SZqGDdN5Su8Z7KFb2vww-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9CFBF380664D;
	Sat,  7 Jan 2023 21:52:56 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id EAFCD492B06;
	Sat,  7 Jan 2023 21:52:55 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 851C619459D5;
	Sat,  7 Jan 2023 21:52:55 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sat, 7 Jan 2023 21:52:51 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: check for existence of file
References: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
MIME-Version: 1.0
In-Reply-To: <mailman.3349.1673126966.2515671.blinux-list@redhat.com>
Message-ID: <mailman.3528.1673128375.2515662.blinux-list@redhat.com>
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
Content-Disposition: inline
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

I usually use the "-c" option with wget which continues an interrupted
download if the server supports it:

  wget -c https://example.com/install_2023-01-03.iso

which isn't quite the same, but has saved me many hours of
re-downloading things if my ISP connection drops in the middle of
a download.

-tim


On 2023-01-07 16:29, Linux for blind general discussion wrote:
> The script c-jenux.sh checks for existence of a specific Jenux iso and
> lets the user know if it exists and does not download the file.  I'm
> finding this useful for this particular project and I figure others may
> find it useful to check for other files as well so I'll post this below.
> 
> #!/usr/bin/env bash
> # file: c-jenux.sh - check for bad iso
> wget --spider -S https://nashcentral.duckdns.org/projects/Jenux-2022.12.04-dual.iso 2>&1|grep -i remote
> 
> 
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>  soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
> 
> .
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

