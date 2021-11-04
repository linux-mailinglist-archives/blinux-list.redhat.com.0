Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C4544537D
	for <lists+blinux-list@lfdr.de>; Thu,  4 Nov 2021 14:04:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636031046;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OepX/wqtSKYLHDC2hFWeR2KAdrtZCXJbp5yYSgHAWaA=;
	b=LEmz7sWKd/opmNHYxgGSz7PJF0/Hi1iSWEPkF3btM0Bfh6wNHahvUAWj/1r5eTdOoAmen8
	sVptsVWdlORreOy1AdQsm01FShTl4tYoCvHeH+f+BUikQj5M4TNlj7VIHbrbHJo6pihctS
	jMN9Z3KS/O2/v0pfdSHd+EJrCWUD6e4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-572-2SHtjsSONvWW2AjWtmvqGg-1; Thu, 04 Nov 2021 09:04:02 -0400
X-MC-Unique: 2SHtjsSONvWW2AjWtmvqGg-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2664B1926DA2;
	Thu,  4 Nov 2021 13:03:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2F8B967842;
	Thu,  4 Nov 2021 13:03:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D4E1E4A703;
	Thu,  4 Nov 2021 13:03:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1A4D3gHs008157 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 4 Nov 2021 09:03:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4990E40CFD10; Thu,  4 Nov 2021 13:03:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43A4C40CFD0A
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:03:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 296AF811E80
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 13:03:42 +0000 (UTC)
Received: from gateway12.unifiedlayer.com (gateway12.unifiedlayer.com
	[69.89.27.76]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-367-PJv85pUiPGePt1ObFbjLWg-1; Thu, 04 Nov 2021 09:03:39 -0400
X-MC-Unique: PJv85pUiPGePt1ObFbjLWg-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway12.unifiedlayer.com (Postfix) with ESMTP id D3BF4200A601E
	for <blinux-list@redhat.com>; Thu,  4 Nov 2021 07:42:23 -0500 (CDT)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id ic4Vm8G46cfn8ic4Vm81Mm; Thu, 04 Nov 2021 07:42:23 -0500
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:63630 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1mic4V-0048NC-Ij
	for blinux-list@redhat.com; Thu, 04 Nov 2021 07:42:23 -0500
Date: Thu, 4 Nov 2021 07:42:22 -0500
To: blinux-list@redhat.com
Subject: Re: anonymous postings
Message-ID: <20211104074222.44ad2c12@bigbox.attlocal.net>
In-Reply-To: <99C93103-154A-4522-A690-81731398338A@cfcl.com>
References: <CAGJxbF5-L+XZrVgE1-=zVo+0OMGYN8MyQbpb4dzog-fkQenRyQ@mail.gmail.com>
	<e69acb20-0467-35b1-3d40-eafae4543b48@gmail.com>
	<CAM+Q2c7O_0eLXVWMnmUEU7BTHkf4P=5dX20+hGc9yqpnOrr6dQ@mail.gmail.com>
	<1C66A443-A56F-4B20-895C-DD5B7FB80918@cfcl.com>
	<f222c105-e027-b6bf-df00-f2bc3733719d@gmail.com>
	<C4D8F75A-ADC8-4F6F-8F4C-9AE2BB8B0792@cfcl.com>
	<20211102083235.nuzcsnnrrr2kxyno@begin>
	<CAPo=n-9A+Q-iGjhEbZbb=0bCdGHBtEsFZH8QoR4bn+AoudT3qA@mail.gmail.com>
	<fce16660-109a-fbea-ad65-75d77c682445@linux-a11y.org>
	<99C93103-154A-4522-A690-81731398338A@cfcl.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - uscentral455.accountservergroup.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - thechases.com
X-BWhitelist: no
X-Source-IP: 76.222.220.222
X-Source-L: No
X-Exim-ID: 1mic4V-0048NC-Ij
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:63630
X-Source-Auth: tim@thechases.com
X-Email-Count: 2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here.  You're not the only one frustrated by the anonymous
postings.  However I recall it was the only blunt tool available to
address the spamming that the list was receiving several years ago.
I wish there was a more middle-ground solution that would preserve
the *names* in the From field, but possibly redacting the address
portion.

-tim


On November  3, 2021, Linux for blind general discussion wrote:
> Speaking only for myself, I find it very difficult to follow
> discussions on this list when the posters do not identify
> themselves in any manner.  To be clear, I don't really care if the
> name used is an alias (call yourself xyz123 if you like): I just
> want to know whether a message is coming from the same party that
> sent an earlier one.
> 
> - Rich Morin
> 
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

