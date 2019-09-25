Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BC1BE1BA
	for <lists+blinux-list@lfdr.de>; Wed, 25 Sep 2019 17:52:48 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 01901308AA11;
	Wed, 25 Sep 2019 15:52:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6667E600C8;
	Wed, 25 Sep 2019 15:52:46 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id A4F6118005A0;
	Wed, 25 Sep 2019 15:52:44 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x8PFqcPZ022247 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 25 Sep 2019 11:52:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 89E9D60C5D; Wed, 25 Sep 2019 15:52:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx18.extmail.prod.ext.phx2.redhat.com
	[10.5.110.47])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8395060BF1
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:52:36 +0000 (UTC)
Received: from olive.jabatus.com (olive.jabatus.com [109.234.164.45])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 1406A30A7B89
	for <blinux-list@redhat.com>; Wed, 25 Sep 2019 15:52:34 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.002, required 5, autolearn=disabled, SPF_HELO_NONE 0.00,
	SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 7F99810043F.AC399
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=CHOS6k/NU4bxXS0uIkArye+pSu6pLWbhlCwmLy0kvwI=;
	b=NQw7GLOQIryVcQcT2SLbZA8/it
	nj0U5ucl0XSrewt5tE+5bMpwWNRhrOce6vVmMeDBzHRIy/aMCqtnrf10KXlJf0DtavE7Dp9VgJ6CK
	xC5DBKk4tbGt4YwQmiTb+Ol8HrItctBEf3hoH2VtO+U8sl2tcgJOBMOf3pj6oQyxqtDM=; 
Subject: Re: grub problem
To: blinux-list@redhat.com
References: <CAOdwYiRQXsy_kj-6sQGY81uGM+SQUrEpt-drM6=w-EqNnX2W0Q@mail.gmail.com>
	<3fcbb1b0-8e9f-bd2d-f222-07320b9b98b2@slint.fr>
	<CAO2sX33rqU3LZ-DDhk9e4icPFCe_2RNfM3P-gYbSE2_P3FWscg@mail.gmail.com>
	<CAOdwYiQb4UzzwnEGwgxz8y-LVQFf5bvRO9qD8MFe6wHS1dbTvA@mail.gmail.com>
	<989ae4bf-dd95-9c80-a903-4a715106bb53@slint.fr>
	<CAOdwYiRqBvEe4cQA36=Tdfhy06Zx=AU+D2_PhBqN3A++DeDLpg@mail.gmail.com>
Message-ID: <498e4212-5f45-edb0-b1a6-ec289b91d12c@slint.fr>
Date: Wed, 25 Sep 2019 17:52:31 +0200
MIME-Version: 1.0
In-Reply-To: <CAOdwYiRqBvEe4cQA36=Tdfhy06Zx=AU+D2_PhBqN3A++DeDLpg@mail.gmail.com>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - fox.o2switch.net
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - slint.fr
X-Get-Message-Sender-Via: fox.o2switch.net: authenticated_id: didier@slint.fr
X-Authenticated-Sender: fox.o2switch.net: didier@slint.fr
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Greylist: Delayed for 68:04:35 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.47]); Wed, 25 Sep 2019 15:52:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]);
	Wed, 25 Sep 2019 15:52:34 +0000 (UTC) for IP:'109.234.164.45'
	DOMAIN:'olive.jabatus.com' HELO:'olive.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.164.45 olive.jabatus.com 109.234.164.45
	olive.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.47
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]); Wed, 25 Sep 2019 15:52:47 +0000 (UTC)

My assumption would be that your machine is set to boot
in EFI mode, not Legacy, thus it doesn't try to boot using
an MBR but looks for an EFI image in an EFI System Partition
and find only the Windows one.

Was Windows installed in EFI mode?

Best,

Didier

On 25/09/2019 17:14, Linux for blind general discussion wrote:
> latest version of debian.
> 
> 
> 2019-09-25 17:07 GMT+02:00, Linux for blind general discussion
> <blinux-list@redhat.com>:
>> Which distribution and version of the distribution?
>>
>> On 25/09/2019 17:00, Linux for blind general discussion wrote:
>>> I installed windows first.
>>> I got question if I wanted to write grub to mbr. I answered yes.
>>>
>>>
>>> 2019-09-25 16:38 GMT+02:00, Linux for blind general discussion
>>> <blinux-list@redhat.com>:
>>>> Yeah, I think it's been more than a decade since I last setup a dual
>>>> boot, but everything I've ever read on the subject says Windows
>>>> doesn't play nice with other OSes so you should install Windows first
>>>> to ensure you don't end up with a boot loader that ignores anything
>>>> that isn't Windows, and I've never read of Windows fixing this bad
>>>> behavior.
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
> 
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
