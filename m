Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2219B8C5
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 01:24:33 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 29A61368FF;
	Fri, 23 Aug 2019 23:24:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8ECF560872;
	Fri, 23 Aug 2019 23:24:30 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FE272551C;
	Fri, 23 Aug 2019 23:24:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
	[10.5.11.16])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NNOOFx019299 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 19:24:24 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 6A5045C3FA; Fri, 23 Aug 2019 23:24:24 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx27.extmail.prod.ext.phx2.redhat.com
	[10.5.110.68])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 648C15C296
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 23:24:21 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 95552A2FC4E
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 23:24:20 +0000 (UTC)
Received: by mail-wm1-f50.google.com with SMTP id e8so10237734wme.1
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 16:24:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=6BypPC2K6IvZ2uvQWAVY0ESex9ySucb+/Rz3/Njqdi0=;
	b=Txq+31EG5JbjCICxtmpqq/YUFgR2tN7NBtW9NQXj+vdkTZ3lQMkLZ+9zCb7LwJGLLb
	QqGm0KAqZEaJdrpatuXMHVIfx9u7ne7pHkoyW3l7ePzy1ReQRW7tzVseCmcSkW67PhAC
	o3V52YagiicCXWfBy1Rmi3voUPS7N/dP6sZyomVQUH94uHuIwFWzNIJhs6Vsr/Iv69Qf
	V7YkZdFqiqKopyVlPrMuezZTeQ30OhDZ06igDoZf83gx+e6Dx7nNIW9O8AfTwd+4r6rp
	UU61uELBx6XRXWJN7+oQKJK9F1JBedGe63BRlyZBzzTP1YoKvhwkX3cMcB9xEaAdwmHf
	uimQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=6BypPC2K6IvZ2uvQWAVY0ESex9ySucb+/Rz3/Njqdi0=;
	b=G3cvvdJpNwBHpWVsU81VefKo0Xf25dpYyMUxicvFzbjqlvmrWK0V+1v8Qss9k0iM1B
	qbf2UVEi1bzb4wpSLr9hhefWATJH8Ye0y4nLVJQQYusZ/9Fe/auUJHCQAi8wR4cSkFm5
	BHDrfdHOUuOiRL/e8Fs1Ah4v6wB1QKHb8cSPuSiaBJPDT0BAs8gFs59Sq7TJvdQdbe0n
	0KTMmxr5Fw7B6yyj/czyZuZZajm6gFlZ0a0b4/WdErrB3R5jAaWr7KkqHG0l34HOMMRy
	CDwAmno7LxhYIeUmqdcQZVNJ7A3NGCz02ZtT+rhatW3+qWBkoSS1XxZU7Bll6YVP1Yzx
	r4OA==
X-Gm-Message-State: APjAAAVYMVAMK+cdt5IWZ5mNsKl9/EtySfBwb3OSjuOXaRSeHp9gFYvO
	Fj7nuII/2yJTcCXyt1DrBtyfmhPw
X-Google-Smtp-Source: APXvYqwbMp0D5+mzA20nWd893kPT329EFLK4Xbu6Pd47xBXI/881OdJiIqrXQTJxXnPoYBkrcT8i/A==
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr7530021wmh.63.1566602658855;
	Fri, 23 Aug 2019 16:24:18 -0700 (PDT)
Received: from [192.168.1.110] ([195.147.80.70])
	by smtp.gmail.com with ESMTPSA id m3sm3358161wmc.44.2019.08.23.16.24.18
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 16:24:18 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
Message-ID: <da87277f-ca09-b4e1-d643-c9cc6179b598@GMAIL.COM>
Date: Sat, 24 Aug 2019 00:24:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.68]);
	Fri, 23 Aug 2019 23:24:20 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.68]);
	Fri, 23 Aug 2019 23:24:20 +0000 (UTC) for IP:'209.85.128.50'
	DOMAIN:'mail-wm1-f50.google.com' HELO:'mail-wm1-f50.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.50 mail-wm1-f50.google.com 209.85.128.50
	mail-wm1-f50.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.68
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.30]); Fri, 23 Aug 2019 23:24:32 +0000 (UTC)

I've installed virt-manager, kemU, KVM, and got to creating the VM, I 
pick the .iso, I give it 20GB, I left evertying else at default...

And it didn't boot

I read your guide and did it before writing this...and.....I fire up 
kemu and go to run the VM I made (slinttest) and....it does nothing, it 
just sits there. Is it an issue with how I created the VM?

On 24/08/2019 00:07, Linux for blind general discussion wrote:
> Hello,
>
> Let's create a qemu directory in your $HOME and go there with these
> commands:
>
> mkdir $HOME/qemu
> cd $HOMeqemu
>
> Thjen create a virtual disk of size 2O G (Slint needs around 13G).
> Check first that you have enough space then type:
> qemu-img create disk.raw 20G
>
> Then write a script to set up your VM. Let's name it qemu.sh. here is a
> suggested content:
>
> #/bin/sh
> qemu-system-x86_64 \
> -machine q35 \
> -enable-kvm \
> -cpu host \
> -boot order=d \
> -m 2G \
> -soundhw hda \
> -boot menu=on \
> -display gtk \
> -vga std \
> -drive file=disk.raw,format=raw,media=disk \
> -cdrom slint64-14.2.1.2.iso
>
> Make the script executable:
> chmod 755 qemu.sh
>
> This is a simple example. I assume that the ISO is also in $HOME/qemu,
> else after -cdrom indicate its path.
>
> After installation, cloe the virtukla machibe and before staring it
> again change the boot order to boot on the virtual drive:
> -boot order=c
>
> To know more read "man qemu".
>
> Best,
>
> Didier
>
> On 23/08/2019 22:58, Linux for blind general discussion wrote:
>> Yes I do need help to set up the VM. I use VirtualBox since I know it 
>> works....but can you walk me through the very beginning, I assume I 
>> can use libvert-manager for this, right?
>>
>> Or how do I do this, then. I'm a complete and utter beginner at kemu 
>> honestly
>>
>> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>>> Hello,
>>>
>>> Didier, Slint maintainer, here.
>>>
>>> I suggest to use Qemu instead. It works well, and the sound is way 
>>> better than with VirtualBox.
>>>
>>> That's what I use first to test the new Slint ISOs, before trying 
>>> them on bare metal.
>>>
>>> If you need help to set up the virtual machine, just ask.
>>>
>>> Best regards,
>>>
>>> Didier
>>>
>>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>>> I thought for some reason Vbox (the one from the 18.04 repos) 
>>>> supportd Slackware? I'm not sure though, when I put in Slackware so 
>>>> Vbox can auto find it, it defaulted to Win7. Not...quite what I 
>>>> want. So...yeah, anyone got Slint to work on a VM? I have a 
>>>> perfectly good Ubuntu physical machine, wanted to test Slint out 
>>>> and see if it's any good in a VM
>>>>
>>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>>
>>>>>
>>>>> No longer an option, soled the Mac with the bootcamp, so have to 
>>>>> learn virtualization the linux way, since it is all I have now.
>>>>>
>>>>>
>>>>> Warm regards,
>>>>>
>>>>> Brandt Steenkamp
>>>>>
>>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>>
>>>>> I teach macOS as well as iOS, not because I want to, but because 
>>>>> it's easy.
>>>>>
>>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the 
>>>>>> latest ISO, nothing happens. What settings do I need to config 
>>>>>> for the VM to work successfully?
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
