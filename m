Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id C0607164791
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 15:59:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582124344;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=icAb4V8NmRQ93bSyFpS73Wrj6d4uNawlvrXclDA6OCs=;
	b=IYSNh4TX9YMPK3FQpwe5hPqpWi1WWE5qHmQ6YQwMa6TD7fr90SEMQVx0Zwbq1TVy+v11Sn
	SUjZ5vnNqp3sdjDxUkDhVO15tckDjRgn3l1tx+hVtxSgphxvyvpPIFw2S+713z7NsJyDEw
	yjp9beW0jW5b867j1FFWz1iYK5XkBTg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-146-aNAf0ECJNCm-7hXt7nSTmw-1; Wed, 19 Feb 2020 09:59:01 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D654E1052BA1;
	Wed, 19 Feb 2020 14:58:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 35CB489F01;
	Wed, 19 Feb 2020 14:58:54 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB99735AE2;
	Wed, 19 Feb 2020 14:58:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JEwnmI011984 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 09:58:50 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D9A8310AF425; Wed, 19 Feb 2020 14:58:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D4AA910AF420
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:58:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 813038EC751
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 14:58:47 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-61-w3Pr0F6lO_yMS8uvEmW4jQ-1; Wed, 19 Feb 2020 09:58:45 -0500
Received: by mail-wr1-f52.google.com with SMTP id c9so884423wrw.8
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 06:58:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:subject:to:references:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=shgFbgpNDIYhEmUWSD0MJn7dyIQGalZCC4GtChU3Vfc=;
	b=N225VD6e7NdtMJ4WWBmShJJb9rp0I0VSwTQYpICyy2BvuezylJZjvkHQNjpgKBDhzi
	5uXu9MyE9hYNUFtfVXIiNMkA3wbx6dp9g+XYeYx2q2+h9mHaHG6YQJb26i8beu2pKP7D
	roEIz4Lza+YD30+cnQ9aNfiMcYZTwo4rtBf1FW9LThFruSy5GYSqbDfdGx/AFQArYg9o
	7r2hOFjqm6TADVQn9mYcpAF0et6PmtaY2jrbp0/0sUeQSh425Pri4L9pxUMcgRrl3qMh
	wECBh03DOqCbpkX3lA5X5q/Tzul2ZDyJAocDejxVjTis+CbqcYB/rYGZ+rXvWJM/HDyR
	RTaA==
X-Gm-Message-State: APjAAAVJI6qQuP/2wNDY3MVci0zBdIYwZii/00larCtM45KJUKqjbmKn
	six7ipUrf1tyQRGp9vyh1NxxoNlK
X-Google-Smtp-Source: APXvYqykUj13CUCbER0YmrMuYO6AT6pKM+M/e41ZWzWZz4DgqNycRuIrMuf1HvUx1ue3N0Qf7ONhqw==
X-Received: by 2002:adf:f10a:: with SMTP id r10mr36787165wro.202.1582124323602;
	Wed, 19 Feb 2020 06:58:43 -0800 (PST)
Received: from ?IPv6:2a04:b2c2:1810:500:5986:8698:7100:1224?
	([2a04:b2c2:1810:500:5986:8698:7100:1224])
	by smtp.gmail.com with ESMTPSA id v15sm80723wrf.7.2020.02.19.06.58.40
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Feb 2020 06:58:40 -0800 (PST)
X-Google-Original-From: Jace Kattalakis <KHALFANG1366@GMAIL.COM>
Subject: Re: Getting started with Debian
To: blinux-list@redhat.com
References: <28075e6a-979d-c1b5-cc1f-7ead9c893dac@GMAIL.COM>
	<alpine.NEB.2.21.2002190617580.12705@panix1.panix.com>
	<6d42bdc1-f6c8-1e64-64e8-702f030cc84d@GMAIL.COM>
	<alpine.NEB.2.21.2002190950470.18901@panix1.panix.com>
Message-ID: <939133a6-c6f6-d1fb-bf9a-57da27808e6b@GMAIL.COM>
Date: Wed, 19 Feb 2020 14:58:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002190950470.18901@panix1.panix.com>
Content-Language: en-US
X-MC-Unique: w3Pr0F6lO_yMS8uvEmW4jQ-1
X-MC-Unique: aNAf0ECJNCm-7hXt7nSTmw-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

Well, that went easier than expected. Virtual system up and going with a 
few tweaks to qemu
On 19/02/2020 14:51, Linux for blind general discussion wrote:
> Those instructions will work on hard iron, additional steps are
> necessary to properly prepare for virtual installs and I haven't got
> into virtual installs so I can't help you with those.
>
> On Wed, 19 Feb 2020, Linux for blind general discussion wrote:
>
>> Date: Wed, 19 Feb 2020 08:25:07
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: blinux-list@redhat.com
>> Subject: Re: Getting started with Debian
>>
>> I'm more referring to going from a totally fresh VM and doing it that way.
>> \But, your instructions should work, correct?
>>
>> On 19/02/2020 11:26, Linux for blind general discussion wrote:
>>> If you already have linux and wget on a system,
>>> wget -bc
>>> https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/10.3.0+nonfree/amd64/iso-dvd/firmware-10.3.0-amd64-DVD-1.iso
>>> probably will help.
>>> It starts up silent so hit the s key then hit enter to get a screen
>>> reader going.
>>> I'm recommending this since you can stack the deck in terms of most
>>> awkward software and get a system installed.
>>> Get into the main menu by hitting < repeatedly until the main numbered
>>> menu comes up and choose the selection to check disk integrity first.
>>> If that passes, you may want to consider setting notification priority
>>> to low and saving installation logs to a mounted file system and then
>>> continue the installation
>>> A long long time ago, the main menu program on acbradio used to have
>>> programs demonstrating linux installations one of which was a debian
>>> installation from a now obsolete version of debian.  You control your
>>> flavor of distribution by editing /etc/apt/sources.list.  And for now,
>>> what you call testing is better known as bullseye.
>>> I hope this helps.
>>> On Wed, 19 Feb 2020,
>>> Linux for blind general discussion wrote:
>>>
>>>> Date: Wed, 19 Feb 2020 05:23:40
>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>> To: Linux for blind general discussion <blinux-list@redhat.com>
>>>> Subject: Getting started with Debian
>>>>
>>>> So, since Debian got brought up on the list...
>>>>
>>>> What all do I need to get started with it, exactly? I'd like to get a
>>>> system
>>>> up and going on debian-testing, and set it up how I want
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
>>>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
>>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

