Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F669BD59
	for <lists+blinux-list@lfdr.de>; Sat, 24 Aug 2019 13:40:35 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 173113086258;
	Sat, 24 Aug 2019 11:40:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BE7BC5C28C;
	Sat, 24 Aug 2019 11:40:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3839118089C8;
	Sat, 24 Aug 2019 11:40:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
	[10.5.11.14])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7OBeDEM003085 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Aug 2019 07:40:13 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 02DC613ACF; Sat, 24 Aug 2019 11:40:13 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx21.extmail.prod.ext.phx2.redhat.com
	[10.5.110.62])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F111917AF3
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:40:10 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 831F718C426C
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 11:40:09 +0000 (UTC)
Received: by mail-wr1-f53.google.com with SMTP id z11so10924779wrt.4
	for <blinux-list@redhat.com>; Sat, 24 Aug 2019 04:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=qe4oDoUtO2Nq4e26qb3bLHkxzRJVt56ArITXTfS5YLQ=;
	b=cVSaDIm9//4mYQfIkjKtMQ1QoroJdj2VIkPzZxFutoaFclTrNPyudGMx4/uy7T6GD9
	6FwoaQU6aZxB2H4rNNYLq/yOoMjyX95KWwbdYZ0peagI9gNo/N5TbeRtpjvGtGSiSZmZ
	hHBfKyf7oDsXNlQXHWICmmmkV+N69ZXrzyMuq4O8J1IJhFQRZCPBMdB5zGX1nXTAdxwe
	Bjb3AIpf/zDY6EdWOSte59zgIjbtKTXuh26QL70pbh3KpFswjRI5guDPnn02KzMfyHIC
	xpSu1kP7nknmEKvX7JylzE/npigVvSlb++veJEJeQ6m7BydAuHsQi0gcyC5kh1bALAgo
	Kjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=qe4oDoUtO2Nq4e26qb3bLHkxzRJVt56ArITXTfS5YLQ=;
	b=anjipFksi4sdA9bEcZD8XkdbN9Ah0xpx5rTleUCTNWdw0pi5b2oWTn6Nyy83QOOtyC
	0PBk2RF//mAu7I4udT1dea0M66W4SFZ+7BT8LupdDkL55istz3ZAl9eETl8LRsOIKPb/
	c/uWq9zhTFroufTMo4oRb1aZ/ie60Re3nHOcys4gNIGPjHgQGJOV70PdnNsWXQU9uSLm
	oTvEjoLSVi2FCjtRxA7hh3GUA/w8vuz7ryb0ov2UXJevvwGjTdVcmx6X4MoPiD/8ldZr
	fT8q8Bs0yKg6SvHQHcW8SyJPDriFHij6hC50+PcKN7wjzLNHNOBxayGiZaQXSsWl5lid
	L0KA==
X-Gm-Message-State: APjAAAXtulHoJzEIAuDayWBt4pW1XBls3eztnI/jf//IXFz2eF6JX+Th
	1axXuDehFsbFh840YUrJgRD3BkIK
X-Google-Smtp-Source: APXvYqxJxdUPVlYWgOrfWOmTRxI92lWCiqKFOC4alV6vFKxE3g2rMhr4B8QMkgAYCXN7CSeW1vWfXw==
X-Received: by 2002:a5d:54ce:: with SMTP id x14mr10595571wrv.237.1566646807943;
	Sat, 24 Aug 2019 04:40:07 -0700 (PDT)
Received: from ?IPv6:2a04:b2c2:807:200:5c4c:f7fa:5d83:63aa?
	([2a04:b2c2:807:200:5c4c:f7fa:5d83:63aa])
	by smtp.gmail.com with ESMTPSA id t13sm6468669wrr.0.2019.08.24.04.40.06
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Aug 2019 04:40:07 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
	<3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
	<56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
Message-ID: <84c8f8a1-3388-a20a-fb3e-27c52655010c@GMAIL.COM>
Date: Sat, 24 Aug 2019 12:40:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <56b7a7a3-0cc8-f1a0-19bb-dceba63f72ce@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 11:40:09 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]);
	Sat, 24 Aug 2019 11:40:09 +0000 (UTC) for IP:'209.85.221.53'
	DOMAIN:'mail-wr1-f53.google.com' HELO:'mail-wr1-f53.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.221.53 mail-wr1-f53.google.com 209.85.221.53
	mail-wr1-f53.google.com <khalfang1366@gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.110.62
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.49]); Sat, 24 Aug 2019 11:40:34 +0000 (UTC)

Okay so from a base Debian/Ubuntu install....what packages do I need to 
do the qemu-img stuff since I tried the man kemu and it kept saying no 
manual for qemu

Is that supposed to happen?

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
