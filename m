Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7494BC177
	for <lists+blinux-list@lfdr.de>; Fri, 18 Feb 2022 21:57:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645217849;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post; bh=HQlKCwL1l3pBTk0ZrzyKTx8gxSWgAHMis+MpWq6Xfk8=;
	b=W20q3g9w6h4qO3vs0aPVvubILB+04TZiTQnvau9BqjoXEJDLIiSlWq9yXhV/YhSE23DcjQ
	BQa/vIftM9UsnDJA1LjCdKcd66eLS9+yrUf6UX3vXDuvLjqCIU3ESINV7EilmBqBnkZKdk
	Zcxt1oBwgyK8foyzbEyjqqsvkfgswMg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-371-gLEvELPAPVK5ySjTA1Fyvg-1; Fri, 18 Feb 2022 15:57:25 -0500
X-MC-Unique: gLEvELPAPVK5ySjTA1Fyvg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF9931091DA1;
	Fri, 18 Feb 2022 20:57:21 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 291BC10246F6;
	Fri, 18 Feb 2022 20:57:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CC7AA4CA9B;
	Fri, 18 Feb 2022 20:57:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21IKnpNW006102 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 18 Feb 2022 15:49:51 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B8B1548FB11; Fri, 18 Feb 2022 20:49:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B4730401D2B
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 20:49:51 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9B75285A5BC
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 20:49:51 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-173-_3bgbRkUM2Wb6TGjIHaEUQ-1; Fri, 18 Feb 2022 15:49:49 -0500
X-MC-Unique: _3bgbRkUM2Wb6TGjIHaEUQ-1
Received: by mail-wr1-f42.google.com with SMTP id d27so16480113wrb.5
	for <blinux-list@redhat.com>; Fri, 18 Feb 2022 12:49:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:date:to:subject:in-reply-to:message-id
	:references:mime-version;
	bh=x2RlLpRUUy87gdjB57KlbneLQSjGYVra4DhNPHKTZYM=;
	b=WeZv4oBARvzkNuS4jzPypxVl4VzNngM6D1QvWIkqmNGIQwZLzckPLtcdQyqOsA/nGG
	PVecRE5z+H+pAz8XbhoWIeY9H31BBEZUhqUdK5nXNq6sj7KVGgSTTS+Fx19SQZEMinbv
	2Lluz3QpqByER6gkWugC7iXLRUx4hllAVV5C4Le0DZPfBw2ivuwkPajrUQfsfpnfThar
	5CkZn6JpDlPyT3qwfRXM5jk5SJoyPtv3iHR0vlO36uVYpZaZckAxrS85B2RrrNoFvDqB
	NQYZOqsK7S1gIp6qKhvxhqdHwJDK4X7cEPdJBcplg1PWKWur23qHB7Oa5Hb+fYklmqFL
	LxXw==
X-Gm-Message-State: AOAM530kscrRvHGqNzP7N2Qp37wDK+PIPYYT9m+3QLyfsQl7mIXW2GUI
	CDX/PgrYVSiCEWpCfejZWnG2P/35/w7eIA==
X-Google-Smtp-Source: ABdhPJwYwp8H6BY8RujM2Z3CX49N74exBFNZcBmUtk81JoXj/tT9hBJvfdsysLdxIH3aJcZ6z79rww==
X-Received: by 2002:a05:6000:104f:b0:1e4:b53a:85d9 with SMTP id
	c15-20020a056000104f00b001e4b53a85d9mr7202183wrx.594.1645217388391;
	Fri, 18 Feb 2022 12:49:48 -0800 (PST)
Received: from brandt-slint ([197.184.176.211])
	by smtp.gmail.com with ESMTPSA id
	b6-20020a05600c150600b0037d1bee9360sm348741wmg.41.2022.02.18.12.49.46
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Feb 2022 12:49:47 -0800 (PST)
X-Google-Original-From: Brandt Steenkamp <brandt@brandt-slint.local>
Date: Fri, 18 Feb 2022 22:49:33 +0200 (SAST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Accessibility of installing Distros?
In-Reply-To: <9276cbb6-d550-e929-1880-451bde2003eb@gmail.com>
Message-ID: <6c414d23-2677-ec44-931b-9e0116b332e@brandt-slint.local>
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<bac75179-5e55-1893-4303-f56f3e04d148@gmail.com>
	<F9575516-3959-465F-B245-A179D7FA122C@gmail.com>
	<f97f5363-fc3c-cb1d-e323-ccea994d3a98@panix.com>
	<c54f8e3-b720-644-923-78399bfc5417@brandt-slint.local>
	<35d00f20-12b4-aa58-aa0a-a09a11df055f@gmail.com>
	<BFCF3BBE-9D66-4030-886C-FFCE149C4FCF@gmail.com>
	<1f539f84-0171-ff12-29df-3f2e2c7f2788@gmail.com>
	<efda5c9-a7d-44ad-2598-2db5bcb573@panix.com>
	<05EF6B4E-84E9-4A4B-A0CD-CA20610A93D2@gmail.com>
	<ac6f9804-9307-9ec8-060b-46b98d7abd93@gmail.com>
	<98ef81f8-d366-cb87-303d-2d52e4167a2c@gmail.com>
	<b4ac119d-cdf-7148-bc49-ab67e2ee751b@panix.com>
	<8c364cb-a27b-bfc1-692-60bed09fe233@brandt-slint.local>
	<da65fc-344a-9e1d-835e-417e8b11c0a3@panix.com>
	<9276cbb6-d550-e929-1880-451bde2003eb@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Type: multipart/mixed; boundary="0-1380757474-1645217387=:2592"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--0-1380757474-1645217387=:2592
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Using espeak I can do really fast, but synthesizors that try and sound 
human, sorry, but the deafblind guy in the room simply gets a headache and 
gets lossed.

Warm regards,

Brandt Steenkamp

Sent from the Slint console using Alpine

On Fri, 18 Feb 2022, Linux for blind general discussion wrote:

> Date: Fri, 18 Feb 2022 19:40:58 +0000
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: Accessibility of installing Distros?
> 
> Going off of vanilla Arch here but it uses espeakup by default as the 
> speech synth and method in the accessible boot (which is down arrow when 
> booting off a stick or CD) and it's easy to understand. I get it. Some 
> people can do stupidly high speech rates. But not everyone can. I've 
> left espeakup alone on my box and it works pretty well, I can adjust it 
> easily and it's easy to understand and follow along with. Even at top 
> speed it's not insanely fast
>
> Linux for blind general discussion wrote:
>> If you install espeak-ng in extra packages then in the chroot environment:
>> sysctl disable fenrir
>> then sysctl enable espeak
>> before rebooting that should at least put an end to fenrir eventually.
>> The fenrir speech speed is too fast; it can be adjusted downward but I
>> think never ought to have been set that fast for installation or
>> post-install use.  Maybe speech-rate=0.5 would be better and at the speed
>> espeak uses by default.
>>
>>
>> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
>>
>>> The issue is that it's already on a desktop, usually Mate.
>>>
>>> If I install it again, I'm installing it console only, and then building 
> it as
>>> I see fit, which would be with ratpoison only.
>>>
>>> Will probably go to Arch directly anyway. Why get something that, firstly
>>> speaks with a Screen reader I never bothered to learn, since Speakup works
>>> well enough for my needs, secondly speaks so darn fast no human can 
> understand
>>> the thing, especially if, like me you can hardly hear anything anymore 
> anyway?
>>>
>>> I can build my system in vanilla Arch as well as with anything else. I, 
> for
>>> example wouldn't install Firefox at all, but probably one of the Chromium
>>> based browsers plus elinks for when I'm beeing lazy and want to stay on a
>>> console.
>>>
>>> Warm regards,
>>>
>>> Brandt Steenkamp
>>>
>>> Sent from the Slint console using Alpine
>>>
>>> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
>>>
>>>> Date: Fri, 18 Feb 2022 13:41:19 -0500
>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>>> Subject: Re: Accessibility of installing Distros?
>>>>
>>>> Have you tried running startx to turn orca on?  You may find that works.
>>>>
>>>>
>>>> On Fri, 18 Feb 2022, Linux for blind general discussion wrote:
>>>>
>>>>> Sometimes it would finish the install, then reboot, and come up speaking
>>>>> with
>>>>> Fenrir with a very annoying voice, especially if you, like me is legally
>>>>> deafblind, then after typing your username and password, Fenrir would 
> just
>>>>> die
>>>>> and you are stuck, I know it's a desktop environment, but nothing turns
>>>>> orca
>>>>> on.
>>>>>
>>>>>
>>>>> So much for an accessible distro.
>>>>>
>>>>>
>>>>> This is why I love Slint. It does exactly what "you", tell it to do, not
>>>>> the
>>>>> dev.
>>>>>
>>>>>
>>>>> No disrespect to Mr. Nash, I'm sure he's a perfectly nice guy, not that
>>>>> I've
>>>>> ever spoken to him though.
>>>>>
>>>>> Warm regards,
>>>>>
>>>>> Brandt Steenkamp
>>>>>
>>>>> Sent from the Slint machine using Thunderbird
>>>>>
>>>>> On 2022/02/18 17:10, Linux for blind general discussion wrote:
>>>>>> Makes at least two of us.  The installer always found itself looping 
> and
>>>>>> repeating failed package retrieval.
>>>>>>
>>>>>>
>>>>>>
>>>>>> Cheers,
>>>>>>
>>>>>>
>>>>>>
>>>>>> Dave
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> On 2/17/22 13:12, Linux for blind general discussion wrote:
>>>>>>> I could never get Jenux to work correctly on my setup.
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
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
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
--0-1380757474-1645217387=:2592
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list
--0-1380757474-1645217387=:2592--

