Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CD84C3C147B
	for <lists+blinux-list@lfdr.de>; Thu,  8 Jul 2021 15:41:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625751684;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7mwORM8u1tj25UTWyFu/UNTgkvXvtX7Wma5AZ4ONLZY=;
	b=jGw67fu7+eSnANFHILe3B4sQPOjClE1beRPESjBKwXaIgPqakWuxA2/aRbh8dfiD/rKfkA
	vQQp8At2J+JaMFFd08NFVZ58L4M35b7ve8tXw5iRgxg37WPxLeYegt+mgYly0jM9WynWCJ
	frpfgUt3zN96rJdaMydcKWT5Q9GkQ88=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-231-iqngzhQvNx6Okvl7UYjzqA-1; Thu, 08 Jul 2021 09:41:23 -0400
X-MC-Unique: iqngzhQvNx6Okvl7UYjzqA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B04DDCC62E;
	Thu,  8 Jul 2021 13:41:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11485100EB3E;
	Thu,  8 Jul 2021 13:41:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CABC1809C99;
	Thu,  8 Jul 2021 13:41:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 168Df2It009313 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 8 Jul 2021 09:41:02 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4ACCF20CA24F; Thu,  8 Jul 2021 13:41:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4130020D69BE
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 13:40:59 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9BDC28015B9
	for <blinux-list@redhat.com>; Thu,  8 Jul 2021 13:40:59 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-427-37w9ONfhPEuOcTRwNFBwpg-1; Thu, 08 Jul 2021 09:40:57 -0400
X-MC-Unique: 37w9ONfhPEuOcTRwNFBwpg-1
Received: by mail-qk1-f180.google.com with SMTP id q190so5663188qkd.2
	for <blinux-list@redhat.com>; Thu, 08 Jul 2021 06:40:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=mLmPdzzw3tv1pw18xvLHBxVp7QJ/mZnBGjFu3G41NFM=;
	b=WJqudqUz0S0r7Ruu2XEpPpFWMj/8H71ghIezcvTeYX30mngtmHodwmw9e4jgZgihuK
	s6gdJTL23FOtMuMriHsTIIFrKU543v+pY6RoAHFhj8aRfDITRgKRLBqdGBvRwPtPk4w7
	XolQj5KSpTYL5dORGaxrxNJ+8i/btcfeKXzQfjGYJReKIWimBO60KpINL4fJMM46lgg+
	9lPWlV5hY0RkpJdozeCptVj0WEvnUjJ5W3pAjpfMSBDTTn+l21sSKgSNBVQSjKVID/RH
	kKoLBJqda/dnenOG831NpEDxZkjio7qCaobqqN1puFCgDz3HEHFvM3X6JSSo58mJ4ViB
	Tsxg==
X-Gm-Message-State: AOAM532hz6JBQuEDjXB3agyuhr5VQg3J9xQQF4Ge7EtmrEeo5gh9DdoY
	Sm8yqYlh7L/uo2Ade82nQra6+AJEO7o=
X-Google-Smtp-Source: ABdhPJyuyQ2vxcP2MGi/CLiZavSa6nUzLMM+chIDpbRfu5iDLbyU8Y2ZbXb4cf6DfRaDIMdvQsdAQg==
X-Received: by 2002:a37:aa42:: with SMTP id t63mr15663500qke.242.1625751656205;
	Thu, 08 Jul 2021 06:40:56 -0700 (PDT)
Received: from smtpclient.apple ([2603:9005:40c:3b8d:40f9:111f:275e:7e51])
	by smtp.gmail.com with ESMTPSA id x22sm947515qto.34.2021.07.08.06.40.55
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Jul 2021 06:40:55 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3681.0.2.1.2\))
Subject: Re: Starting linux again
Date: Thu, 8 Jul 2021 08:40:53 -0500
References: <DB16B662-5338-426B-9905-3B6BA296F181@gmail.com>
	<d3f4bde5-6968-ee76-3534-df0cad1758e7@schoeppi.net>
	<alpine.OSX.2.23.453.2107070838440.7280@soladeogloria.local>
	<CAGJxbF4KF7FJE0hRpR-zJyYHvgqcKQNhVVXPy3StT6v6w9Gv_Q@mail.gmail.com>
	<fb35b6c3-69c5-feb6-b26d-bf4a2369b59d@schoeppi.net>
To: "blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <fb35b6c3-69c5-feb6-b26d-bf4a2369b59d@schoeppi.net>
Message-Id: <52346499-23D5-4468-AD12-C5982DAD5CF1@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I did use the non-Free installer. Same results.
Devin Prater
r.d.t.prater@gmail.com

Https://devinprater.flounder.online

> On Jul 7, 2021, at 9:24 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Have you used the installer where all non-free firmwares are included or the normal installer? Maybe your hardware would be have been detected if you had used the non-free installer...
> 
> Cheers,
> 
>  Scoepp
> 
> Am 07.07.2021 um 15:48 schrieb Linux for blind general discussion:
>> Just make sure Debian supports all of your hardware first. My Acer
>> Espire E-1574... or 1575... worked on Arch install but not when trying to
>> install Debian. Also be aware that many packages will probably be versions
>> out of date of upstream, so missing features and possible fixes. Besides
>> that it would probably be a good console system.
>> Devin Prater
>> r.d.t.prater@gmail.com
>> gemini://tilde.pink/~devinprater/
>> On Wed, Jul 7, 2021 at 8:40 AM Linux for blind general discussion <
>> blinux-list@redhat.com> wrote:
>>> That's great news! I had seen a comment somewhere about debian no longer
>>> having an accessible install but if it still does, I will definitely go to
>>> that first.
>>> 
>>> 
>>> 
>>> --
>>> Cheryl
>>> 
>>> May the words of my mouth
>>> and the meditation of my heart
>>> be acceptable to You, Lord,
>>> my rock and my Redeemer.
>>> (Psalm 19:14 HCSB)
>>> 
>>> On Wed, 7 Jul 2021, Linux for blind general discussion wrote:
>>> 
>>>> Hi,
>>>> 
>>>> I'd still use Debian because IMHO it is the best distro regarding
>>>> accessiblity support, easy and uncomplicated installation for a blind
>>> user
>>>> with braille and speech, e.g. I am using Debian for more then 20 years
>>> now
>>>> and I not missed anything. I am also working in the console most of the
>>> time.
>>>> 
>>>> Cheers,
>>>> 
>>>>  Schoepp
>>>> 
>>>> 
>>>> Am 07.07.2021 um 14:37 schrieb Linux for blind general discussion:
>>>>> I've been very busy the last few years and have been using the terminal
>>> on
>>>>> my Mac for a lot of the things I used to do in linux. Now I would like
>>> to
>>>>> get a laptop for linux again. I mostly want it for command-line use
>>> rather
>>>>> than for the gui though I suppose I may end up expanding to that at
>>> some
>>>>> point. I mostly used debian when I was using linux with a few
>>> excursions
>>>>> into arch. I am totally blind and use speech and braille but the more I
>>> can
>>>>> use braille, the happier I am. I used thinkpads a lot and also
>>> converted
>>>>> old Apple machines but I don't have a spare Apple computer right now
>>> and
>>>>> probably would go for Lenovo. Can somebody tell me which dists are now
>>> the
>>>>> best for installing linux, especially knowing that I want to use the
>>>>> command line a lot? If I get a Lenovo with linux on it, am I probably
>>> going
>>>>> to want to reinstall anyway and how hard is that nowadays? Obviously
>>> this
>>>>> email is prompted a lot by the thread about getting a laptop for linux.
>>> It
>>>>> really feels funny writing about th
>>>> is
>>>>>    as if I was a complete novice when I used to install and set up
>>> systems
>>>>> all the time but I guess one has to restart somewhere.
>>>>> 
>>>>> The only problem I had with my Lenovos, and this was after years of
>>> use,
>>>>> was having the fan quit. Some of this was just the age of the Lenovos
>>> but
>>>>> it seemed to me that it was becoming harder to know how to set up the
>>>>> system so the fan worked right where at the beginning of my use of
>>> linux I
>>>>> never had to pay attention to fan settings. It may of course be that it
>>> was
>>>>> mostly the age of the laptops - I got years of use out of them - but
>>> I'm
>>>>> still a bit hesitant because of that.
>>>>> 
>>>>> I know this email covers a lot of territory - I'm basicly thinking out
>>> loud
>>>>> - so just respond to whatever you know and can address.
>>>>> 
>>>>> Thanks for any suggestions.
>>>>> 
>>>>> Thanks.
>>>>> 
>>>>> 
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>> 
>>>> 
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>> 
>>>> 
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
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

