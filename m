Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6734400C7
	for <lists+blinux-list@lfdr.de>; Fri, 29 Oct 2021 18:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1635526591;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=X8jVfqpqOrOUno2U48HNB6DDqroTlDgdFKS46IeXLJs=;
	b=AuYjidnPAV+kjO5vk9HmK922Tzsqq/RE8qERYV6tCW7jgx7raLMvUvnZrKtJiTdN2BYn9t
	nWUZ7YuuuqCRE+W2sBbp+z8KkZxBWk2tbvrRajH41EOP972QggdcHvA64DrNXMO8U9w7hK
	EclVuI6z+NxsIcxUcZAahLy3xKjDYEs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-491-5P7StW42OLKc3P1VEnOx2Q-1; Fri, 29 Oct 2021 12:56:27 -0400
X-MC-Unique: 5P7StW42OLKc3P1VEnOx2Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2A9EE18D6A2A;
	Fri, 29 Oct 2021 16:56:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 963ED79450;
	Fri, 29 Oct 2021 16:56:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DF73F1809C81;
	Fri, 29 Oct 2021 16:56:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19TGuEHX029559 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 29 Oct 2021 12:56:14 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 232AD4010FE1; Fri, 29 Oct 2021 16:56:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1E05040CFD0B
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:56:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 03B97899EDD
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:56:14 +0000 (UTC)
Received: from bullseyemail.carmickle.com (bullseyemail.carmickle.com
	[50.116.61.232]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-236-gpLmc32bPR--SX3e9k7dSg-1; Fri, 29 Oct 2021 12:56:11 -0400
X-MC-Unique: gpLmc32bPR--SX3e9k7dSg-1
Received: from [192.168.116.128] (unknown [176.230.58.222])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bullseyemail.carmickle.com (Postfix) with ESMTPSA id 9373932B8766
	for <blinux-list@redhat.com>; Fri, 29 Oct 2021 16:48:04 +0000 (UTC)
Date: Fri, 29 Oct 2021 19:47:57 +0300 (IDT)
X-X-Sender: gshang@debian.work
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Can I run an accessible version of linux under windows?
In-Reply-To: <38ad1bdb-b7a8-5152-bc87-c9174a0c9b8f@gmail.com>
Message-ID: <alpine.DEB.2.11.2110291944510.11822@debian.work>
References: <66F2A8CB-2631-469B-9594-F3173CD00F69@gmail.com>
	<5f84d925-a640-5f3f-3c0d-8b022d5b44ca@gmail.com>
	<38ad1bdb-b7a8-5152-bc87-c9174a0c9b8f@gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1320423121-1635526081=:11822"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--8323329-1320423121-1635526081=:11822
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On Fri, 29 Oct 2021, Linux for blind general discussion wrote:

> What is the minimum requirements of a computer to run linux?=C2=A0 I was =
hoping to=20
> load it on an older machine retired from DOS; a 386 or 486 with not much=
=20
> memory or hardware expansion.=C2=A0 Perhaps modern linux won't run on a m=
achine of=20
> that vintage?

YOu certainly won't be able to run a desktop environment on a machine like=
=20
that.

You should be able to run a command-line environment.

I'm not sure how well speech synthesis would work on such a system, you=20
might need some speech hardware.

And getting audio output to work on a systemthat old can be a bit=20
interesting.

good luck!

Geoff.

--8323329-1320423121-1635526081=:11822
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--8323329-1320423121-1635526081=:11822--

