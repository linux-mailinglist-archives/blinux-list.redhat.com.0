Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ABAB481688
	for <lists+blinux-list@lfdr.de>; Wed, 29 Dec 2021 21:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640808342;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=R5IWMiF2iq/Uiw7iEPITvxRiTuTAmnGiIyaqKu0lrRk=;
	b=ax4HZtEGl8TpNspJEy92Z8+YGVUBYYtmEgTaPsipiAPemlvmZ+zX8bY2OOiYyktj6qAXnB
	v4BDSyPARKraCYvV/5Xg8LwwnfmHUNqNGKiw7AkjwxQODzmdMsoLX3fr56RQkV7wBoy8op
	LWa70DOs92DzqQsZVquA3Wgiz8XMwl0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-588-zTv0WrO0PKqsw0GmeeAUZA-1; Wed, 29 Dec 2021 15:05:39 -0500
X-MC-Unique: zTv0WrO0PKqsw0GmeeAUZA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1A0BA1853028;
	Wed, 29 Dec 2021 20:05:34 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9D840100EBBE;
	Wed, 29 Dec 2021 20:05:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 32AB14BB7C;
	Wed, 29 Dec 2021 20:05:31 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BTK5QdY019803 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 29 Dec 2021 15:05:27 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8D5F153D5; Wed, 29 Dec 2021 20:05:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 874DB53D4
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 20:05:23 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD159811E76
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 20:05:23 +0000 (UTC)
Received: from gateway1.unifiedlayer.com (gateway1.unifiedlayer.com
	[74.220.203.94]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-520-QRd6gyIJNFy6TEDKRA7qpQ-1; Wed, 29 Dec 2021 15:05:21 -0500
X-MC-Unique: QRd6gyIJNFy6TEDKRA7qpQ-1
Received: from cm4.websitewelcome.com (unknown [108.167.139.16])
	by gateway1.unifiedlayer.com (Postfix) with ESMTP id 0A55320095328
	for <blinux-list@redhat.com>; Wed, 29 Dec 2021 13:41:18 -0600 (CST)
Received: from uscentral455.accountservergroup.com ([174.136.13.174])
	by cmsmtp with ESMTP
	id 2ep3nNfzgcfn82ep3nExc9; Wed, 29 Dec 2021 13:41:17 -0600
X-Authority-Reason: nr=8
Received: from 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	([76.222.220.222]:21053 helo=bigbox.attlocal.net)
	by uscentral455.accountservergroup.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <blinux.list@thechases.com>) id 1n2ep3-001tnT-Ou
	for blinux-list@redhat.com; Wed, 29 Dec 2021 13:41:17 -0600
Date: Wed, 29 Dec 2021 13:41:16 -0600
To: blinux-list@redhat.com
Subject: Re: Infected Chromium
Message-ID: <20211229134116.24b7f6ab@bigbox.attlocal.net>
In-Reply-To: <b4c0d189-7ca5-be22-258b-9e6791f91f5a@gmail.com>
References: <e1a19af4-7fae-373d-6281-953dd4b03790@seznam.cz>
	<b4c0d189-7ca5-be22-258b-9e6791f91f5a@gmail.com>
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
X-Exim-ID: 1n2ep3-001tnT-Ou
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 76-222-220-222.lightspeed.rcsntx.sbcglobal.net
	(bigbox.attlocal.net) [76.222.220.222]:21053
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Tim here, seconding what Kyle says.  Unless it's coming from a
virus-detection application that you have installed and it's
notifying you outside the browser, it's almost certainly a scam and
you're best off just ignoring it.

Or maybe installing uBlock Origin to block a large number of these
ads and their garbage/annoyance.

-tim

On December 29, 2021, Linux for blind general discussion wrote:
> Most likely it's just one of those scam ads that pops up in
> browsers on some websites. Best thing to do is to ignore it,
> although if it keeps popping up, it may become necessary to remove
> ~/.config/chromium. It should be easy enough to reinstall the
> extensions, since there were only 3 of them.
> 
> ~Kyle
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

