Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C78A96867DA
	for <lists+blinux-list@lfdr.de>; Wed,  1 Feb 2023 15:02:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1675260128;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6TolnZH6VoxjwyPFxn5tJkhdPpR+VH60RV0k/6GV+V0=;
	b=T9uHjaOKpeXDlBuLPcv+QWeMvDFcI3xMWiKxUOh7ysZ4+TDvhZevVcgkZkc/mnDcdZaRjl
	dX5gzII1rWR9pLZOcmhAoilAyEfkpCSeICgf5xN7ig2h7WgizQQV5YE4X6ovEHjPU7HWgU
	oxyrAS/Q1eWc53WD5i5UO8Kriu3tO8g=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-439-4B1z2M9VNBSWvghdhZO0KQ-1; Wed, 01 Feb 2023 09:01:54 -0500
X-MC-Unique: 4B1z2M9VNBSWvghdhZO0KQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 78FEA185A794;
	Wed,  1 Feb 2023 14:01:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 33611C15BAE;
	Wed,  1 Feb 2023 14:01:37 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id DEFB519465B7;
	Wed,  1 Feb 2023 14:01:36 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Wed, 1 Feb 2023 14:01:26 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: Strange Arch linux arm issue with espeakup
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.3734.1675257487.8172.blinux-list@redhat.com>
 <mailman.3559.1675259667.8173.blinux-list@redhat.com>
In-Reply-To: <mailman.3559.1675259667.8173.blinux-list@redhat.com>
Message-ID: <mailman.3775.1675260096.8171.blinux-list@redhat.com>
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
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi,

Thanks for this, I will give this a try. I'm sure it will fix it, 
though, as I get sound just fine when calling say or espeak from the cmdline

On 01/02/2023 13:54, Linux for blind general discussion wrote:
> Have you tried:
> amixer set Master 100% unmute
>
>
>
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
>   soap, ballot, jury, and ammo. Please use in that order."
> -Ed Howdershelt (Author, 1940)
>
> .
>
> On Wed, 1 Feb 2023, Linux for blind general discussion wrote:
>
>> Hi,
>>
>>
>> I've been having a strange issue with Arch linux arm when installed using
>> Asahi on an m1 macbook air.
>>
>>
>> When installed, I connect my Android phone to use as a personal hotspot,
>> because network configuration is not completed in the install. I then install
>> both alsa-utils and espeakup after doing a macman -Syu. They seem to install
>> fine, and then I set the Master volume to 100% with:
>>
>> amixer set Master 100
>>
>> This seems to work fine. Then I enable espeakup with:
>>
>> #systemctl enable espeakup.service
>>
>> After this, I reboot, and this is where the problem happens.
>>
>> Espeakup reads the first login prompt, including the kernel version and host
>> name. But then, beyond that point, reads nothing, no matter what I do. Logging
>> in correctly results in no speech, the same when entering an incorrect
>> username and password.
>>
>>
>> Once logged in, doing:
>>
>> say test
>>
>> and:
>>
>> espeak test
>>
>> and also:
>>
>> espeak-ng test
>>
>> all result in the word "test" being read by espeak.
>>
>>
>> This is about as much detail as I can provide, being unable to use the system
>> beyond that point. Any advice anyone has to solve this problem would be very
>> much appreciated.
>>
>>
>> Thank you for reading,
>>
>> Aaron
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

