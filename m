Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A6349D46C
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:23:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643232236;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/HwR4CGflCdDsAzlPy+zq1bC9FR2fTfJ51rqF3szLnE=;
	b=XLzQMmjvrWtWUkXDvPNzS7SRJSkTsAgg4L6dp22QsAB8NbVjCzLHLxxa0om0doZv6GOvDh
	yRAPB2SF4s37FWjZpoGXG5ZLzZ7DPjVv36L119kGyOBiudLAzdDl37a73+6u1mtKvWtnod
	fC/y4FTCf8sxgQChRqiWr3JsnuZ6P1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-516-nLrGR7LxN765q6zGc8t9BQ-1; Wed, 26 Jan 2022 16:23:52 -0500
X-MC-Unique: nLrGR7LxN765q6zGc8t9BQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 38CAE83DD20;
	Wed, 26 Jan 2022 21:23:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2AC956F68;
	Wed, 26 Jan 2022 21:23:47 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AE64A4BB7C;
	Wed, 26 Jan 2022 21:23:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLNfev027948 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:23:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CB2A54328D4; Wed, 26 Jan 2022 21:23:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7712401E91
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:23:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ACD4F80029D
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:23:41 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-265--eM8k_blN5qkXZv3h2j_tQ-1; Wed, 26 Jan 2022 16:23:39 -0500
X-MC-Unique: -eM8k_blN5qkXZv3h2j_tQ-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id A1B386201AD; Wed, 26 Jan 2022 21:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id A0EA56200FA
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:23:38 -0500 (EST)
Date: Wed, 26 Jan 2022 16:23:38 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Chime,
may I ask  just out of curiosity
why you would want an mp3 of a text file that large?
I am guessing portability, but the book is not provided already in an audio 
format from bookshare?



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> Well, thank you. I first ran an apt eventually ran an aptitude, it mentioned 
> 2 python packages with gtts in their name. But here's what happens when I 
> tried converting a text item originally from BookShare.
> gtts-cli -o making-of-the-president-1968.txt google.mp3
> gtts.tts - WARNING - Unable to get language list: 'NoneType' object is not 
> subscriptable
> Usage: gtts-cli [OPTIONS] <text>
>
> Error: Unable to find token seed! Did https://translate.google.com change?
> Back again live. I hope I had the sequence correct? Also, what about those 
> errors? Thanks so much in advance
> Chime
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

