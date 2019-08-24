Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DB89BE0B
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 15:33:59 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D780B30024DA;
	Sat, 24 Aug 2019 13:33:56 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CB5919C58;
	Sat, 24 Aug 2019 13:33:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 33B642551C;
	Sat, 24 Aug 2019 13:33:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
	[10.5.11.22])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7ODXThq006744 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 09:33:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id EB80C1001959; Sat, 24 Aug 2019 13:33:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx17.extmail.prod.ext.phx2.redhat.com
	[10.5.110.46])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E584F1001947
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:33:27 +0000 (UTC)
Received: from prune.jabatus.com (prune.jabatus.com [109.234.162.98])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 0C3423082E6E
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 13:33:26 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.802, required 5, autolearn=disabled, KAM_ASCII_DIVIDERS 0.80,
	SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: 0FF8A1008EB.A6DBE
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=z1C9/oM6akM9btSxtVIxHD4RH0fvOme0vSacc5jhq5s=;
	b=DeTz8+FiqQ30m5Nhx1oQ83WQKc
	RlDDS8B4stkZFomaf19iqObWORhjYsyIiQPJyTlSdwcnDD/HzqKO7eyxzDOU4HLj2QtPD6Jzff136
	J9BGrIIEhqxTFlj38jQNXPrjl41F8heY19PrHrfQ8NJiIPfKqAkBB+RbyMBi2MVaw/w0=; 
Subject: Re: Slint and VM
To: blinux-list@redhat.com
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
	<84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
	<77c97795-52b2-848e-275a-9ea2e8f9b984@slint.fr>
	<3690eea5-ed3e-319e-2c88-c926bcafb152@GMAIL.COM>
Message-ID: <26577346-8dab-e1e6-19ed-c44714fd4ca3@slint.fr>
Date: Sat, 24 Aug 2019 15:33:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3690eea5-ed3e-319e-2c88-c926bcafb152@GMAIL.COM>
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
X-Greylist: Delayed for 16:43:23 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.46]); Sat, 24 Aug 2019 13:33:26 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.46]);
	Sat, 24 Aug 2019 13:33:26 +0000 (UTC) for IP:'109.234.162.98'
	DOMAIN:'prune.jabatus.com' HELO:'prune.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.162.98 prune.jabatus.com 109.234.162.98
	prune.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.46
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.40]); Sat, 24 Aug 2019 13:33:57 +0000 (UTC)

Hello,

If the md5sum matches, and you did format the virtual drive, makig sure
its big enough (20G).

Start again the installer and, as soon as logged in as root type:
lsblk -l -o name,size,fstype,type|grep part|sed "s/ *part//"
and post the output in your next post.

Best,

Didier

On 24/08/2019 15:19, Linux for blind general discussion wrote:
> Okay so I just ran into this with a fresh install of qemu, making my script.
> 
> It boots. It gets to install packages, however....with a fresh, verified ISO...
> 
> Every package returns an error while installing, the errorpkg 2. I've verified the iso. ISo and even got a fresh one to test, and.....it consistently, on qemu, runs into this. Am I the sole one experiencing this or is there something going on with the Slackware UK link from slint.fr (the click here in the install section) one?
> 
> On 24/08/2019 13:39, Linux for blind general discussion wrote:
>> Hello,
>>
>> According to https://packages.debian.org/ you need qemu-utils for the
>> command qemu-img and qemu-system-x86 for the command qemu-system-x86_64
>>
>> That's all I know, I run neither Debian nor Ubuntu.
>>
>> Best,
>>
>> Didier
>>
>>
>> On 24/08/2019 13:40, Linux for blind general discussion wrote:
>>> Okay so from a base Debian/Ubuntu install....what packages do I need to do the qemu-img stuff since I tried the man kemu and it kept saying no manual for qemu
>>>
>>> Is that supposed to happen?
>>>
>>> On 24/08/2019 00:07, Linux for blind general discussion wrote:
>>>> Hello,
>>>>
>>>> Let's create a qemu directory in your $HOME and go there with these
>>>> commands:
>>>>
>>>> mkdir $HOME/qemu
>>>> cd $HOMeqemu
>>>>
>>>> Thjen create a virtual disk of size 2O G (Slint needs around 13G).
>>>> Check first that you have enough space then type:
>>>> qemu-img create disk.raw 20G
>>>>
>>>> Then write a script to set up your VM. Let's name it qemu.sh. here is a
>>>> suggested content:
>>>>
>>>> #/bin/sh
>>>> qemu-system-x86_64 \
>>>> -machine q35 \
>>>> -enable-kvm \
>>>> -cpu host \
>>>> -boot order=d \
>>>> -m 2G \
>>>> -soundhw hda \
>>>> -boot menu=on \
>>>> -display gtk \
>>>> -vga std \
>>>> -drive file=disk.raw,format=raw,media=disk \
>>>> -cdrom slint64-14.2.1.2.iso
>>>>
>>>> Make the script executable:
>>>> chmod 755 qemu.sh
>>>>
>>>> This is a simple example. I assume that the ISO is also in $HOME/qemu,
>>>> else after -cdrom indicate its path.
>>>>
>>>> After installation, cloe the virtukla machibe and before staring it
>>>> again change the boot order to boot on the virtual drive:
>>>> -boot order=c
>>>>
>>>> To know more read "man qemu".
>>>>
>>>> Best,
>>>>
>>>> Didier
>>>>
>>>> On 23/08/2019 22:58, Linux for blind general discussion wrote:
>>>>> Yes I do need help to set up the VM. I use VirtualBox since I know it works....but can you walk me through the very beginning, I assume I can use libvert-manager for this, right?
>>>>>
>>>>> Or how do I do this, then. I'm a complete and utter beginner at kemu honestly
>>>>>
>>>>> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>>>>>> Hello,
>>>>>>
>>>>>> Didier, Slint maintainer, here.
>>>>>>
>>>>>> I suggest to use Qemu instead. It works well, and the sound is way better than with VirtualBox.
>>>>>>
>>>>>> That's what I use first to test the new Slint ISOs, before trying them on bare metal.
>>>>>>
>>>>>> If you need help to set up the virtual machine, just ask.
>>>>>>
>>>>>> Best regards,
>>>>>>
>>>>>> Didier
>>>>>>
>>>>>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>>>>>> I thought for some reason Vbox (the one from the 18.04 repos) supportd Slackware? I'm not sure though, when I put in Slackware so Vbox can auto find it, it defaulted to Win7. Not...quite what I want. So...yeah, anyone got Slint to work on a VM? I have a perfectly good Ubuntu physical machine, wanted to test Slint out and see if it's any good in a VM
>>>>>>>
>>>>>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>>>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>>>>>
>>>>>>>>
>>>>>>>> No longer an option, soled the Mac with the bootcamp, so have to learn virtualization the linux way, since it is all I have now.
>>>>>>>>
>>>>>>>>
>>>>>>>> Warm regards,
>>>>>>>>
>>>>>>>> Brandt Steenkamp
>>>>>>>>
>>>>>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>>>>>
>>>>>>>> I teach macOS as well as iOS, not because I want to, but because it's easy.
>>>>>>>>
>>>>>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the latest ISO, nothing happens. What settings do I need to config for the VM to work successfully?
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
