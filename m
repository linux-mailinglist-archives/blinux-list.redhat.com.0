Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FFD549D562
	for <lists+blinux-list@lfdr.de>; Wed, 26 Jan 2022 23:23:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643235785;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=2poK2pKuOi00f5SqK0bKN6qCFcpzHyVRwVm/CrTB7gQ=;
	b=SPef2XKJZj201zhHeNKr3ItMkucM32mWyZ+t6x79UbuWnPZ2SzbjLh4i/+fs76gbjOJ7jR
	7TonakOjP8HnRsx4MT3QiQ8ckqtY3qWKlS87DZy8rtOXbFyMzit++VZAesNDqLi+dq1Pmt
	0okoAJ/5ScLbvOVCr/aK7OfGdyneHZ0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-659-Bq2ygcm2OpqIkHpWYl7gFQ-1; Wed, 26 Jan 2022 17:22:57 -0500
X-MC-Unique: Bq2ygcm2OpqIkHpWYl7gFQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F26FE83DD21;
	Wed, 26 Jan 2022 22:22:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4AFA34E2DB;
	Wed, 26 Jan 2022 22:22:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 849481809CB8;
	Wed, 26 Jan 2022 22:22:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20QMMcHZ031862 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 26 Jan 2022 17:22:39 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id DE20640885B0; Wed, 26 Jan 2022 22:22:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DA2C140885A1
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:22:38 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C09CF85A5A8
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 22:22:38 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-385-S22tnr90PYinBxFS0PYrEA-1; Wed, 26 Jan 2022 17:22:36 -0500
X-MC-Unique: S22tnr90PYinBxFS0PYrEA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id DDEF86201AD; Wed, 26 Jan 2022 22:22:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id D8E1F6200FA
	for <blinux-list@redhat.com>; Wed, 26 Jan 2022 17:22:35 -0500 (EST)
Date: Wed, 26 Jan 2022 17:22:35 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting text to mp3
In-Reply-To: <cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
Message-ID: <Pine.LNX.4.64.2201261716150.2109950@server2.shellworld.net>
References: <a8157072-a0db-10e0-0f8a-08bff05d9aef@seznam.cz>
	<YfGDHwxeIwHdYMsg@panix.com>
	<d1fa3e3c-9c3a-e3a3-6f40-febf93e94c46@seznam.cz>
	<20220126124056.239f2e2f@bigbox.attlocal.net>
	<CAO2sX33vHD5OWH3gN-pQ1HThebwFCrvGUTFdXf4rTi19e2NOWQ@mail.gmail.com>
	<cf56de9a-9035-bbe0-ef8c-1e9e6468e8c@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261620360.2109039@server2.shellworld.net>
	<571c96f3-44ae-eba3-bff9-39d1449e61d3@hubert-humphrey.com>
	<Pine.LNX.4.64.2201261646080.2109442@server2.shellworld.net>
	<cfcd28b0-26c2-77b8-fca9-b8a99955c092@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-489407958-1643235755=:2109950"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-489407958-1643235755=:2109950
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Kyle,
i do not consider my hardware decktalk provided via my reading edge to be=
=20
an example of text to speech.
By definition, and there are many, the term, which refers to taking=20
information in text format  and  rendering it aloud does not, speaking=20
personally,  equal pronunciation ease.
In fact one theory about this has to do with preserving the audiobook=20
market.
granted, as  was pointed out in a thread some time ago, I am not likely to=
=20
learn about Linux screen readers, no driver exists for my hardware speech,=
=20
and software synthesizer sources  currently do a number on my brain.
Karen



On Wed, 26 Jan 2022, Linux for blind general discussion wrote:

> That being said, the audiophile in me cannot resist pointing out that=20
> pronunciation abilities of tts are of far less quality than those provide=
d by=20
> many actual screen readers, at least the ones I have used...which=C2=A0=
=C2=A0 does=20
> not include any for Linux.
>
>
> That being said, the technofile in me cannot resist pointing out the fact=
=20
> that every screen reader for every OS uses nothing but TTS technology to =
read=20
> the screen. Well, I guess BeMyEyes doesn't, but it's not exactly a screen=
=20
> reader, unless you need the volunteer to read a screen for you.
>
> ~ Kyle
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-489407958-1643235755=:2109950
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-489407958-1643235755=:2109950--

