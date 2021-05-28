Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id E15F2393A07
	for <lists+blinux-list@lfdr.de>; Fri, 28 May 2021 02:04:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622160279;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rw+TwpX7YLLhbjvi3AV/3M4GP62T+4ez7zQyFxNZfwg=;
	b=dJ0z3M2M1NFj18pZeCGxC7fJeVJ/9g/TdE7NN+LWqkbK2K7CY9VwGzadNkRvRZtge9SaOJ
	odNd4lZLiP1qlmhG6JLaicgyprjmtqxqa4tVae8sGgB+qqGD26TjA0oYne40BMbdbHY4zw
	yZjyMSdz3MQWxYolnENvREEQqAu6h1Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-409-oLRPwViFPr-cN0USHCDdKQ-1; Thu, 27 May 2021 20:04:37 -0400
X-MC-Unique: oLRPwViFPr-cN0USHCDdKQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6FA188E3CB;
	Fri, 28 May 2021 00:04:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D28419C66;
	Fri, 28 May 2021 00:04:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 75AAC55359;
	Fri, 28 May 2021 00:04:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 14S04JIP007710 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 May 2021 20:04:19 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4763D2162384; Fri, 28 May 2021 00:04:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42AB62162381
	for <blinux-list@redhat.com>; Fri, 28 May 2021 00:04:16 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 903DC18392A2
	for <blinux-list@redhat.com>; Fri, 28 May 2021 00:04:16 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-ri7pSfvuPyuYQUVTxoGwzw-1; Thu, 27 May 2021 20:04:14 -0400
X-MC-Unique: ri7pSfvuPyuYQUVTxoGwzw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FrlKT3kJrzJZw
	for <blinux-list@redhat.com>; Thu, 27 May 2021 20:04:13 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FrlKT3Ftmzcbc; Thu, 27 May 2021 20:04:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FrlKT2vN9zcbW
	for <blinux-list@redhat.com>; Thu, 27 May 2021 20:04:13 -0400 (EDT)
Date: Thu, 27 May 2021 20:04:13 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Crawling a website for media files.
In-Reply-To: <CAO2sX31ZNaxM3dHXXhFxiqfXEfJ_6ceJeYJ0_GJeni2ikc-RKw@mail.gmail.com>
Message-ID: <alpine.NEB.2.23.451.2105272003520.10095@panix1.panix.com>
References: <CAO2sX31bb2qOf=erBYE2ZQtnKpTYkFMOx8ynLHnvztRYQh=rjQ@mail.gmail.com>
	<20210526130051.2e6fddad@bigbox.attlocal.net>
	<CAO2sX31e1qtOiM0-usOHPQNvyDR=GuHEaHQo1qEAbwcUKGGxjQ@mail.gmail.com>
	<alpine.NEB.2.23.451.2105271904180.17882@panix1.panix.com>
	<CAO2sX31ZNaxM3dHXXhFxiqfXEfJ_6ceJeYJ0_GJeni2ikc-RKw@mail.gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I love it when a plan comes together!


On Thu, 27 May 2021, Linux for blind general discussion wrote:

> Okay, podget seems to be doing the trick, having already downloaded
> about 70 files as of the last time I did a ls | wc -l on the download
> directory.
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

