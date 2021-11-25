Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FC545E0FB
	for <lists+blinux-list@lfdr.de>; Thu, 25 Nov 2021 20:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637868547;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=dCiUMyUD7MzwddAaRqu/7nZCAidGXDS5FJVC6mmxF8k=;
	b=FJptVPMNWoU/MFqbNXAUfJ33ts53N82mYyhB52zhpadWPE3jhQKkibZUBHmSgNsnvePJZ6
	LMIiQYZRAwzzuT/iXGrfwuY0EuvlNdBFqoiglUMKKMxPgne64CzITpqtYqoOxRgB4pthJd
	cSVmn+hGsuyPBec8q63tJ9nooq7mrGc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-278-qKQlzLTgP3ClAYvga5K20Q-1; Thu, 25 Nov 2021 14:29:03 -0500
X-MC-Unique: qKQlzLTgP3ClAYvga5K20Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 472811018722;
	Thu, 25 Nov 2021 19:29:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0799C5D9CA;
	Thu, 25 Nov 2021 19:29:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 023064BB7C;
	Thu, 25 Nov 2021 19:28:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1APJOxsv030622 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 25 Nov 2021 14:24:59 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 958E0400DFBC; Thu, 25 Nov 2021 19:24:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90E694010E9E
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:24:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78C5080122B
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 19:24:59 +0000 (UTC)
Received: from server2.shellworld.net (server2.shellworld.net
	[66.172.12.120]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-590--N_58P4VPneI3EV0N3N1dA-1; Thu, 25 Nov 2021 14:24:57 -0500
X-MC-Unique: -N_58P4VPneI3EV0N3N1dA-1
Received: by server2.shellworld.net (Postfix, from userid 1005)
	id BF6AC620C59; Thu, 25 Nov 2021 19:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by server2.shellworld.net (Postfix) with ESMTP id BAE0D620210
	for <blinux-list@redhat.com>; Thu, 25 Nov 2021 14:24:56 -0500 (EST)
Date: Thu, 25 Nov 2021 14:24:56 -0500 (EST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
Message-ID: <Pine.LNX.4.64.2111251423530.4138651@server2.shellworld.net>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: MULTIPART/MIXED;
	BOUNDARY="-1404930036-113405608-1637868296=:4138651"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
---1404930036-113405608-1637868296=:4138651
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Question?
There is an edition of clibre that works from the command line only?



On Thu, 25 Nov 2021, Linux for blind general discussion wrote:

> Hi,
> I have not read the full thread, but here goes.
> Install calibre, then use ebook-convert epubfile.epub plaintextfile.txt
> for the most basic form.
> There also is epr, a console-based epub reader.
> pandoc also will do the basic epub to txt conversion for you.
> FWIW, Willem
>
>
> On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>
>>  Hi All.
>>
>>  Personally, I like Unoconv.
>>
>>  25.11.21 17:47, Linux for blind general discussion =D0=BF=D0=B8=D1=88=
=D0=B5:
>> >  I don't know of any tools specifically for ePub... but I recently
>> >  found out ePubs are just zip archives with most of the content stored
>> >  as html files and some metadata files used by ePub readers.
>> >=20
>> >  Also, I haven't used it, but I've heard others describe pandoc as the
>> >  anything to anything else of document conversion.
>> >=20
>> >  _______________________________________________
>> >  Blinux-list mailing list
>> >  Blinux-list@redhat.com
>> >  https://listman.redhat.com/mailman/listinfo/blinux-list
>> >=20
>>
>>  _______________________________________________
>>  Blinux-list mailing list
>>  Blinux-list@redhat.com
>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>
---1404930036-113405608-1637868296=:4138651
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
---1404930036-113405608-1637868296=:4138651--

