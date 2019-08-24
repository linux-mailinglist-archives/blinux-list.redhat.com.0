Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B1E9BDB5
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 14:36:43 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id CE82A3082231;
	Sat, 24 Aug 2019 12:36:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 86FFC5D6D0;
	Sat, 24 Aug 2019 12:36:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id ACB7224F30;
	Sat, 24 Aug 2019 12:36:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
	[10.5.11.12])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OCacS1005257 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 08:36:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3D47E60F88; Sat, 24 Aug 2019 12:36:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx19.extmail.prod.ext.phx2.redhat.com
	[10.5.110.48])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 386AA16939
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:36:35 +0000 (UTC)
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
	[209.85.161.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 991A7307D88C
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 12:36:34 +0000 (UTC)
Received: by mail-yw1-f47.google.com with SMTP id x74so5011751ywx.6
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 05:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:date:subject:message-id
	:references:in-reply-to:to;
	bh=9OUh1CnLs5sBvHKZNBQZX4cC+Vfb7iX30m4YAmvZJVM=;
	b=oGmvOjTUeSNqy37Oz1j0m7ktA+oxQdzJoLbIbpeS8wYCdlMNF3mV71ot2DzQgLW+Ie
	54gkOt9DxhELPoLqhXXcpsY+yBctKkZIgi5ganQdDD9RfSneWErrtrJ3LZdp/R703s/K
	FbHlucvKgCEuW1eT1fZZypziVDZXh+Bqm4Z9h36Pl74x2BtQC8xoC8DtTpTUZBVIeEGp
	HFokKke+1kxs3/Hod+5bwE8XKvSbZd8DLKRR3y7Yk0AWnix9sDA4zhWD625Klv7SZuTT
	5ijvk49v1NdnMDkUFILXBin6bib/kZzgZc08bcSS5/YQkeFsDyXWMueVOiDg9MPJFH2p
	jjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version:date
	:subject:message-id:references:in-reply-to:to;
	bh=9OUh1CnLs5sBvHKZNBQZX4cC+Vfb7iX30m4YAmvZJVM=;
	b=KrpDoNQVi69x7DwoSVZ0RpM9qs3G5JPp7Z00xmY2jjMwLjhLpwkKqP3DSCv5F4Inb2
	UT5hLwKG77c6nU9dLsi8y70j2ClD+NeSL2vnwErM3Ez3BIX0WvD7W5JuflOP7lx8AFwG
	sAahLH6ih6sirRpOV3Z8MPoBE+EMzn+om+CD6eYPt+vsJhb/5QtfcTY/hn1wbt9uPxaa
	Vr8tuaSzh9p6NUJcHmgDnB4CJZtq/cGZCE0LG55kpDBZAPO6ZcV5C2ahxkJEKXZqfKWf
	d2UajLSyIfBg94//Rq4Eg9TbDiV+DbzF2f1AusEYPLDtXpsw/h/tnALqjki2haY27pzh
	aRqQ==
X-Gm-Message-State: APjAAAX/ytFhxez3h2wDpPmCpGP1xbdP48uCGNPpxqgGdIo/TvKkRsfn
	qwYE/2sxyekc8uxak3Q/T5gD1pLBfbY=
X-Google-Smtp-Source: APXvYqzMPnSPqW870kFNjfH26aWZeoFGh+EnZ45njIuwZpVw2zu+4EX+GZtbGRQ7ZCep7xw55aLzQg==
X-Received: by 2002:a81:620a:: with SMTP id w10mr6606471ywb.159.1566650193735; 
	Sat, 24 Aug 2019 05:36:33 -0700 (PDT)
Received: from [192.168.50.158] (184-090-011-149.res.spectrum.com.
	[184.90.11.149]) by smtp.gmail.com with ESMTPSA id
	d131sm1161393ywc.46.2019.08.24.05.36.33 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 05:36:33 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Sat, 24 Aug 2019 08:36:32 -0400
Subject: Re: Slint and VM
Message-Id: <84989209-1DEA-4420-9553-E38CD62AF801@gmail.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
	<84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
In-Reply-To: <84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
To: blinux-list@redhat.com
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
	(mx1.redhat.com [10.5.110.48]);
	Sat, 24 Aug 2019 12:36:34 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.48]);
	Sat, 24 Aug 2019 12:36:34 +0000 (UTC) for IP:'209.85.161.47'
	DOMAIN:'mail-yw1-f47.google.com' HELO:'mail-yw1-f47.google.com'
	FROM:'rmann0581@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.161.47 mail-yw1-f47.google.com 209.85.161.47
	mail-yw1-f47.google.com <rmann0581@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.48
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x7OCacS1005257
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.47]); Sat, 24 Aug 2019 12:36:42 +0000 (UTC)

Did you try searching for Qemu packages?  I believe you could do something like apt-cache search qemu from the terminal.

Sent from my iPhone

> On Aug 24, 2019, at 7:40 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Okay so from a base Debian/Ubuntu install....what packages do I need to do the qemu-img stuff since I tried the man kemu and it kept saying no manual for qemu
> 
> Is that supposed to happen?
> 
>> On 24/08/2019 00:07, Linux for blind general discussion wrote:
>> Hello,
>> 
>> Let's create a qemu directory in your $HOME and go there with these
>> commands:
>> 
>> mkdir $HOME/qemu
>> cd $HOMeqemu
>> 
>> Thjen create a virtual disk of size 2O G (Slint needs around 13G).
>> Check first that you have enough space then type:
>> qemu-img create disk.raw 20G
>> 
>> Then write a script to set up your VM. Let's name it qemu.sh. here is a
>> suggested content:
>> 
>> #/bin/sh
>> qemu-system-x86_64 \
>> -machine q35 \
>> -enable-kvm \
>> -cpu host \
>> -boot order=d \
>> -m 2G \
>> -soundhw hda \
>> -boot menu=on \
>> -display gtk \
>> -vga std \
>> -drive file=disk.raw,format=raw,media=disk \
>> -cdrom slint64-14.2.1.2.iso
>> 
>> Make the script executable:
>> chmod 755 qemu.sh
>> 
>> This is a simple example. I assume that the ISO is also in $HOME/qemu,
>> else after -cdrom indicate its path.
>> 
>> After installation, cloe the virtukla machibe and before staring it
>> again change the boot order to boot on the virtual drive:
>> -boot order=c
>> 
>> To know more read "man qemu".
>> 
>> Best,
>> 
>> Didier
>> 
>>> On 23/08/2019 22:58, Linux for blind general discussion wrote:
>>> Yes I do need help to set up the VM. I use VirtualBox since I know it works....but can you walk me through the very beginning, I assume I can use libvert-manager for this, right?
>>> 
>>> Or how do I do this, then. I'm a complete and utter beginner at kemu honestly
>>> 
>>>> On 23/08/2019 21:48, Linux for blind general discussion wrote:
>>>> Hello,
>>>> 
>>>> Didier, Slint maintainer, here.
>>>> 
>>>> I suggest to use Qemu instead. It works well, and the sound is way better than with VirtualBox.
>>>> 
>>>> That's what I use first to test the new Slint ISOs, before trying them on bare metal.
>>>> 
>>>> If you need help to set up the virtual machine, just ask.
>>>> 
>>>> Best regards,
>>>> 
>>>> Didier
>>>> 
>>>>> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>>>>> I thought for some reason Vbox (the one from the 18.04 repos) supportd Slackware? I'm not sure though, when I put in Slackware so Vbox can auto find it, it defaulted to Win7. Not...quite what I want. So...yeah, anyone got Slint to work on a VM? I have a perfectly good Ubuntu physical machine, wanted to test Slint out and see if it's any good in a VM
>>>>> 
>>>>>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>>>>> I tried this under Windows and VMWare player, had the same issue.
>>>>>> 
>>>>>> 
>>>>>> No longer an option, soled the Mac with the bootcamp, so have to learn virtualization the linux way, since it is all I have now.
>>>>>> 
>>>>>> 
>>>>>> Warm regards,
>>>>>> 
>>>>>> Brandt Steenkamp
>>>>>> 
>>>>>> Sent using thunderbird on Ubuntu 19.04.
>>>>>> 
>>>>>> I teach macOS as well as iOS, not because I want to, but because it's easy.
>>>>>> 
>>>>>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the latest ISO, nothing happens. What settings do I need to config for the VM to work successfully?
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

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
