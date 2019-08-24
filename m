Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D72E19BDEF
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 15:19:23 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 491FE8980FC;
	Sat, 24 Aug 2019 13:19:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D930BA228;
	Sat, 24 Aug 2019 13:19:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4530D2551B;
	Sat, 24 Aug 2019 13:19:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7ODJ9Lj006308 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 09:19:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D36860126; Sat, 24 Aug 2019 13:19:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx21.extmail.prod.ext.phx2.redhat.com
	[10.5.110.62])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 37BEE600C4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:19:07 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
	[209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 115D618C4271
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:19:04 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id m125so11604486wmm.3
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 06:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=/Fswp48Q09G8fFVTEG/+kPxQ+trGdY4cuM/0OQwdOwk=;
	b=pSRPmsjWrxZGzJF27TJ9LFK9SRI08DfKvlhb6EIZebe06r7UpCL/zOyf5C3EaWfqta
	QcdmDeLZX7K5v4kEPeg0QtUPybpEXItZIV6BOPSWXwol3MKPh0KksvNdaXxEoEC1TbFa
	mYHu8UygXJec0gnveKBWDsph9W0EvYZx1lW2zhtAYjoIeJTbLhLx/shMqqS6Zau09P31
	euc/Pf5qFo8uzVjF8Dfm7ZwD2jgJOYC7RCcBS3jYNcLSnyw7Lz0owAh5fCGOrAN05Q0I
	/++Vy2Ay5qK4c44fvzeTvWeVpW4GvepCN5DkYt4ksbGaVDMlZWVnBVTlM4FQt7lRajnI
	PPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/Fswp48Q09G8fFVTEG/+kPxQ+trGdY4cuM/0OQwdOwk=;
	b=Bj1+JyhsQCe1j1ay/8+Zw88hNegw0+NtFxuZcAxsOjC+LVrVRiDjyfwYAz/nArqgEm
	/gdsuua/DT3s57xMTMaPJFiAz8KxJxM0iG7eVgztp55FOgwVCtAhnvrnkxdC3d0ouVIT
	mJSF3wgOd1jfu4FY9+ujFdHAtwaZRs4RKAtlkeDAikSZeMGwR0KUDDRPOffR4XXka2PZ
	DHAuKHdA2N6322zqI46qXPhGX5aFG4igpJuK9358fyvp3LPxeaOWkYbyPYZfjN72TQNN
	xZBL7vLau2il7rAMoDw8PvBpl2YWV9B1luWVkfBgpzmz3WpLIxALrKOinztcw7m2Nfo0
	iTbg==
X-Gm-Message-State: APjAAAV/4evsYkEhVkdp1m8U4SqZlDLIOd2uaH1CvlGlC9/s8mIkPtcd
	f5qQbzKP6hFLYVWsHZptmwrIl1yZ
X-Google-Smtp-Source: APXvYqzniaxCuF/ps6tlpYrKKcTbKe+XAzxb4r7HkH1/jn2jjlfV9QMEkuoi83zcmBSVrhqzNnNUEA==
X-Received: by 2002:a05:600c:24a:: with SMTP id
	10mr11189868wmj.7.1566652742443; 
	Sat, 24 Aug 2019 06:19:02 -0700 (PDT)
Received: from [192.168.1.110] ([195.147.80.70])
	by smtp.gmail.com with ESMTPSA id
	u129sm7448626wmb.12.2019.08.24.06.19.01 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 06:19:01 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
	<84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
	<77c97795-52b2-848e-275a-9ea2e8f9b984@slint.fr>
Message-ID: <3690eea5-ed3e-319e-2c88-c926bcafb152@GMAIL.COM>
Date: Sat, 24 Aug 2019 14:19:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <77c97795-52b2-848e-275a-9ea2e8f9b984@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 13:19:04 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 13:19:04 +0000 (UTC) for IP:'209.85.128.42'
	DOMAIN:'mail-wm1-f42.google.com' HELO:'mail-wm1-f42.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.42 mail-wm1-f42.google.com 209.85.128.42
	mail-wm1-f42.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.62
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.67]); Sat, 24 Aug 2019 13:19:22 +0000 (UTC)

Okay so I just ran into this with a fresh install of qemu, making my script.

It boots. It gets to install packages, however....with a fresh, verified 
ISO...

Every package returns an error while installing, the errorpkg 2. I've 
verified the iso. ISo and even got a fresh one to test, and.....it 
consistently, on qemu, runs into this. Am I the sole one experiencing 
this or is there something going on with the Slackware UK link from 
slint.fr (the click here in the install section) one?

On 24/08/2019 13:39, Linux for blind general discussion wrote:
> Hello,
>
> According to https://packages.debian.org/ you need qemu-utils for the
> command qemu-img and qemu-system-x86 for the command qemu-system-x86_64
>
> That's all I know, I run neither Debian nor Ubuntu.
>
> Best,
>
> Didier
>
>
> On 24/08/2019 13:40, Linux for blind general discussion wrote:
>> Okay so from a base Debian/Ubuntu install....what packages do I need 
>> to do the qemu-img stuff since I tried the man kemu and it kept 
>> saying no manual for qemu
>>
>> Is that supposed to happen?
>>
>> On 24/08/2019 00:07, Linux for blind general discussion wrote:
>>> Hello,
>>>
>>> Let's create a qemu directory in your $HOME and go there with these
>>> commands:
>>>
>>> mkdir $HOME/qemu
>>> cd $HOMeqemu
>>>
>>> Thjen create a virtual disk of size 2O G (Slint needs around 13G).
>>> Check first that you have enough space then type:
>>> qemu-img create disk.raw 20G
>>>
>>> Then write a script to set up your VM. Let's name it qemu.sh. here is a
>>> suggested content:
>>>
>>> #/bin/sh
>>> qemu-system-x86_64 \
>>> -machine q35 \
>>> -enable-kvm \
>>> -cpu host \
>>> -boot order=d \
>>> -m 2G \
>>> -soundhw hda \
>>> -boot menu=on \
>>> -display gtk \
>>> -vga std \
>>> -drive file=disk.raw,format=raw,media=disk \
>>> -cdrom slint64-14.2.1.2.iso
>>>
>>> Make the script executable:
>>> chmod 755 qemu.sh
>>>
>>> This is a simple example. I assume that the ISO is also in $HOME/qemu,
>>> else after -cdrom indicate its path.
>>>
>>> After installation, cloe the virtukla machibe and before staring it
>>> again change the boot order to boot on the virtual drive:
>>> -boot order=c
>>>
>>> To know more read "man qemu".
>>>
>>> Best,
>>>
>>> Didier
>>>
>>> On 23/08/2019 22:58, Linux for blind general discussion wrote:
>>>> Yes I do need help to set up the VM. I use VirtualBox since I know 
>>>> it works....but can you walk me through the very beginning, I 
>>>> assume I can use libvert-manager for this, right?
>>>>
>>>> Or how do I do this, then. I'm a complete and utter beginner at 
>>>> kemu honestly
>>>>
>>>> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>>>>> Hello,
>>>>>
>>>>> Didier, Slint maintainer, here.
>>>>>
>>>>> I suggest to use Qemu instead. It works well, and the sound is way 
>>>>> better than with VirtualBox.
>>>>>
>>>>> That's what I use first to test the new Slint ISOs, before trying 
>>>>> them on bare metal.
>>>>>
>>>>> If you need help to set up the virtual machine, just ask.
>>>>>
>>>>> Best regards,
>>>>>
>>>>> Didier
>>>>>
>>>>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>>>>> I thought for some reason Vbox (the one from the 18.04 repos) 
>>>>>> supportd Slackware? I'm not sure though, when I put in Slackware 
>>>>>> so Vbox can auto find it, it defaulted to Win7. Not...quite what 
>>>>>> I want. So...yeah, anyone got Slint to work on a VM? I have a 
>>>>>> perfectly good Ubuntu physical machine, wanted to test Slint out 
>>>>>> and see if it's any good in a VM
>>>>>>
>>>>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>>>>
>>>>>>>
>>>>>>> No longer an option, soled the Mac with the bootcamp, so have to 
>>>>>>> learn virtualization the linux way, since it is all I have now.
>>>>>>>
>>>>>>>
>>>>>>> Warm regards,
>>>>>>>
>>>>>>> Brandt Steenkamp
>>>>>>>
>>>>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>>>>
>>>>>>> I teach macOS as well as iOS, not because I want to, but because 
>>>>>>> it's easy.
>>>>>>>
>>>>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the 
>>>>>>>> latest ISO, nothing happens. What settings do I need to config 
>>>>>>>> for the VM to work successfully?
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
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
