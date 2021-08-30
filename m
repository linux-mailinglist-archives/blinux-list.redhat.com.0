Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 652EA3FBD70
	for <lists+blinux-list@lfdr.de>; Mon, 30 Aug 2021 22:29:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1630355359;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Pl9YPCZ+cTQUgHb1CxM3jdW7YC1pbE62b5KtRK1gHE=;
	b=RXlrgUEq8FkP0Wosn+5+ZkcVMg18qKVKFhGXH+Fhmq6IsnXKSKdd/Wrk8aIkfSQxH6WfJC
	l0YqUtyOk3d3+KNL8G7nNsnsnAKG8rt5qUmZecBPdUFZoxsGiZCTLQX2iA9w+4q/lup2Ik
	GmipYVmyp7Gu7l8b7xH1vGqxIQVPPcU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-45-T4I1m_PeOKKXjmzCXglR1Q-1; Mon, 30 Aug 2021 16:29:17 -0400
X-MC-Unique: T4I1m_PeOKKXjmzCXglR1Q-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C955A1008066;
	Mon, 30 Aug 2021 20:29:11 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F63060BD9;
	Mon, 30 Aug 2021 20:29:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 34D854BB7C;
	Mon, 30 Aug 2021 20:29:07 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17UKStcU004243 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 30 Aug 2021 16:28:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id AC6716D69D; Mon, 30 Aug 2021 20:28:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A728F23175
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 20:28:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 069C5811E7A
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 20:28:53 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-204-1QoX50CsPzO8Oe3DBxq8TQ-1; Mon, 30 Aug 2021 16:28:50 -0400
X-MC-Unique: 1QoX50CsPzO8Oe3DBxq8TQ-1
Received: by mail-oi1-f182.google.com with SMTP id bi4so17730682oib.9
	for <blinux-list@redhat.com>; Mon, 30 Aug 2021 13:28:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Sn00E2As7CRGlmkm0Mf8tGmMCOWA51UyLL+zkuuZgGg=;
	b=Z8QifNjKP632cVOpfz14q9USCp7y5c+3JthP5mqp6LQU2owaQ+Pq7bOXAqSp8nHyA0
	Ci9Ed5l5uimEzNuq/3iowUAJ4LpmoJKzbOAQ1gTwXq72rZ8QgeKpivu6MjMmn4hQJ6lm
	knQd7qI0emEv0BgkoZc7WS1kkXsdrUDkIf2O0nLtMzxWaFznE3ElSNU2uWCEHyPgHSD7
	0vuxdef1G6Ijt2HUXxki4cT0DJ9Pwpu0WEshVtaG63EhfXfidbjh9h87lLPvsW7HLTd2
	botMzyYfwTU4hFjzHuhV7staEPkCCvpBD+tqjDppQsme/0+p5WTSCoELIzzPgT1eMmTF
	sUaw==
X-Gm-Message-State: AOAM530AheligE1Ejs/nu2PjN8IUH7FgYlFaj2ZIztYvXPxcvNPMtSMm
	ZFP+eoTA7PMVOILcm0fEXbvcxgPikWfWew==
X-Google-Smtp-Source: ABdhPJzGPzCk6dhTLvl7de5WyrFUflNydCPGNfuKnBWCFtlQ3BzLSZ7gRxxhTmt72oIpJM0YGKyZLw==
X-Received: by 2002:a05:6808:f90:: with SMTP id
	o16mr727896oiw.37.1630355328885; 
	Mon, 30 Aug 2021 13:28:48 -0700 (PDT)
Received: from [172.16.170.26] (76-252-147-143.lightspeed.clmboh.sbcglobal.net.
	[76.252.147.143]) by smtp.gmail.com with ESMTPSA id
	j17sm3427974ots.10.2021.08.30.13.28.48 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 30 Aug 2021 13:28:48 -0700 (PDT)
Subject: Re: Found this on youtube
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9290E34A-9F86-46DC-ACF7-507E81BB70BF@gmail.com>
	<efe42a63-c45d-faf0-fa47-289a51049768@gmail.com>
	<alpine.NEB.2.23.451.2108290909030.12570@panix1.panix.com>
	<YSuTJ9eHEzFKdmn9@brandt-slint.localhost>
	<a3199a39-e7c7-17d6-f5d3-fc8bd1ae13b9@gmail.com>
	<alpine.NEB.2.23.451.2108292019140.16928@panix1.panix.com>
	<20210830.003146.800.2@[192.168.1.100]>
	<alpine.NEB.2.23.451.2108292053280.21590@panix1.panix.com>
Message-ID: <3d1aaedd-2a1c-4f19-f74a-6797e1515bdf@gmail.com>
Date: Mon, 30 Aug 2021 16:28:46 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2108292053280.21590@panix1.panix.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=WINDOWS-1252; format=flowed

Hi,=A0 I think you can go to blind-computers.org.=A0 If that does not work,=
=20
google blind arch and that should gget you what you want.


Matthew



On 8/29/21 8:53 PM, Linux for blind general discussion wrote:
> That ought to work.
>
>
> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
>
>> You mean
>> pacman -S espeakup
>> systemctl disable fenrir
>> systemctl enable espeakup
>>
>> ----- Original Message -----
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Date: Sun, 29 Aug 2021 20:24:58 -0400
>> Subject: Re: Found this on youtube
>>
>>> You probably disrupted the install every time during updating the keyri=
ng
>> step.  Jenux automatically sets that in motion and it's important to go =
to
>> lunch while that's happening since it takes a while.  I had suggested al=
l
>> of this get done before speech ever comes up but that isn't happening ye=
t.
>> The capslock-u key reads previous line the capslock-i key reads current
>> line and capslock-o reads the next line.  Fenrir is a challenge for thos=
e
>> used to espeak.  My guess is if you don't like fenrir wait until you get=
 a
>> Jenux archlinux install completed then pacman -S espeak and once done
>> systemctl disable fenrir and then systemctl enable espeak then reboot an=
d
>> see if that's better.  Once done, you might also do as root last two
>> commands need doing as root too pacman -R fenrir.
>>
>>
>> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
>>
>>> Hi,
>>>
>>>
>>> Yesterday I did a blind arch install with no problem.=A0 One of the ops=
ion is to
>>> update the key ring.=A0 You may want to try this first before anything =
else.
>>>
>>>
>>> Matthew
>>>
>>>
>>>
>>> On 8/29/21 10:01 AM, Linux for blind general discussion wrote:
>>>> Hi,
>>>>
>>>> every time I've tried installing Jenux the install failed. Why? I have=
 no
>>>> idea. I know there are many people verry happely using Jenux, unfortun=
atly,
>>>> I am not one of them.
>>>>
>>>> Warm regards,
>>>>
>>>> Brandt Steenkamp
>>>>
>>>> Sent using Mutt from the Slint laptop
>>>> On Sun, Aug 29, 2021 at 09:12:29AM -0400, Linux for blind general disc=
ussion
>>>> wrote:
>>>>> Jenux does get an accessible system up with either android or several
>>>>> flavors of archlinux.  Not all flavors of archlinux are accessible th=
at
>>>>> can be installed with Jenux but most are.  Jenux has continuing suppo=
rt as
>>>>> shown by the different dates embedded in the names of the iso's and s=
ha512
>>>>> files available on its site.
>>>>>
>>>>>
>>>>> On Sun, 29 Aug 2021, Linux for blind general discussion wrote:
>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>>
>>>>>> The last I checked, the BlindArch ISO is rather old. I did an instal=
l, but
>>>>>> there were so many things wrong with the install I kept it for less =
than
>>>>>> an
>>>>>> hour. It would've taken me days to fix it all.
>>>>>>
>>>>>>
>>>>>> I am actually considdering writing an install Script in the line of =
a
>>>>>> NixOs
>>>>>> configuration for my own personal use, thus, no choices, all baked i=
n to
>>>>>> the
>>>>>> script. It would probably take me some time, but what can you do?
>>>>>>
>>>>>>
>>>>>> I would rather do that than screw around with "install scripts". Mos=
t of
>>>>>> the
>>>>>> darn things is buggy as all get out, or doesn't include the accessib=
ility
>>>>>> stuff by default.
>>>>>>
>>>>>> Warm regards,
>>>>>>
>>>>>> Brandt Steenkamp
>>>>>>
>>>>>> Sent using Thunderbird from the Slint Laptop
>>>>>>
>>>>>> On 2021/08/28 23:05, Linux for blind general discussion wrote:
>>>>>>> Hi all,
>>>>>>>
>>>>>>> Just found this on Youtube and wondered if anyone hhas tried it.  T=
his is
>>>>>>> a
>>>>>>> blind arch install demo on how it works.
>>>>>>>
>>>>>>> https://www.youtube.com/watch?v=3D72g-2fbP04w
>>>>>>> Matthew
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>>
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>>>>
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
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

