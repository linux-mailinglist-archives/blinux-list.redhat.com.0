Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 13315164B94
	for <lists+blinux-list@lfdr.de>; Wed, 19 Feb 2020 18:12:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1582132340;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=RdiIgqsHj7hrcJhnZd+TAgBBhPiyt0IW/hkRfVDlIxo=;
	b=IDRuayJOg9i+aqvjlLdJ6YZ2lZpIqniXnR/joKGuS9RNCsnq6h8u/wWVioSsIBMzxhYnIo
	TsWPY008vq/05pit0xb+HFHRlXkIPA68rrpiJJPz5WYSCKmJjPaagwbpDmPywGvXUTS1qr
	tRHcUyfwXGSFAYzRcN3mcDrhsIzUXeY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-267-sF2IFIlVNuibvR_ylylI5A-1; Wed, 19 Feb 2020 12:12:17 -0500
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A754418A6EC3;
	Wed, 19 Feb 2020 17:12:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DC0A1001B00;
	Wed, 19 Feb 2020 17:12:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8EF3835B0D;
	Wed, 19 Feb 2020 17:12:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 01JHC8lj019671 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 19 Feb 2020 12:12:08 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 60E202166B2B; Wed, 19 Feb 2020 17:12:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5CC482166B29
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:12:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DCD668026E8
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 17:12:05 +0000 (UTC)
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-48-8WMsfN98NP-b8pcqojtpqw-1; Wed, 19 Feb 2020 12:12:02 -0500
Received: by mail-pf1-f195.google.com with SMTP id s1so360443pfh.10
	for <blinux-list@redhat.com>; Wed, 19 Feb 2020 09:12:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=rxF8C63Ju/wxMTGWtS/jbcJEczhNm4LUfLNm3/8LCCs=;
	b=WDtneJh1Kos9ClyqXn2BqwoIxz4EKG5ISYnjWPEGSe00js/nFjdoMgZ5I3Y/YSnEP7
	pN20FTXgGCyfBC6h6M1ccwI/SnKY3ZLU2hqEu6of/x0RMIwc4qVZ2Ah8VZsJj5AeQoul
	ZsSQ+Crtqi/vrSDtWYws3XgDnN92FJQdznmY3aYbxKtuqg/AjDm71+SnmtIJ9QIKwGRj
	j+b3vasqY6ZvxzyLfEFHLfJ2jLUifkNY+abomy50H4eQIZ6CHZH6biI38a5dGKdV6hs8
	tZn//QwaF0sbobL62fIjr8UHJKOqU5ficZ569nYuJOYNawbi+zcWEAd8qItul0QOVmKX
	uvTQ==
X-Gm-Message-State: APjAAAWtWKUKUIwc0522PdDTXYGrGXfOeMNLGTt0TzS0cr0BBmoX28D3
	f2wHvMqeQaqjA6a8/sDzH4ZV2mzbwz8=
X-Google-Smtp-Source: APXvYqyXVrrilCFZE1LvIiSK57jKKGMtTaNC1YHDF6K2/urr/8N23xT8r2Seeq0V3K9Fd+afK5/zDg==
X-Received: by 2002:a63:5f4e:: with SMTP id t75mr28288018pgb.7.1582132321176; 
	Wed, 19 Feb 2020 09:12:01 -0800 (PST)
Received: from [192.168.0.13] (174-18-125-165.tcso.qwest.net. [174.18.125.165])
	by smtp.gmail.com with ESMTPSA id 13sm181380pfi.78.2020.02.19.09.12.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 19 Feb 2020 09:12:00 -0800 (PST)
Subject: Re: early warning I hope
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.21.2002180400500.24018@panix1.panix.com>
	<CAJKfDDFSWCnqVdnyjaYhFE5gRUQ8_5+Fd7wij1-k5BF5Q8JRkg@mail.gmail.com>
	<8b00d709-122b-a693-cac3-1630c2bbec7f@free.fr>
	<5d23cbb9-178f-ee53-1c84-a407bfdcf849@verizon.net>
	<a7952a4a-cf2d-7e72-c6a8-662fe2650a7a@gmail.com>
	<alpine.NEB.2.21.2002191200410.29441@panix1.panix.com>
Message-ID: <b52e5171-fc3b-9257-579f-7f3e2d5f4ec7@gmail.com>
Date: Wed, 19 Feb 2020 10:11:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:68.0) Gecko/20100101
	Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.21.2002191200410.29441@panix1.panix.com>
Content-Language: en-US
X-MC-Unique: 8WMsfN98NP-b8pcqojtpqw-1
X-MC-Unique: sF2IFIlVNuibvR_ylylI5A-1
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit

in what part of the installation

do I type auto

On 2/19/2020 10:01 AM, Linux for blind general discussion wrote:
> It has one, and it'll get better by the next iso release.  You run auto
> to get that done.
>
> On Wed, 19 Feb 2020, Linux for blind general discussion wrote:
>
>> Date: Wed, 19 Feb 2020 11:16:56
>> From: Linux for blind general discussion <blinux-list@redhat.com>
>> To: Linux for blind general discussion <blinux-list@redhat.com>
>> Subject: Re: early warning I hope
>>
>> I wish slynt had a auto partition drive feature choice I don't feel
>> cunfortable creating linux partitions manually
>>
>>
>>
>> On 2/19/2020 8:53 AM, Linux for blind general discussion wrote:
>>> I just want to say in this thread that I'm fairly new to Slint and have
>>> found the support very good.?? I appreciate it.
>>>
>>>
>>> I'm not disparaging other distros, by the way.?? I've used Arch, Debian, and
>>> Fedora for fairly long periods.
>>>
>>>
>>> Al
>>>
>>>
>>> On 2/19/20 4:47 AM, Linux for blind general discussion wrote:
>>>> Hi Micha??l,
>>>>
>>>> let me answer to this part of your last message:
>>>>
>>>> Le 19/02/2020 ?? 04:28, Micha??l Caron Couturier a ??crit :
>>>>> On the other side, Slint is Slackware based, out of the 5 majors
>>>>> distributions bases, it's one of the two far less used so the user have
>>>>> barely no community to help him in case of issues.
>>>> Really?
>>>>
>>>> For Slackware proper, there is this a very active forum:
>>>> https://www.linuxquestions.org/questions/slackware-14/
>>>>
>>>> For Slint specifically we recently replaced the former mailing list by a
>>>> new one, cf. this blog post:
>>>> https://slint.fr/blog/welcome-to-the-new-slint-mailing-list.html
>>>> It is very friendly and active, you can check looking at the archives
>>>> for the current month: https://www.freelists.org/archive/slint/02-2020
>>>>
>>>> We have now also a mumble channel dedicated to Slint.
>>>>
>>>> So your statement "no community to help in case of issues" is not true.
>>>> The Slint mailing list is even more active than the debian-accessibility
>>>> mailing list that I also follow <smile>.
>>>> I don't say that to despise Debian which indeed is a good distribution,
>>>> and Debian contributors like Samuel do an outstanding job.
>>>>
>>>> As an aside indeed Slint ships Mate with mate-tweak and Compiz, and
>>>> documents how to get the best of it:
>>>> http://slackware.uk/slint/x86_64/slint-14.2.1/doc/Accessibility/CompizKeyBindings
>>>>
>>>>
>>>> Slint also allows to switch between console mode and a desktop without
>>>> loosing speech out of the box, which you can do with other distributions
>>>> only with a not obvious post-install manual configuration.
>>>>
>>>> That's not to say Slint is perfect, it certainly isn't. But we all ears
>>>> to bug reports and requests for help and enhancements.
>>>>
>>>> Best regards,
>>>>
>>>> Didier Spaier
>>>>
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

