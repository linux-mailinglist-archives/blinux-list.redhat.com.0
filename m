Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E9745E911
	for <lists+blinux-list@lfdr.de>; Fri, 26 Nov 2021 09:16:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637914617;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lGTuWrsAwWcJ5Mg/WDWktN5NZnY89pVo3PbY6GSCcWY=;
	b=ZEPSiXSVj1z2UrqJM7mX6q1AM+xExOhUBkfQOIpUBq09zqXKDukx1YZHZ4vGHHOJRlhB4r
	uD1lNyQV2gwUFD/ZOHcVZ99ydEDkBH3lCLYHmWsQ9PiiDnbaH56ksc1EBEdexC/0ApAHSA
	xPtqYkqGlezIrAPcrfIwbjE73U1HlWA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-8-Gbv2oIz0NsO7Y0qizgox_A-1; Fri, 26 Nov 2021 03:16:53 -0500
X-MC-Unique: Gbv2oIz0NsO7Y0qizgox_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EE3C1006AA0;
	Fri, 26 Nov 2021 08:16:49 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EA278196F8;
	Fri, 26 Nov 2021 08:16:44 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0FE2C4BB7C;
	Fri, 26 Nov 2021 08:16:27 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AQ8GB5b021747 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 26 Nov 2021 03:16:16 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A90FE404727A; Fri, 26 Nov 2021 08:16:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A512D4047272
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:16:11 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8BCEA85A5B5
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:16:11 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-443-ItmQNcWxP52mIkEr29eGtA-1; Fri, 26 Nov 2021 03:16:07 -0500
X-MC-Unique: ItmQNcWxP52mIkEr29eGtA-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	044E52978DB8_1A097C3B
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:16:03 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
	AFAF7297637C_1A097C2F
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 08:16:02 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id 8613F22E0A
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 10:16:02 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id adRsNT_iytZd for <blinux-list@redhat.com>;
	Fri, 26 Nov 2021 10:16:02 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Fri, 26 Nov 2021 10:16:02 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1mqWOn-0004Bz-V2
	for blinux-list@redhat.com; Fri, 26 Nov 2021 10:16:02 +0200
Date: Fri, 26 Nov 2021 10:16:01 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <Pine.LNX.4.64.2111251423530.4138651@server2.shellworld.net>
Message-ID: <alpine.DEB.2.21.1.2111261013440.16055@willempc.meraka.csir.co.za>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
	<Pine.LNX.4.64.2111251423530.4138651@server2.shellworld.net>
User-Agent: Alpine 2.21.1 (DEB 211 2017-05-04)
MIME-Version: 1.0
X-SASI-RCODE: 200
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Who ever this is,
Yes, ebook-convert is the command line tool which is part of calibre that 
can be used for the conversions.
Regards, Willem


On Thu, 25 Nov 2021, Linux for blind general discussion wrote:

> Question?
> There is an edition of clibre that works from the command line only?
>
>
>
> On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>
>> Hi,
>> I have not read the full thread, but here goes.
>> Install calibre, then use ebook-convert epubfile.epub plaintextfile.txt
>> for the most basic form.
>> There also is epr, a console-based epub reader.
>> pandoc also will do the basic epub to txt conversion for you.
>> FWIW, Willem
>> 
>> 
>> On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>>
>>>  Hi All.
>>>
>>>  Personally, I like Unoconv.
>>>
>>>  25.11.21 17:47, Linux for blind general discussion ????????:
>>> >  I don't know of any tools specifically for ePub... but I recently
>>> >  found out ePubs are just zip archives with most of the content stored
>>> >  as html files and some metadata files used by ePub readers.
>>> > >  Also, I haven't used it, but I've heard others describe pandoc as the
>>> >  anything to anything else of document conversion.
>>> > >  _______________________________________________
>>> >  Blinux-list mailing list
>>> >  Blinux-list@redhat.com
>>> >  https://listman.redhat.com/mailman/listinfo/blinux-list
>>> >
>>>  _______________________________________________
>>>  Blinux-list mailing list
>>>  Blinux-list@redhat.com
>>>  https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

