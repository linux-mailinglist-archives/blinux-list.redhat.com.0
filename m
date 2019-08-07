Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B0D8519D
	for <lists+blinux-list@lfdr.de>; Wed,  7 Aug 2019 19:04:38 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CE3D13078856;
	Wed,  7 Aug 2019 17:04:36 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5E37B5C258;
	Wed,  7 Aug 2019 17:04:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 77C7618005B9;
	Wed,  7 Aug 2019 17:04:35 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x77Gwbhg024464 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Aug 2019 12:58:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 8B524F6E0; Wed,  7 Aug 2019 16:58:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 84669194B6
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 16:58:34 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com
	[209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 05EAC315C011
	for <blinux-list@redhat.com>; Wed,  7 Aug 2019 16:58:34 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id a93so41633617pla.7
	for <blinux-list@redhat.com>; Wed, 07 Aug 2019 09:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=y7pbE/L8bAcfoKcP87+zM1o8dJIe1yv1xv2KQyLz52g=;
	b=BzF5EXcYbzMY/O20WeJhze/LD4+xeVThc54LDUtIOluxBqDuCqaClA5SVyTR2gt4o4
	zD3KiPGPw6cqyRu2aTAR/jYT1mWLaR7nzAjJs6uu3bDPV8BAAbaATpir/S1HNrf3PIDU
	smK9BG4R7okS1h/rpgNP1AytYIDyI7GV0eFs4iYeJmMrfaAp/zJutm+9ubPtdbl8hndY
	JD7HUWPxVOPyd03ruazrAwYNpAjgnzrCZD6eVqpzlSE3Xm9Z6CZeEn6bNKgysiJ6GE3C
	+GYOhsGZUaQKMTBKACiVPWJccLTZgN5G+/6785t9+RBixBOa4OCHhhe0ijEUMzKub7UV
	m2Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=y7pbE/L8bAcfoKcP87+zM1o8dJIe1yv1xv2KQyLz52g=;
	b=XesiQ1eSR1eBXnlTcoEQrQXc+MPMHLGysSXh3YiYOcnddkxw9xwe5myHE1RzPTUBMu
	Xse/yATdKYK2tcbYcgOLPrSiCbfgxC3VytH+Ej/3JSe+Ui6JEeNXDGYvtNf3pw4dyULB
	r4LyR1aNEOp4f+Z19+jOnPqPNQR3LXP3zXSaWRNkZEcZI5S1BMUypRXIWW34Q8rH1J02
	xUwyq7Nm0BAGbLE64umJ3U6RASM/l9hFIgMatqirLiiQLWbfYHNfnQPX/NktEEQMbDB4
	c4p7KpyO1bEzYFYEipUL7ebbuVGfuI5skYme1gNoNm7sgtuSVv7KcvA2NIDaBDrt8lA/
	wXGw==
X-Gm-Message-State: APjAAAXeLULo3F3MV5cY4Zz1pRFotR1jJudFwRN0/wywz2CO1xItDDq2
	0oENYNow9C1SiRlUtF9qYfywyarH
X-Google-Smtp-Source: APXvYqy38oWg7MHcwiDl6du7iV/8i2+Q+gmFSXTj/f5ML10wYXwPvjtewP5RJ/MSNHBsMVBK9sMnBg==
X-Received: by 2002:a17:90a:9386:: with SMTP id q6mr833808pjo.81.1565197112924;
	Wed, 07 Aug 2019 09:58:32 -0700 (PDT)
Received: from [0.0.0.0] ([67.230.224.68])
	by smtp.gmail.com with ESMTPSA id u16sm531510pjb.2.2019.08.07.09.58.31
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 Aug 2019 09:58:32 -0700 (PDT)
Message-ID: <20190807.185726.951.4@[0.0.0.0]>
To: blinux-list@redhat.com
Subject: Re: No F Key Boot Menu
Date: Wed, 07 Aug 2019 11:57:26 -0700
MIME-Version: 1.0
In-Reply-To: <6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
	<b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
	<20190806.012851.270.6@[0.0.0.0]>
	<6d9c88f5-439c-0859-c5b5-2da72c16e7d7@GMAIL.COM>
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.41]);
	Wed, 07 Aug 2019 16:58:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Wed, 07 Aug 2019 16:58:34 +0000 (UTC) for IP:'209.85.214.182'
	DOMAIN:'mail-pl1-f182.google.com'
	HELO:'mail-pl1-f182.google.com' FROM:'captinlogic@gmail.com'
	RCPT:''
X-RedHat-Spam-Score: -0.099  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, SPF_HELO_NONE,
	SPF_PASS) 209.85.214.182 mail-pl1-f182.google.com 209.85.214.182
	mail-pl1-f182.google.com <captinlogic@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x77Gwbhg024464
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3467208485790211098=="
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Wed, 07 Aug 2019 17:04:37 +0000 (UTC)

--===============3467208485790211098==
Content-Type: text/plain
Content-Transfer-Encoding: 8bit

I ended up memorizing the key presses to set boot order in the bios in the absence of a boot menu. Sigh. So many left arrows, so many down arros, etc.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Wed, 7 Aug 2019 12:08:49 +0100
Subject: Re: No F Key Boot Menu

> So I'll leap in here. I've been trying to get my Dell Inspiron to boot 
from a Linux stick. No boot menu anywhere, all the articles say oh, you 
have to do this and this and that, but......will this actually work?

On 06/08/2019 02:28, Linux for blind general discussion wrote:
> I think I found the answer:
> • Fast Boot
> On/Off
> Enabling fast boot will make the initial post/boot slightly faster by bypassing the boot
> device check and using last boot HDD.
> Default: On
> So now I just need some eyeballs to help me get in there and turn that off.
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Mon, 5 Aug 2019 20:28:41 -0500
> Subject: Re: No F Key Boot Menu
>
>> Yes, on my HP Envy, if I hit the F2 key at startup, I can select from a
>> list of boot devices. I do this when I'm installing a new OS from my USB
>> stick.
>>
>>
>> On 8/5/19 4:27 PM, Linux for blind general discussion wrote:
>>> Getting into the bios isn't the problem. It's selecting a device to boot from which is.
>>>
>>> ----- Original Message -----
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>> Date: Mon, 5 Aug 2019 17:21:14 -0400
>>> Subject: Re: No F Key Boot Menu
>>>
>>>> The delete key can get you into bios on some systems too.
>>>>
>>>> On Mon, 5 Aug 2019, Linux for blind general discussion wrote:
>>>>
>>>>> Date: Mon, 5 Aug 2019 15:59:41
>>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>>> To: blinux-list@redhat.com
>>>>> Subject: Re: No F Key Boot Menu
>>>>>
>>>>> Often the escape key can be used to bring up a boot menu. That being
>>>>> said, there's usually an option in bios to set more than 1 boot drive,
>>>>> such that if the 1st 1 doesn't contain bootable media, it'll move onto
>>>>> the 2nd 1, etc.
>>>>>
>>>>> On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>>>> My bios:
>>>>>> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
>>>>>> UEFI: American Megatrends Inc. 2.08 06/28/2019
>>>>>> does not seem to have a function whereby you can select a device to boot
>>>>>> from using one of the function keys. Instead, one must physically go into
>>>>>> the bios and change boot order, if, for example, you wish to boot from a
>>>>>> flash drive to install an OS. And if that flash drive is subsequently
>>>>>> removed, the system will not boot, until you go into the bios and change the
>>>>>> boot order, again.
>>>>>> My question: is this normal bios behavior these days, or is something wrong
>>>>>> in my particular implementation. I turned off the secure boot function in
>>>>>> there. Would turning that on fix this? What else might I look for in the
>>>>>> bios to either (a) allow for falling back on different devices should one be
>>>>>> removed or (b) to allow the function key boot menu found in previous bios
>>>>>> implementations.
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>
>>>> -- 
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>> -- 
>> Christopher (CJ)
>> Chaltain at Gmail
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list


--===============3467208485790211098==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
--===============3467208485790211098==--
