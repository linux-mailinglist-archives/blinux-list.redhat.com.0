Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D81A9B8B8
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 01:07:54 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id B993A3082131;
	Fri, 23 Aug 2019 23:07:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 28B1460605;
	Fri, 23 Aug 2019 23:07:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 46A0C2551B;
	Fri, 23 Aug 2019 23:07:48 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NN7d7j019054 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 19:07:39 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7711E600C4; Fri, 23 Aug 2019 23:07:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx12.extmail.prod.ext.phx2.redhat.com
	[10.5.110.41])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 70B50600C1
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 23:07:37 +0000 (UTC)
Received: from swim.jabatus.com (swim.jabatus.com [109.234.166.69])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CDADC3091754
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 23:07:35 +0000 (UTC)
X-Spam-Status: No
X-MailPropre-MailScanner-From: didier@slint.fr
X-MailPropre-MailScanner-SpamCheck: not spam, SpamAssassin (not cached,
	score=0.802, required 5, autolearn=disabled, KAM_ASCII_DIVIDERS 0.80,
	SPF_HELO_NONE 0.00, SPF_NONE 0.00)
X-MailPropre-MailScanner: Not scanned: please contact your Internet E-Mail
	Service Provider for details
X-MailPropre-MailScanner-ID: B1437100AAF.A4F64
X-MailPropre-MailScanner-Information: Please contact the ISP for more
	information
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=slint.fr;
	s=default;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version
	:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=ZUodVWVO5nyNE6P4RqiCn0+C3u1iVMu6N/WHa/aiR00=;
	b=u4Bcs/7F1epSY589VWJ4JyyJdS
	/dYLdzSz9iyLldpR8bctNQekoiour/y/Q19qFLSPr/CuokpS0FA0a+KoIot347nlKw898MibVhF9U
	Ej7p3v4Do/XYRcqTrLP2GkRPNyi8aZFdvEYzz5gfU3A2RW7l+QogMq2Z5Hy3mjMH3u0k=; 
Subject: Re: Slint and VM
To: blinux-list@redhat.com
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
Message-ID: <56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
Date: Sat, 24 Aug 2019 01:07:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
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
X-Greylist: Delayed for 02:18:32 by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.41]); Fri, 23 Aug 2019 23:07:36 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.41]);
	Fri, 23 Aug 2019 23:07:36 +0000 (UTC) for IP:'109.234.166.69'
	DOMAIN:'swim.jabatus.com' HELO:'swim.jabatus.com'
	FROM:'didier@slint.fr' RCPT:''
X-RedHat-Spam-Score: -0.098  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	SPF_HELO_NONE,
	SPF_NONE) 109.234.166.69 swim.jabatus.com 109.234.166.69
	swim.jabatus.com <didier@slint.fr>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.41
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.42]); Fri, 23 Aug 2019 23:07:53 +0000 (UTC)

Hello,

Let's create a qemu directory in your $HOME and go there with these
commands:

mkdir $HOME/qemu
cd $HOMeqemu

Thjen create a virtual disk of size 2O G (Slint needs around 13G).
Check first that you have enough space then type:
qemu-img create disk.raw 20G

Then write a script to set up your VM. Let's name it qemu.sh. here is a
suggested content:

#/bin/sh
qemu-system-x86_64 \
-machine q35 \
-enable-kvm \
-cpu host \
-boot order=d \
-m 2G \
-soundhw hda \
-boot menu=on \
-display gtk \
-vga std \
-drive file=disk.raw,format=raw,media=disk \
-cdrom slint64-14.2.1.2.iso

Make the script executable:
chmod 755 qemu.sh

This is a simple example. I assume that the ISO is also in $HOME/qemu,
else after -cdrom indicate its path.

After installation, cloe the virtukla machibe and before staring it
again change the boot order to boot on the virtual drive:
-boot order=c

To know more read "man qemu".

Best,

Didier

On 23/08/2019 22:58, Linux for blind general discussion wrote:
> Yes I do need help to set up the VM. I use VirtualBox since I know it works....but can you walk me through the very beginning, I assume I can use libvert-manager for this, right?
> 
> Or how do I do this, then. I'm a complete and utter beginner at kemu honestly
> 
> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>> Hello,
>>
>> Didier, Slint maintainer, here.
>>
>> I suggest to use Qemu instead. It works well, and the sound is way better than with VirtualBox.
>>
>> That's what I use first to test the new Slint ISOs, before trying them on bare metal.
>>
>> If you need help to set up the virtual machine, just ask.
>>
>> Best regards,
>>
>> Didier
>>
>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>> I thought for some reason Vbox (the one from the 18.04 repos) supportd Slackware? I'm not sure though, when I put in Slackware so Vbox can auto find it, it defaulted to Win7. Not...quite what I want. So...yeah, anyone got Slint to work on a VM? I have a perfectly good Ubuntu physical machine, wanted to test Slint out and see if it's any good in a VM
>>>
>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>
>>>>
>>>> No longer an option, soled the Mac with the bootcamp, so have to learn virtualization the linux way, since it is all I have now.
>>>>
>>>>
>>>> Warm regards,
>>>>
>>>> Brandt Steenkamp
>>>>
>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>
>>>> I teach macOS as well as iOS, not because I want to, but because it's easy.
>>>>
>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the latest ISO, nothing happens. What settings do I need to config for the VM to work successfully?
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
