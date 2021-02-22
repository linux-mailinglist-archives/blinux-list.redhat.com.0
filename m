Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 40C3132222F
	for <lists+blinux-list@lfdr.de>; Mon, 22 Feb 2021 23:34:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1614033288;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=BSubivju+PxJSw2GD9fley/jNgrrq+XsnYQRGj/OxSk=;
	b=XmG9eBmD4iLMJQ/tZhbng4RdTzENTlm/kBHIw1ZbE9+zHNbY8pUFAp0LJ3lx4ABrTfuNSf
	ekVJHypv5M8vOdgliMHovUBmWAODdY20wxeM/w3euUSSFHyEygNkx9FFMz++7riT3pE7Z0
	nAdLcdmreuS2/yZeG9rMq8h3mjUBNqA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-439-sWELPtWINeCpwmyk_mrRaA-1; Mon, 22 Feb 2021 17:34:45 -0500
X-MC-Unique: sWELPtWINeCpwmyk_mrRaA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8FAE18D6A28;
	Mon, 22 Feb 2021 22:34:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8B9646B8DF;
	Mon, 22 Feb 2021 22:34:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5A18758074;
	Mon, 22 Feb 2021 22:34:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 11MMYV0l023501 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 22 Feb 2021 17:34:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 1705D10FBFFE; Mon, 22 Feb 2021 22:34:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1195D1003203
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 22:34:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 907821022F0B
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 22:34:27 +0000 (UTC)
Received: from gateway4.unifiedlayer.com (gateway4.unifiedlayer.com
	[70.40.207.204]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-182-RyZT20tNN0eJPQduCBc2lA-1; Mon, 22 Feb 2021 17:34:24 -0500
X-MC-Unique: RyZT20tNN0eJPQduCBc2lA-1
Received: from cm1.websitewelcome.com (unknown [192.185.0.102])
	by gateway4.unifiedlayer.com (Postfix) with ESMTP id B634F2009E110
	for <blinux-list@redhat.com>; Mon, 22 Feb 2021 16:13:04 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id EJRwldhKswLnQEJRwlMyUE; Mon, 22 Feb 2021 16:13:04 -0600
X-Authority-Reason: nr=8
Received: from 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	([172.0.250.193]:39183 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <blinux.list@thechases.com>) id 1lEJRw-002N3e-EE
	for blinux-list@redhat.com; Mon, 22 Feb 2021 16:13:04 -0600
Date: Mon, 22 Feb 2021 16:13:03 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: curl vs. wget
Message-ID: <20210222161303.5791a145@bigbox.attlocal.net>
In-Reply-To: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
References: <alpine.NEB.2.23.451.2102221641030.18367@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 172.0.250.193
X-Source-L: No
X-Exim-ID: 1lEJRw-002N3e-EE
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 172-0-250-193.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [172.0.250.193]:39183
X-Source-Auth: tim@thechases.com
X-Email-Count: 1
X-Source-Cap: dGhlY2hhc2U7dGhlY2hhc2U7dXNjZW50cmFsNDU1LmFjY291bnRzZXJ2ZXJncm91cC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.

For large file downloads?  Using curl & wget are likely about the same
for the stock usage.

However, for multiple files, you can use curl's "--parallel" and
"--parallel-max" options to download multiple files at the same time.

The curl blog mentions other tools that do "same file splitting"

https://daniel.haxx.se/blog/2019/07/22/curl-goez-parallel/

but doesn't mention any particular such utilities by name.

-Tim



On February 22, 2021, Linux for blind general discussion wrote:
> Has curl got any speed advantage for large file downloads compared
> to wget?
> I know about axel and want to leave axel out of this comparison
> since some web sites block axel though for large files when axel
> can be used it's well worth the time savings.
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

