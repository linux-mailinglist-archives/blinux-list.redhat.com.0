Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BFF4F9AD4
	for <lists+blinux-list@lfdr.de>; Fri,  8 Apr 2022 18:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1649435982;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=3Gj27Oc6Hy31G82y3BkVgkVeCJOYaS5Vc37deD9kwLU=;
	b=alIytSPeZtUWdZLGxcPJg/AB6RAg9SBn5vqF5q6d1elnAYVYzOhtutEirE46TzfhVlqPiF
	K61rbZIoCmbKXbwsPIC6RYZgfvvviVM4GvfXJaBjJgoavS/tLCaDA5TIin9Hw9YryftID7
	C9XaV89wmnuOJCOAclWFEynjhPDiJno=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-340-MaoI_r_gN_GmB_vNfl3GpQ-1; Fri, 08 Apr 2022 12:39:38 -0400
X-MC-Unique: MaoI_r_gN_GmB_vNfl3GpQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55676380393A;
	Fri,  8 Apr 2022 16:39:36 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 74BF340D296B;
	Fri,  8 Apr 2022 16:39:30 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id D579E194034C;
	Fri,  8 Apr 2022 16:39:27 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Fri, 8 Apr 2022 18:39:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: Good Orca friendly terminal file manager?
To: blinux-list@redhat.com
References: <mailman.7330.1649379323.111201.blinux-list@redhat.com>
 <mailman.7199.1649379978.111209.blinux-list@redhat.com>
 <mailman.7337.1649381932.111201.blinux-list@redhat.com>
 <mailman.7255.1649408454.111203.blinux-list@redhat.com>
 <mailman.7339.1649419799.111204.blinux-list@redhat.com>
In-Reply-To: <mailman.7339.1649419799.111204.blinux-list@redhat.com>
Message-ID: <mailman.7485.1649435967.111202.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Howdy,

you can install an setup.py like the following:
sudo ./setup.py install

its fully modular and plugin driven. almost anything on screen is 
configurable.
AFAIR, the last thing i worked on was tab completion. not sure if i 
merged this yet.

the global settings are located at
/etc/dragonfm/


cheers chrys

Am 08.04.22 um 14:09 schrieb Linux for blind general discussion:
> I'll give that a shot but how useable is that in a terminal? Currently seeing how NNN works, which is very good.
>
> I do want to try dragonfm out however but can't seem to install it, if I
> run python3 dragonfm from the src dir, missing main. setup.py does
> nothing?
>
> On Fri, Apr 08, 2022 at 10:59:37AM +0200, Linux for blind general discussion wrote:
>> Howdy,
>>
>> i created some for F123 years back.
>> maybe you wanna give a try:
>> https://github.com/chrys87/dragonFM
>>
>> cheers chrys
>>
>> Am 08.04.22 um 03:38 schrieb Linux for blind general discussion:
>>> A long thread in debian-user where a few people think mc stinks since a
>>> user can't choose what editor they want to use inside mc.  There's pilot
>>> and maybe a graphical version of pilot and lfn and fdclone and inside
>>> emacs dired.
>>>
>>> On Fri, 8 Apr 2022, Linux for blind general discussion wrote:
>>>
>>>> Aside from ls, mv, cp, etc. the only console file manager I'm aware of
>>>> is midnight commander, which is provided by the mc package in Debian
>>>> and presumably other distros as well. Only ever used it in the
>>>> console, so I can't say how well it works in a terminal emulator with
>>>> Orca.
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

