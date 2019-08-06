Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 437DC8292C
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2019 03:29:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E7AE0305883C;
	Tue,  6 Aug 2019 01:29:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 862FE60C47;
	Tue,  6 Aug 2019 01:28:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B7C301800204;
	Tue,  6 Aug 2019 01:28:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
	[10.5.11.23])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x761Slv4014470 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 5 Aug 2019 21:28:47 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 24F5E19C78; Tue,  6 Aug 2019 01:28:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx20.extmail.prod.ext.phx2.redhat.com
	[10.5.110.49])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CBFE19C5B
	for <blinux-list@redhat.com>; Tue,  6 Aug 2019 01:28:44 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E462230BCB87
	for <blinux-list@redhat.com>; Tue,  6 Aug 2019 01:28:43 +0000 (UTC)
Received: by mail-ot1-f43.google.com with SMTP id z23so60180941ote.13
	for <blinux-list@redhat.com>; Mon, 05 Aug 2019 18:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=sHkkka5aLbYYEBR2z/N0h9TJM7vjbEgQWCmsZKCTwnw=;
	b=nijh1VWxTMcWjwrDT2RuhyTYxXq3HN3Axwjg3VQvwzWJyYKtmpABFNV6llxue6ttI7
	vWTo80ySbs9scL5YzTIuQ0gNN7hnJOaGN0GvsiSXUD2tvR25quMbToM1UIhX0uPusWqA
	b/PSjfeJgeO5wgQjuxOcqImIBhoaILJG+HIENBukwEnz3JEn+ne9MAp2tFXWKcqZUxAl
	tRNbGjVk5+iLvn+zFgw+p8ajIi7O1AWwvfyftBA/5cARrPsPncKPeyzQLnPCMZTYe5lg
	iU0lBMIVaqQHBSaUEypD8mn6D2hrKlYxx0DLapwCQ6IRKpAOmC+Mwj++8aQZb8hsNLBt
	RpCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=sHkkka5aLbYYEBR2z/N0h9TJM7vjbEgQWCmsZKCTwnw=;
	b=eM5pUQRBARY7JPOv0SJy0cpZnyU3tt4ZS4Ibg9nLNHmtqtltWi12S8iK1x/iQ+ZraT
	BnOuXNMz3Qazjtvzj5m+DZhmNLZT5nAsxISBg2xRTY7mzDXKmm0IRFnMCi6nFQwErxNc
	5D7hIOJq5cRNlPP/lti31ISDLLNtCCl6w5zbSzNuyvU/+vYqasJnC4g1mg2TOonXHzXg
	pvShpSsqeTjdgE4mA/69uYHe+/vyp66euhq5Kzf6gQHcIO86Yugydl0tfw1qhlmXJIQV
	7LulIlUn+S7E6EbyUNr3l2fsY2l5ISUO+IaFh9ize5SS+/vFJJZ++3xs4koCWovp5kxb
	zowQ==
X-Gm-Message-State: APjAAAWzjIWRaPSvQsYbfNK0o6NjaYCo4TBs7bAwDUGzDD1jNrsYopb/
	go3ZUVPwxq0Zk9Wid2tnSnZkE387
X-Google-Smtp-Source: APXvYqwRKi7ImBl1tJopTJX1c69Wa8jRFzEyYAxmHXfSdMMPm6nSA3cJ+L3DWVmaorTuHEfbW9D11g==
X-Received: by 2002:a05:6830:17d2:: with SMTP id
	p18mr701739ota.113.1565054923221; 
	Mon, 05 Aug 2019 18:28:43 -0700 (PDT)
Received: from [192.168.1.11] (74-194-137-49.gtwncmta01.res.dyn.suddenlink.net.
	[74.194.137.49]) by smtp.gmail.com with ESMTPSA id
	i63sm30004074oih.18.2019.08.05.18.28.42 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 05 Aug 2019 18:28:42 -0700 (PDT)
Subject: Re: No F Key Boot Menu
To: blinux-list@redhat.com
References: <20190805.195033.561.2@0.0.0.0>
	<CAM+Q2c6km7FeRzd3W4VXNv904-CJbzUd0zeYA3_trQE-==C4Xg@mail.gmail.com>
	<alpine.NEB.2.21.1908051720430.2278@panix1.panix.com>
	<20190805.212710.331.4@[0.0.0.0]>
Message-ID: <b8453ab0-c221-daf9-6868-8cc121e6c843@gmail.com>
Date: Mon, 5 Aug 2019 20:28:41 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190805.212710.331.4@[0.0.0.0]>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.49]);
	Tue, 06 Aug 2019 01:28:44 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]);
	Tue, 06 Aug 2019 01:28:44 +0000 (UTC) for IP:'209.85.210.43'
	DOMAIN:'mail-ot1-f43.google.com' HELO:'mail-ot1-f43.google.com'
	FROM:'chaltain@gmail.com' RCPT:''
X-RedHat-Spam-Score: -0.1  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_FROM, RCVD_IN_DNSWL_NONE, RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.210.43 mail-ot1-f43.google.com 209.85.210.43
	mail-ot1-f43.google.com <chaltain@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.49
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Tue, 06 Aug 2019 01:29:03 +0000 (UTC)

Yes, on my HP Envy, if I hit the F2 key at startup, I can select from a 
list of boot devices. I do this when I'm installing a new OS from my USB 
stick.


On 8/5/19 4:27 PM, Linux for blind general discussion wrote:
> Getting into the bios isn't the problem. It's selecting a device to boot from which is.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Date: Mon, 5 Aug 2019 17:21:14 -0400
> Subject: Re: No F Key Boot Menu
>
>> The delete key can get you into bios on some systems too.
>>
>> On Mon, 5 Aug 2019, Linux for blind general discussion wrote:
>>
>>> Date: Mon, 5 Aug 2019 15:59:41
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: blinux-list@redhat.com
>>> Subject: Re: No F Key Boot Menu
>>>
>>> Often the escape key can be used to bring up a boot menu. That being
>>> said, there's usually an option in bios to set more than 1 boot drive,
>>> such that if the 1st 1 doesn't contain bootable media, it'll move onto
>>> the 2nd 1, etc.
>>>
>>> On 8/5/19, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>> My bios:
>>>> Board: EVGA INTERNATIONAL CO.,LTD 131-HE-E995 1.0
>>>> UEFI: American Megatrends Inc. 2.08 06/28/2019
>>>> does not seem to have a function whereby you can select a device to boot
>>>> from using one of the function keys. Instead, one must physically go into
>>>> the bios and change boot order, if, for example, you wish to boot from a
>>>> flash drive to install an OS. And if that flash drive is subsequently
>>>> removed, the system will not boot, until you go into the bios and change the
>>>> boot order, again.
>>>> My question: is this normal bios behavior these days, or is something wrong
>>>> in my particular implementation. I turned off the secure boot function in
>>>> there. Would turning that on fix this? What else might I look for in the
>>>> bios to either (a) allow for falling back on different devices should one be
>>>> removed or (b) to allow the function key boot menu found in previous bios
>>>> implementations.
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>
>>>
>> -- 
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

-- 
Christopher (CJ)
Chaltain at Gmail

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
