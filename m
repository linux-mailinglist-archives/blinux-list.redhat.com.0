Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F639B7F5
	for <lists+blinux-list@lfdr.de>; Fri, 23 Aug 2019 22:58:28 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 7AEBC309BDA0;
	Fri, 23 Aug 2019 20:58:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5C4D9100194E;
	Fri, 23 Aug 2019 20:58:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 302AA2551C;
	Fri, 23 Aug 2019 20:58:26 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
	[10.5.11.11])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x7NKwMFY015895 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 23 Aug 2019 16:58:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A1554600C4; Fri, 23 Aug 2019 20:58:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx21.extmail.prod.ext.phx2.redhat.com
	[10.5.110.62])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9AF8D600C1
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:58:20 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 666C518C4271
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 20:58:19 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id m125so10288938wmm.3
	for <blinux-list@redhat.com>; Fri, 23 Aug 2019 13:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:subject:to:references:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=LlJvdB9fP7HQakzU75oTibu5vapqhTRTIRCXAhWYUCs=;
	b=npdwcoCxd2tZc2kjYYE0eoFWzjeoI4+LQ82AXnXtj8f+ReRivFgWlfD5vlJbOaKXSI
	DNJQPPlBdNEIo+9UNVRhnU8ENlMhU0dmqL0MyZGxO8bBHaEzA5BHfc8BusXlBfGlOypL
	plMjA7h1NF3J8NMbiaWmMbGOBch1Mgo7oGSBJMqiHhkKDhNNeKOAPTt5Jqpytt1CVTnP
	dce2MaCUB4AubMg35u58C7qWhDDiDQpV/SX8ACIuVYA9VGFtk4zvqVcSElumlhdt1ps1
	KXo9Bmn2iObK4PuTe51JKP0AqvzjHU8qlUdlKtrbEF69LyK0szPt8ThQJur8hsqE+pxP
	IPWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=LlJvdB9fP7HQakzU75oTibu5vapqhTRTIRCXAhWYUCs=;
	b=kWUEY/JMgnu2877a1IrkSBTZ0n1Zk0gYbRWo1EEv1HPdR/Wky1zchZW2z6ah/08Uso
	bUp+PLSvLDvaLGop7Jg/ZENmMl7dOA/iPVrIhqgJSA03K8QCMh7gJ67U1/Yp6+Dy/9pn
	prZKDjyZIzjfeLo439vAzbP2NRCbH8pYLxvUANJY03stOIws9+MMBPrRw0AKq//nUE2Y
	PScSA+TLXAf1iSuyWGovesGncbkAg4kj0bHKJQGD3F/zaXQgL6wNR9f8S9fbMZTih6j3
	7GwoBkb9MAuao91UKKWYUhKXePF5PsPZs8FfOKKLhCQmLUcktmD2ojKK1GJ6lXtJtMHj
	dh/Q==
X-Gm-Message-State: APjAAAXUE5WaK9lcA1Uy8/Jd0NFd0OvX3qt1JdGkA5lD88SbvA/Elrgp
	xReVVNrDa/73P+avOJfwecgmkSG1
X-Google-Smtp-Source: APXvYqy4PVrS8AdPurSAgPPeV2Or/1XrRz7/nmjplhOM21pXeNRrwbq+6maFQ044XWhwPT3/vK3H1A==
X-Received: by 2002:a1c:4d05:: with SMTP id o5mr7247473wmh.63.1566593897836;
	Fri, 23 Aug 2019 13:58:17 -0700 (PDT)
Received: from [192.168.1.110] ([195.147.80.70])
	by smtp.gmail.com with ESMTPSA id r18sm3043012wmh.6.2019.08.23.13.58.17
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Aug 2019 13:58:17 -0700 (PDT)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Slint and VM
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <9371f6c4-35d7-7990-67ed-32cacb736d47@GMAIL.COM>
	<8f446f63-2eb6-6d85-5216-3295372bb7a7@gmail.com>
	<f4214c34-41af-8dad-ee32-6598873714b9@GMAIL.COM>
	<78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
Message-ID: <3e503f57-08c0-6cc2-9017-024eb2af9484@GMAIL.COM>
Date: Fri, 23 Aug 2019 21:58:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <78bc145a-aafa-9d61-72ea-788a2712de0d@slint.fr>
Content-Language: en-US
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
	(mx1.redhat.com [10.5.110.62]);
	Fri, 23 Aug 2019 20:58:19 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.6.2 (mx1.redhat.com [10.5.110.62]);
	Fri, 23 Aug 2019 20:58:19 +0000 (UTC) for IP:'209.85.128.46'
	DOMAIN:'mail-wm1-f46.google.com' HELO:'mail-wm1-f46.google.com'
	FROM:'khalfang1366@gmail.com' RCPT:''
X-RedHat-Spam-Score: 0.151  (DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	FREEMAIL_ENVFROM_END_DIGIT, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,
	SPF_PASS) 209.85.128.46 mail-wm1-f46.google.com 209.85.128.46
	mail-wm1-f46.google.com <khalfang1366@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.45]); Fri, 23 Aug 2019 20:58:26 +0000 (UTC)

Yes I do need help to set up the VM. I use VirtualBox since I know it 
works....but can you walk me through the very beginning, I assume I can 
use libvert-manager for this, right?

Or how do I do this, then. I'm a complete and utter beginner at kemu 
honestly

On 23/08/2019 21:48, Linux for blind general discussion wrote:
> Hello,
>
> Didier, Slint maintainer, here.
>
> I suggest to use Qemu instead. It works well, and the sound is way 
> better than with VirtualBox.
>
> That's what I use first to test the new Slint ISOs, before trying them 
> on bare metal.
>
> If you need help to set up the virtual machine, just ask.
>
> Best regards,
>
> Didier
>
> On 23/08/2019 22:11, Linux for blind general discussion wrote:
>> I thought for some reason Vbox (the one from the 18.04 repos) 
>> supportd Slackware? I'm not sure though, when I put in Slackware so 
>> Vbox can auto find it, it defaulted to Win7. Not...quite what I want. 
>> So...yeah, anyone got Slint to work on a VM? I have a perfectly good 
>> Ubuntu physical machine, wanted to test Slint out and see if it's any 
>> good in a VM
>>
>> On 23/08/2019 21:08, Linux for blind general discussion wrote:
>>> I tried this under Windows and VMWare player, had the same issue.
>>>
>>>
>>> No longer an option, soled the Mac with the bootcamp, so have to 
>>> learn virtualization the linux way, since it is all I have now.
>>>
>>>
>>> Warm regards,
>>>
>>> Brandt Steenkamp
>>>
>>> Sent using thunderbird on Ubuntu 19.04.
>>>
>>> I teach macOS as well as iOS, not because I want to, but because 
>>> it's easy.
>>>
>>> On 2019/08/23 22:04, Linux for blind general discussion wrote:
>>>> Okay, I'm trying to set Slint up in Virtualbox but....using the 
>>>> latest ISO, nothing happens. What settings do I need to config for 
>>>> the VM to work successfully?
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list
