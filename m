Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CA69BE15
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 15:59:04 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id E469718C8910;
	Sat, 24 Aug 2019 13:59:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 233AB600C4;
	Sat, 24 Aug 2019 13:59:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E99051802218;
	Sat, 24 Aug 2019 13:59:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7ODwvGo007084 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 09:58:57 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 09C6260F86; Sat, 24 Aug 2019 13:58:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx21.extmail.prod.ext.phx2.redhat.com
	[10.5.110.62])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 04BC560C80
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:58:54 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
	[209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 3156F18C426C
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:58:53 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id k2so11146350wrq.2
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 06:58:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=aE1wSySGkIWPysiNbBDd1uzQa3/+87GEn9g/IGloKWU=;
	b=B3DpfZZYYPy+7YtEq7ckl0aEt+TeVSRnxTet2Mlluv7qfefi8HzRIoZPVrCukaB0xy
	TrBMhcupf1D2zNBJRXUncfUO2VNB1oqginmelhoNzkdyUHb4KQXg6DjstdL1MSE0S6WL
	sc82CVwoD2KwoOnMFDKVm3RYvqj0vxqJlrsEcQhF/YgRIwYAUjAwLgBEiq+pdPQeV67p
	caiCQyrm8HCagWO8Y0kgGvfUaJS875Z0ZFU215y4PyJ4GFXnIjosW6Cl5K+Xz5QtUBkD
	5Z2EJcWQEUYoouGcBu/WPiTSOBZIL8DRERyK5Dl3o3+A7eYyDz6bPHzHhfxUR33r5Kru
	WgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=aE1wSySGkIWPysiNbBDd1uzQa3/+87GEn9g/IGloKWU=;
	b=pqYB8foSNsG8TYRb/+VWlOZdVHqwqH3hOBUd467B5wDtAAk517QCQ1nRvcFB/5PEHB
	UI6oMzbZ8+Nvftk+fi5gbftGzXUYTTS+91r5ymiVEjgsLsdm/kPYfYAceFg3OxKOVVm8
	fTKeEXF0ve2V3BK6cy1uoDy4GRf8RV4rLt60bzsfxMBYwhIMZk6TnhzxWAAs3t+OFGJ+
	C50vsap8gNcbo+CzcDe6WTlc71qhIcnn0QEJtQYoUlsVMi4reWqsqdEIK38w/bFWkjOm
	6Y83gC7buzZsydzz4y7qxJHgJdZ9JRnZXs8GusfCSHtuc/geZ7uf6W8KODO5Jppn/vZC
	GQDw==
X-Gm-Message-State: APjAAAWeMdOwov8lso0NtHA/Uye4I+Xb9zr6knEc3zklqXCDOcw2oudK
	sYC7JaEdxwHpzjq/MKByHWWRq/+B
X-Google-Smtp-Source: APXvYqwAJbQa7SDDNVkDjIQ1/ZhoXxm3FdKO/ewXWs1hXeWL6LIY16jcFARxZWzwClaXbbm7SX/hhw==
X-Received: by 2002:a5d:66d0:: with SMTP id k16mr11094822wrw.333.1566655131437;
	Sat, 24 Aug 2019 06:58:51 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:9d52:54c0:3f3b:a797?
	([2a04:b2c2:807:200:9d52:54c0:3f3b:a797])
	by smtp.gmail.com with ESMTPSA id 6sm7043694wmf.23.2019.08.24.06.58.50
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 06:58:50 -0700 (PDT)
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
	<3690eea5-ed3e-319e-2c88-c926bcafb152@GMAIL.COM>
	<26577346-8dab-e1e6-19ed-c44714fd4ca3@slint.fr>
Message-ID: <0f6e771a-178e-f4b8-f15a-a6bfdc741165@GMAIL.COM>
Date: Sat, 24 Aug 2019 14:58:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <26577346-8dab-e1e6-19ed-c44714fd4ca3@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 13:58:53 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 13:58:53 +0000 (UTC) for IP:'209.85.221.48'
	DOMAIN:'mail-wr1-f48.google.com' HELO:'mail-wr1-f48.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.48 mail-wr1-f48.google.com 209.85.221.48
	mail-wr1-f48.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.62
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.70]); Sat, 24 Aug 2019 13:59:03 +0000 (UTC)

Okay my bad on that, I missed the -l and the rest of it. I'll put that here.

Okay I can't get the full output since after doing that, speech died. It 
did however say the sda was FAT and the others I didn't get to before 
speech died.

Is it best to simply create a new raw disk and go from there?




On 24/08/2019 14:33, Linux for blind general discussion wrote:
> Hello,
>
> If the md5sum matches, and you did format the virtual drive, makig sure
> its big enough (20G).
>
> Start again the installer and, as soon as logged in as root type:
> lsblk -l -o name,size,fstype,type|grep part|sed "s/ *part//"
> and post the output in your next post.
>
> Best,
>
> Didier
>
> On 24/08/2019 15:19, Linux for blind general discussion wrote:
>> Okay so I just ran into this with a fresh install of qemu, making my 
>> script.
>>
>> It boots. It gets to install packages, however....with a fresh, 
>> verified ISO...
>>
>> Every package returns an error while installing, the errorpkg 2. I've 
>> verified the iso. ISo and even got a fresh one to test, and.....it 
>> consistently, on qemu, runs into this. Am I the sole one experiencing 
>> this or is there something going on with the Slackware UK link from 
>> slint.fr (the click here in the install section) one?
>>
>> On 24/08/2019 13:39, Linux for blind general discussion wrote:
>>> Hello,
>>>
>>> According to https://packages.debian.org/ you need qemu-utils for the
>>> command qemu-img and qemu-system-x86 for the command qemu-system-x86_64
>>>
>>> That's all I know, I run neither Debian nor Ubuntu.
>>>
>>> Best,
>>>
>>> Didier
>>>
>>>
>>> On 24/08/2019 13:40, Linux for blind general discussion wrote:
>>>> Okay so from a base Debian/Ubuntu install....what packages do I 
>>>> need to do the qemu-img stuff since I tried the man kemu and it 
>>>> kept saying no manual for qemu
>>>>
>>>> Is that supposed to happen?
>>>>
>>>> On 24/08/2019 00:07, Linux for blind general discussion wrote:
>>>>> Hello,
>>>>>
>>>>> Let's create a qemu directory in your $HOME and go there with these
>>>>> commands:
>>>>>
>>>>> mkdir $HOME/qemu
>>>>> cd $HOMeqemu
>>>>>
>>>>> Thjen create a virtual disk of size 2O G (Slint needs around 13G).
>>>>> Check first that you have enough space then type:
>>>>> qemu-img create disk.raw 20G
>>>>>
>>>>> Then write a script to set up your VM. Let's name it qemu.sh. here 
>>>>> is a
>>>>> suggested content:
>>>>>
>>>>> #/bin/sh
>>>>> qemu-system-x86_64 \
>>>>> -machine q35 \
>>>>> -enable-kvm \
>>>>> -cpu host \
>>>>> -boot order=d \
>>>>> -m 2G \
>>>>> -soundhw hda \
>>>>> -boot menu=on \
>>>>> -display gtk \
>>>>> -vga std \
>>>>> -drive file=disk.raw,format=raw,media=disk \
>>>>> -cdrom slint64-14.2.1.2.iso
>>>>>
>>>>> Make the script executable:
>>>>> chmod 755 qemu.sh
>>>>>
>>>>> This is a simple example. I assume that the ISO is also in 
>>>>> $HOME/qemu,
>>>>> else after -cdrom indicate its path.
>>>>>
>>>>> After installation, cloe the virtukla machibe and before staring it
>>>>> again change the boot order to boot on the virtual drive:
>>>>> -boot order=c
>>>>>
>>>>> To know more read "man qemu".
>>>>>
>>>>> Best,
>>>>>
>>>>> Didier
>>>>>
>>>>> On 23/08/2019 22:58, Linux for blind general discussion wrote:
>>>>>> Yes I do need help to set up the VM. I use VirtualBox since I 
>>>>>> know it works....but can you walk me through the very beginning, 
>>>>>> I assume I can use libvert-manager for this, right?
>>>>>>
>>>>>> Or how do I do this, then. I'm a complete and utter beginner at 
>>>>>> kemu honestly
>>>>>>
>>>>>> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>>>>>>> Hello,
>>>>>>>
>>>>>>> Didier, Slint maintainer, here.
>>>>>>>
>>>>>>> I suggest to use Qemu instead. It works well, and the sound is 
>>>>>>> way better than with VirtualBox.
>>>>>>>
>>>>>>> That's what I use first to test the new Slint ISOs, before 
>>>>>>> trying them on bare metal.
>>>>>>>
>>>>>>> If you need help to set up the virtual machine, just ask.
>>>>>>>
>>>>>>> Best regards,
>>>>>>>
>>>>>>> Didier
>>>>>>>
>>>>>>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>>>>>>> I thought for some reason Vbox (the one from the 18.04 repos) 
>>>>>>>> supportd Slackware? I'm not sure though, when I put in 
>>>>>>>> Slackware so Vbox can auto find it, it defaulted to Win7. 
>>>>>>>> Not...quite what I want. So...yeah, anyone got Slint to work on 
>>>>>>>> a VM? I have a perfectly good Ubuntu physical machine, wanted 
>>>>>>>> to test Slint out and see if it's any good in a VM
>>>>>>>>
>>>>>>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>>>>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> No longer an option, soled the Mac with the bootcamp, so have 
>>>>>>>>> to learn virtualization the linux way, since it is all I have 
>>>>>>>>> now.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>> Warm regards,
>>>>>>>>>
>>>>>>>>> Brandt Steenkamp
>>>>>>>>>
>>>>>>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>>>>>>
>>>>>>>>> I teach macOS as well as iOS, not because I want to, but 
>>>>>>>>> because it's easy.
>>>>>>>>>
>>>>>>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>>>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using 
>>>>>>>>>> the latest ISO, nothing happens. What settings do I need to 
>>>>>>>>>> config for the VM to work successfully?
>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>
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
