Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 386421CFA89
	for <lists+blinux-list@lfdr.de>; Tue, 12 May 2020 18:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589300703;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j5amDEPKqRGwRVsusKyQGbPchjIdA8dN89asnwIasIk=;
	b=DfoFDPz+F51L2TSn/awr383JkQztNuklJhJsnrOZS/bA2RCFR1JYQhmeDVE4PhxXebFJyp
	qcZkOqt9ZZlaXSU+QpIDyv6DMzkT9sPCYq99Ult32TcFDFM4yo/eyOTIL/vgiAw0jBARV6
	JQX7Fif5unJCoKQw/0F3VEG72d16HeI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-470-fqvmIOd4OaSNlBY_aDjI7A-1; Tue, 12 May 2020 12:25:00 -0400
X-MC-Unique: fqvmIOd4OaSNlBY_aDjI7A-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F2C518A0761;
	Tue, 12 May 2020 16:24:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCD4E7D8F1;
	Tue, 12 May 2020 16:24:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 89A8D4CAA0;
	Tue, 12 May 2020 16:24:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04CGOhxF028387 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 12 May 2020 12:24:43 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F19DE2156A3C; Tue, 12 May 2020 16:24:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EDE992166B27
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:24:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EC96E916106
	for <blinux-list@redhat.com>; Tue, 12 May 2020 16:24:40 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-433-M9XbfcIQM2ODudJ6swIBVA-1; Tue, 12 May 2020 12:24:38 -0400
X-MC-Unique: M9XbfcIQM2ODudJ6swIBVA-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 49M36Z1DJWz1SqD
	for <blinux-list@redhat.com>; Tue, 12 May 2020 12:24:38 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 49M36Z0HDMzcbc; Tue, 12 May 2020 12:24:37 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 49M36Y6xWCzcbV
	for <blinux-list@redhat.com>; Tue, 12 May 2020 12:24:37 -0400 (EDT)
Date: Tue, 12 May 2020 12:24:37 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Manjaro linux
In-Reply-To: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
Message-ID: <alpine.NEB.2.21.2005121221430.13470@panix1.panix.com>
References: <E811AB13-AE96-4C85-93CB-894ED5675931@gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Yes Manjaro linux has orca in its installer.  However Manjaro Linux
hasn't got an accessible installer.  I had many problems with Manjaro
Linux while sonar gnu linux was using that distribution both with the
thus installer which is the most accessible Manjaro had to offer at that
time and kalamari installer was completely inaccessible.

You'll be far happier installing slint.

On Tue, 12 May 2020, Linux for blind general discussion wrote:

> Date: Tue, 12 May 2020 10:43:28
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Manjaro linux
>
> Does Manjaro linux have orca in its installer
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>
>

-- 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

