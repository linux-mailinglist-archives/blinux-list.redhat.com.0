Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A358E45FE08
	for <lists+blinux-list@lfdr.de>; Sat, 27 Nov 2021 11:10:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638007800;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=e/ysS1UYqVJBWEh4OeFDLRGDFoiWHv/9OxzPZsdKxEM=;
	b=DEv+JkmY2GC01HSMjBD9jQDGxrWg8G/jkKgtuKczBVLiea42V5BDm+PBwAmRU7sySB9/NP
	1RWJNu7UN2lRxXdSRL1Aa3/dVgJcwAQikTX4+KKd746hYpKvVNdwVmEIidBdmLbjLTppDQ
	kZjrvo6uF1x0Vv8Z+LnuN4CBjCPxgws=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-541-NpwcCo6pN3SqCdcvztrwtQ-1; Sat, 27 Nov 2021 05:09:57 -0500
X-MC-Unique: NpwcCo6pN3SqCdcvztrwtQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EE9110066F3;
	Sat, 27 Nov 2021 10:09:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E6E910001AF;
	Sat, 27 Nov 2021 10:09:50 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0EFAB4BB7C;
	Sat, 27 Nov 2021 10:09:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1ARA9RHe009948 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 05:09:31 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id E8EC051E5; Sat, 27 Nov 2021 10:09:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E2DBC51E3
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 10:09:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4F53A1066558
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 10:09:21 +0000 (UTC)
Received: from pta-smg1.csir.co.za (pta-smg1.csir.co.za [146.64.81.180]) by
	relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-495-FxE_-cd4N1aZV0V7ovWhDQ-1; Sat, 27 Nov 2021 05:09:18 -0500
X-MC-Unique: FxE_-cd4N1aZV0V7ovWhDQ-1
Received: from pta-smg1.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	62F602978CCB_1A203CAB
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 10:09:14 +0000 (GMT)
Received: from marge.meraka.csir.co.za (marge.meraka.csir.co.za [146.64.28.1])
	by pta-smg1.csir.co.za (Sophos Email Appliance) with ESMTP id
	003982976230_1A203CAF
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 10:09:14 +0000 (GMT)
Received: from marge.meraka.csir.co.za (localhost [127.0.0.1])
	by marge.meraka.csir.co.za (Postfix) with ESMTP id E99682428D
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 12:09:13 +0200 (SAST)
X-Virus-Scanned: amavisd-new at meraka.org.za
Received: from marge.meraka.csir.co.za ([127.0.0.1])
	by marge.meraka.csir.co.za (marge.meraka.csir.co.za [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id r0aos7b9Si1p for <blinux-list@redhat.com>;
	Sat, 27 Nov 2021 12:09:13 +0200 (SAST)
Received: from willempc.meraka.csir.co.za (unknown
	[IPv6:2001:4200:7000:3:7a2b:cbff:fe9d:7520])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by marge.meraka.csir.co.za (Postfix) with ESMTPS
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 12:09:13 +0200 (SAST)
Received: from [127.0.0.1] (helo=localhost)
	by willempc.meraka.csir.co.za with esmtp (Exim 4.90_1)
	(envelope-from <wvdwalt@csir.co.za>) id 1mqudt-0000wG-E4
	for blinux-list@redhat.com; Sat, 27 Nov 2021 12:09:13 +0200
Date: Sat, 27 Nov 2021 12:09:13 +0200 (SAST)
X-X-Sender: wvdwalt@willempc.meraka.csir.co.za
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Converting epubs to Plain-Text?
In-Reply-To: <Pine.LNX.4.64.2111261124440.101943@server2.shellworld.net>
Message-ID: <alpine.DEB.2.21.1.2111271204090.3373@willempc.meraka.csir.co.za>
References: <50d03b33-62e0-2c8-c14e-40b717301dfc@hubert-humphrey.com>
	<6dbbac09-3d17-0aac-ca28-4cef41d6c809@gmail.com>
	<946f985-aad-95dd-495-f3f69898f2e0@hubert-humphrey.com>
	<CAO2sX30nVe2xz0N_J-Xd7KutYNPjdc5V-endQZbYDK6JQ3TkZA@mail.gmail.com>
	<e9ca84ae-5e2e-41bb-4299-e947a79ce264@ukr.net>
	<alpine.DEB.2.21.1.2111252108070.3997@willempc.meraka.csir.co.za>
	<Pine.LNX.4.64.2111251423530.4138651@server2.shellworld.net>
	<alpine.DEB.2.21.1.2111261013440.16055@willempc.meraka.csir.co.za>
	<Pine.LNX.4.64.2111261019540.100465@server2.shellworld.net>
	<CAO2sX3117uGsFDHewvvip3eCLw96eW+WR3chkW9S9-Dmvq47ig@mail.gmail.com>
	<Pine.LNX.4.64.2111261124440.101943@server2.shellworld.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,
You do not need to have an X server running to use Calibre's 
ebook-convert.
What you cannot use, is the calibre epub editer as that is a graphical 
package.

You can use all features of the converter from the command line.
HTH,  Willem


On Fri, 26 Nov 2021, Linux for blind general discussion wrote:

> My specific interest is in calibre, as that is the program under discussion, 
> or one of them at least.
>
>
>
> On Fri, 26 Nov 2021, Linux for blind general discussion wrote:
>
>> Uh, I don't know about Caliber specifically, but there are plenty of
>> packages out there that include both a GUI and one or more CLI tools,
>> and such packages don't always have feature parity between what's
>> available in the GUI and what's available from the command line, but
>> I've never known a package including a GUI frontend preventing one
>> from running the command line components on a text-only console.
>> 
>> Granted, it's also common for a GUI Frontend to be a separate package
>> from the CLI tools it is a frontend for.
>> 
>> On 11/26/21, Linux for blind general discussion <blinux-list@redhat.com> 
>> wrote:
>>> the actual question is about calibre itself.
>>> One cannot run a command line tool if the entire package itself cannot be
>>> run  from the console if that  is a better question.
>>> 
>>> 
>>> 
>>> On Fri, 26 Nov 2021, Linux for blind general discussion wrote:
>>> 
>>>> Who ever this is,
>>>> Yes, ebook-convert is the command line tool which is part of calibre that
>>>> can
>>>> be used for the conversions.
>>>> Regards, Willem
>>>> 
>>>> 
>>>> On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>>>>
>>>>>  Question?
>>>>>  There is an edition of clibre that works from the command line only?
>>>>> 
>>>>> 
>>>>>
>>>>>  On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>>>>>
>>>>>>  Hi,
>>>>>>  I have not read the full thread, but here goes.
>>>>>>  Install calibre, then use ebook-convert epubfile.epub
>>>>>> plaintextfile.txt
>>>>>>  for the most basic form.
>>>>>>  There also is epr, a console-based epub reader.
>>>>>>  pandoc also will do the basic epub to txt conversion for you.
>>>>>>  FWIW, Willem
>>>>>> 
>>>>>>
>>>>>>  On Thu, 25 Nov 2021, Linux for blind general discussion wrote:
>>>>>>
>>>>>>>   Hi All.
>>>>>>>
>>>>>>>   Personally, I like Unoconv.
>>>>>>>
>>>>>>>   25.11.21 17:47, Linux for blind general discussion ????????:
>>>>>>>>   I don't know of any tools specifically for ePub... but I
>>>>>>>> recently
>>>>>>>>   found out ePubs are just zip archives with most of the content
>>>>>>>>   stored
>>>>>>>>   as html files and some metadata files used by ePub readers.
>>>>>>>>>   Also, I haven't used it, but I've heard others describe pandoc
>>>>>>>>> as
>>>>>>>>>   the
>>>>>>>>   anything to anything else of document conversion.
>>>>>>>>>   _______________________________________________
>>>>>>>>   Blinux-list mailing list
>>>>>>>>   Blinux-list@redhat.com
>>>>>>>>   https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>
>>>>>>>   _______________________________________________
>>>>>>>   Blinux-list mailing list
>>>>>>>   Blinux-list@redhat.com
>>>>>>>   https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> 
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>>> 
>>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
>> 
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

