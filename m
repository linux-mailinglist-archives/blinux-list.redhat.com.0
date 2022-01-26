Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C1749D4B9
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 22:52:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643233954;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Vo4D/TMA50Cz9Uy/IcN/GwgUgHJp1siN57nvCguGy0=;
	b=X8+1aNu2fr7Q92R+5gN7UoqCDWB00LOOsdbiKs5Wsv0b7CHncxSN2Hy9yFhGfSQl3kjJSd
	Lx2J/tLMGRORG1l7xLT5xjLAIWORvJ4TXQUxMJit9w8i38wYev5eeZE15EZVzHCQe367By
	IjRjyYHMtN3Wa7QJjZVJDELQ3HbBvKo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-3-J2gjQ3VsN3-bLMZuZLhC0A-1; Wed, 26 Jan 2022 16:52:31 -0500
X-MC-Unique: J2gjQ3VsN3-bLMZuZLhC0A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6CB185302A;
	Wed, 26 Jan 2022 21:52:27 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 063F85DF4B;
	Wed, 26 Jan 2022 21:52:27 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4A2C4BB7C;
	Wed, 26 Jan 2022 21:52:25 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QLqKRt029122 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 16:52:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F3139417E47; Wed, 26 Jan 2022 21:52:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFBBB400F39
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:52:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DB4EF803D66
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 21:52:19 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-564-ySoC0_AgNgOs27ZGEjoApA-1; Wed, 26 Jan 2022 16:52:17 -0500
X-MC-Unique: ySoC0_AgNgOs27ZGEjoApA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id AD44B6201AD; Wed, 26 Jan 2022 21:52:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id AC69F6200FA
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 16:52:16 -0500 (EST)
Date: Wed, 26 Jan 2022 16:52:16 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I understand.
That being said, the audiophile in me cannot resist pointing out that 
pronunciation abilities of tts are of far less quality than those 
provided by many actual screen readers, at least the ones I have 
used...which   does not include any for Linux.
I have a running gag with a friend  who uses amazon kindle.
If the speech source cannot pronounce the name of Harry Potter character
  Ron weasley, it is as articulate as a troll, smiles.



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> Hi Karen: Actually, yes I already have an mp3 of the same book, but this was 
> an experiment so I could judge the sound quality-and-compare with other 
> audio. There actually was 1 book which was only available in text, so that 
> does happen.
> Chime
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

