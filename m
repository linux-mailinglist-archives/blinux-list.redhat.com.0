Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C923249717A
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 13:32:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642941156;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=pe+yfcWv0G++ZCo1JLJCSUNakKkFyMyVt8eDRI9G0tY=;
	b=gUDRDae51fnUdwabNHm32sjrp3j/b3q9klOtFtlsjJOxRR75ncIOsbcIK01ROY/h2mcl2J
	rs8VeTzQ+BsnD0shhpQghUOlh8YXibxD3MXNrxTjIyGjMuG+4COBKJW/TBw7cNCZ3/14Hf
	h5++A7oC2pPy0fxRgtliHwNUFzUTufE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-119-U_xPOSGxPpKh2MmMXqg4fQ-1; Sun, 23 Jan 2022 07:32:35 -0500
X-MC-Unique: U_xPOSGxPpKh2MmMXqg4fQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 109E61006AA3;
	Sun, 23 Jan 2022 12:32:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AE0B36FB8B;
	Sun, 23 Jan 2022 12:32:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3D8964BB7C;
	Sun, 23 Jan 2022 12:32:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20NCWMrD002036 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 07:32:22 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9BD06C080AA; Sun, 23 Jan 2022 12:32:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97DD5C0809C
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 12:32:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7D7C438030B7
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 12:32:22 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com
	[209.85.218.52]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-595-16m_4o-WOPGiQEAW0cjE0g-1; Sun, 23 Jan 2022 07:32:20 -0500
X-MC-Unique: 16m_4o-WOPGiQEAW0cjE0g-1
Received: by mail-ej1-f52.google.com with SMTP id j2so13572998ejk.6
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 04:32:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Qx8zPAwA9bscu1Ko5pSThlKiqNQ6UqrSoXUf1nFN7ig=;
	b=MpFuuoYcNvynseSrFgTeKq17ZuUC0LIzW2MrCYUM/sBRt91aU89TnK7sHmYnPRZPtZ
	s0PLiCdHHadFUldvBB7UgwUW04WQuYS0qE6VVATpJfdswIEfVLMxxXTW/9JpMhZ2eNlX
	Kybhs++Rp0uGagRJn6b20WVjEeeRWGgsOs0ar1l8fd9EckXR/mjNroVf9JIzh5rs+SkT
	UBFCPkktkDeKVr4UEQ14FkeD32KSrjGaSj0+KDWdLJFHhgrY5qOps2ULtCYpESFvaOaT
	kBYKFbpBuVEjaNieq7WMvxILxNl3Ts66Upd4nORXkU4c+A72SmqmWvgyFlXH1gjJcUxZ
	tJtQ==
X-Gm-Message-State: AOAM533HoBSm7WB9MHNWfx/FT4wWLB2RirCViFlsEBDxe1aiLEx3urvh
	vglW+wHW4lc/72prENYmzqk+6Ndq0pE=
X-Google-Smtp-Source: ABdhPJzqI927+MA/f1kW4hR6y1XtBM9PWFZL5nwpUsItVryuKHKv/dI64t242EKKrRyJYwMUPa8nNA==
X-Received: by 2002:a17:906:7943:: with SMTP id
	l3mr1432221ejo.102.1642941139259; 
	Sun, 23 Jan 2022 04:32:19 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id
	cf13sm3813213ejb.141.2022.01.23.04.32.17 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Jan 2022 04:32:18 -0800 (PST)
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
	<e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
	<3449a41e-479-d678-f49-310f4c2eff@panix.com>
	<b4515952-fdab-c9e1-4a2e-07c7d2f6c783@gmail.com>
	<54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
Message-ID: <677fcb01-6b8f-f7df-455c-292c69754daf@gmail.com>
Date: Sun, 23 Jan 2022 14:32:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <54c0dae2-c64-d946-e3-cdc8d9806166@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Sounds like a Secure boot issue.


Even with Secure Boot enabled, you should be able to install Ubuntu.


Warm regards,

Brandt Steenkamp

Sent from the Slint machine using Thunderbird

On 2022/01/23 13:42, Linux for blind general discussion wrote:
> The machine wasn't bought, it had been used for windows earlier.  We tried
> updating service packs for windows on the machine first and when that
> failed, I then failed to install linux on the machine.
>
>
> On Sun, 23 Jan 2022, Linux for blind general discussion wrote:
>
>> That, my friend is why you do research before you buy.
>>
>>
>> Example, most all HP machines will take Linux, no issue. Lenovo ThinkPads are
>> known for being ideal for installing Linux. I've never run across a newer Del
>> which doesn't run Linux like a champ.
>>
>>
>> Just look for something well known and in your budget and google it's
>> moddle+Linux like so.
>>
>>
>> "Example HP laptop+Fedora"
>>
>>
>> You will almost certainly find the info you are looking for.
>>
>>
>> I've always believed, if you want your system to work the way you want, either
>> use a fresh install you do yourself of a distro "you" like, in my case Slint,
>> or build it yourself, Arch or Gentoo, if you like.
>>
>>
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from the Slint machine using Thunderbird
>>
>> On 2022/01/23 11:34, Linux for blind general discussion wrote:
>>> Well now, that just depends on what brand and model of laptop comes your
>>> way.  I remember a Dell Dimension 1550 that wouldn't install linux on it
>>> at all.  The retirement program I'm with subsequently trashed that laptop
>>> as a result of that failure.
>>> Not all of the older laptops will take linux and perhaps some of the newer
>>> laptops won't take linux either.
>>> Some people prefer not to gamble.
>>>
>>>
>>> On Sun, 23 Jan 2022, Linux for blind general discussion wrote:
>>>
>>>> I have never bought a laptop that comes with Linux pre installed, why
>>>> should
>>>> I, when I can just do it myself, and then install everything I want/need in
>>>> a
>>>> system.
>>>>
>>>>
>>>> My favorite machine thus far would be my Huawei MateBook D15. It has a very
>>>> nice, grate, big keyboard, yes, also a rather large screen, but what can
>>>> you
>>>> do? The battery is also reasonable.
>>>>
>>>> Warm regards,
>>>>
>>>> Brandt Steenkamp
>>>>
>>>> Sent from the Slint machine using Thunderbird
>>>>
>>>> On 2022/01/23 00:12, Linux for blind general discussion wrote:
>>>>> Well,
>>>>> For me it was always either the HP Pavillion or the Dell Satellite models.
>>>>> Relatively easy to use, come with standard options and a nice big
>>>>> keyboard.
>>>>> Yes, I have large hands. And yes, like you, screen size isn?t important to
>>>>> me. Still, with a larger screen there is video capability that can be
>>>>> retasked easily enough. Also, since most laptops often use screen size as
>>>>> a
>>>>> depending factor, a larger one will have the advantage of a larger
>>>>> keyboard.
>>>>>
>>>>> -Eric
>>>>>
>>>>>
>>>>>> On Jan 22, 2022, at 1:16 PM, Linux for blind general discussion
>>>>>> <blinux-list@redhat.com> wrote:
>>>>>>
>>>>>> I am looking for a Linux machine to use in graduate CS courses. I
>>>>>> probably
>>>>>> want Ubuntu or another common distro that comes with the screen reader (I
>>>>>> assume Orca) and other a11y stuff already installed. I like small, light
>>>>>> laptops (since I don't use the screen) that have decent memory and
>>>>>> battery
>>>>>> life. Which machines are your favorites.
>>>>>>
>>>>>> Thanks for the tip on VmWare the other day, BTW.
>>>>>>
>>>>>> Amanda[0]
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

