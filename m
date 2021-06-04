Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 7BFF839C3AB
	for <lists+blinux-list@lfdr.de>; Sat,  5 Jun 2021 01:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1622847778;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LIRU6NPHF/RtV0UeO5PG8Roq8o3Yu8cSsm4IdNZ9x64=;
	b=BmDU0s74INWlEVdPyFh9ZcLmKWTFtVr4jBtAQjZn1RmiLrDOxGqC/V2GAXHOHHpXwYMW8j
	jLZhOoAmPP7PBLV0cbWkWeoUdxx5uyIJgcmNC8eIUSszHRatgONZy2Vbpoqol0Sh1SsnQ/
	8U3zjl9kV2ekCBKS1k0zdIxLODHNXIU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-WY3tb3kTMaeaPcwz_c0VVw-1; Fri, 04 Jun 2021 19:02:56 -0400
X-MC-Unique: WY3tb3kTMaeaPcwz_c0VVw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8166F801B12;
	Fri,  4 Jun 2021 23:02:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C29CF60BF1;
	Fri,  4 Jun 2021 23:02:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 411411800BB8;
	Fri,  4 Jun 2021 23:02:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 154N2Zpj020195 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 4 Jun 2021 19:02:35 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id F18CD163D08; Fri,  4 Jun 2021 23:02:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC8DF163D03
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:02:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5F1CC803D66
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 23:02:32 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-282-pHN41DHhN1eb2FWFpd2zsw-1; Fri, 04 Jun 2021 19:02:30 -0400
X-MC-Unique: pHN41DHhN1eb2FWFpd2zsw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4FxdZY5wWGz3pSV
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 19:02:29 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4FxdZY5JQVzcbc; Fri,  4 Jun 2021 19:02:29 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4FxdZY4yvmzcbV
	for <blinux-list@redhat.com>; Fri,  4 Jun 2021 19:02:29 -0400 (EDT)
Date: Fri, 4 Jun 2021 19:02:29 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: GRML or other live environment
In-Reply-To: <20210604.214256.298.7@[192.168.1.100]>
Message-ID: <alpine.NEB.2.23.451.2106041900230.17213@panix1.panix.com>
References: <20210604.214256.298.7@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Boot parameter on grml is blind-friendly.  After boot finishes
speakup_synth=soft as a command if memory serves starts espeak.  It's been
a while since I did anything with that distribution though.  Another
possibility might be knoppix.


On Fri, 4 Jun 2021, Linux for blind general discussion wrote:

> I want to boot up a system with active compilation tools. Goal is to build lfs on a new system such that it's the only OS on the hard disk. Does GRML have speakup on it still? According to this:
> http://git.grml.org/?p=grml-live.git;a=blob_plain;f=templates/GRML/grml-cheatcodes.txt;hb=HEAD
> it does not. If it actually does, how do you start it. And if not, what is another live distro that has compilation tools on it already so I can do what I want to do?
>
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

