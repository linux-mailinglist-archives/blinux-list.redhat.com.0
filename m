Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 259156867CE
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 14:59:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675259995;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lMVorl+ANgpBkm0AeBGMaq57QirL0j2BI3WkcVn9Hts=;
	b=ADRvAiJBYeRElqchmT0faClCh9aaaAT0uGbyJhyquSCTi+yqUdTFTrsfrBKl+8NTSFK2n/
	IAMI8sKXnTcIvyJS3tCmxpWnPQYoj/Pg+xKDaeHEGrD8/HrZ4OrMDUHh6mOw495fHJAINQ
	hO6/+tUuIXLfuP66pcSqNW17HyQMOkQ=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-3-gXh6d5RcPMyqQcBMjvq3Jw-1; Wed, 01 Feb 2023 08:59:51 -0500
X-MC-Unique: gXh6d5RcPMyqQcBMjvq3Jw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25F77802BF5;
	Wed,  1 Feb 2023 13:59:35 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id DACF2140EBF4;
	Wed,  1 Feb 2023 13:59:34 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id 82E3419465B2;
	Wed,  1 Feb 2023 13:59:34 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 08:59:30 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Jenux repo unavailable
In-Reply-To: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
References: <mailman.3810.1675256533.8169.blinux-list@redhat.com>
MIME-Version: 1.0
Message-ID: <mailman.3929.1675259974.8170.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

The developer email for jenux is dnl.nash@gmail.com.
Not only is the repo off line, his web site is off line too.
It could be a new iso is in the works.
It could also be he had his web site hacked along with the jenux repo.



Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author, 1940)

.

On Wed, 1 Feb 2023, Linux for blind general discussion wrote:

> Hi,
>
> This is just a quick announcement for all those using/testing Jenux.
>
> Currently, it appears as though the repo is unavailable.
>
> A friend this mornign told me they were having issues updating their machine
> running Jenux. Upon taking a look, I found that the issue was caused by
> jenux.db failing to download when retrieved with pacman -Syu.
>
> I'm unsure where to contact the maintainer to inform them of this problem
> however, so all I can do for the moment is remove the Jenux repo.
>
> This leaves a lot of packages newer than what are available in the community
> repo, and even in some cases newer than in the AUR.
>
> At any rate, I hope this helps someone who might have been confused as to why
> their system was not working correctly when performing an upgrade.
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

