Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C864971B4
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 14:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642945543;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wJaXVHB2N8SIM2Zh2F11nL4aMKCg856IVSvZnv4XaBo=;
	b=Hcvx6+JP3UAbD/eQi9wZ4l11LLgf3zoXhQkygAhzFnR/IEKiGXVFo44MwGeoZ9mwD3GauZ
	oNZvuC/IJ3e4OVN/05hHBQS15ar/mEfC7/Qda/DuASyuSYh6xoDQH+uzYtW1Nr/XnXuOxY
	8TANVHDrAyBF0rPlfBQfQsVP2D+uNPA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-617-zN9K77LiNOqA1V49WzsWZg-1; Sun, 23 Jan 2022 08:45:40 -0500
X-MC-Unique: zN9K77LiNOqA1V49WzsWZg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 627E5363A5;
	Sun, 23 Jan 2022 13:45:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 464B07B6DE;
	Sun, 23 Jan 2022 13:45:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 00D701809C88;
	Sun, 23 Jan 2022 13:45:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NDjURP006276 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 08:45:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D55BA1417201; Sun, 23 Jan 2022 13:45:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D12A11417200
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 13:45:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BABAD805BFC
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 13:45:30 +0000 (UTC)
Received: from fgw20-4.mail.saunalahti.fi (fgw20-4.mail.saunalahti.fi
	[62.142.5.107]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-261-sNPyUcNoPLud0oxpv828xA-1; Sun, 23 Jan 2022 08:45:28 -0500
X-MC-Unique: sNPyUcNoPLud0oxpv828xA-1
Received: from nkl.local (81-197-9-41.elisa-laajakaista.fi [81.197.9.41])
	by fgw20.mail.saunalahti.fi (Halon) with SMTP
	id b8141194-7c52-11ec-8d6d-005056bd6ce9;
	Sun, 23 Jan 2022 15:45:26 +0200 (EET)
Received: (qmail 29572 invoked from network); 23 Jan 2022 13:45:25 -0000
Received: from localhost (127.0.0.1)
	by nkl.local with SMTP; 23 Jan 2022 13:45:25 -0000
Date: Sun, 23 Jan 2022 15:45:25 +0200 (EET)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: web page problem
In-Reply-To: <2bbfbfc9-f8d3-9c36-5b5-2de9e3f2fb3e@panix.com>
Message-ID: <alpine.DEB.2.21.2201231537250.9928@nkl.local>
References: <2ca4507f-ab68-76a0-8bdf-56502d49fa4d@panix.com>
	<alpine.DEB.2.21.2201231136070.9928@nkl.local>
	<2bbfbfc9-f8d3-9c36-5b5-2de9e3f2fb3e@panix.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi

Try something like

wget --recursive --no-check-certificate -A 'Jenux-????.??.??-dual.iso' 
https://nashcentral.duckdns.org/projects/

on one line. This will download only the .iso file but replicates the 
directory structure including hostname. Add the '--no-directories' to get 
files to the current directory.


--no-check-certificate was included because site has expired certificate.



-- 
mr. M01510 & guide Loadstone-GPS  Lat: 62.38718, lon: 25.64672
hkp://wwwkeys.pgp.net B784D020 fp:0C1F6A76 DC9DDD58 33838B5D 0E769600 B7840D02
http://sokkona.arimo.info


  Linux for blind general discussion kirjoitti
> Subject: Re: web page problem
> Date: Sun, 23 Jan 2022 13:37:46
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> 
> I used wget -Abc
> https://nashcentral.duckdns.org/projects/Jenux-????.??.??-dual.iso
> and got an error 404 for my efforts.
>
>
> On Sun, 23 Jan 2022, Linux for blind general discussion wrote:
>
>> Hi
>>
>> If the file is listed in some html file you can use wget with
>> -A
>> or
>> --accept-regex
>> parameters if there is certain pattern to recognize the file.
>>
>>
>>
>>
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

