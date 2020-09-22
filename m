Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 20297273D93
	for <lists+blinux-list@lfdr.de>; Tue, 22 Sep 2020 10:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600764158;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=8MXLqpePSsQQyJsSRQRZGzSJwlRPTR0wU2Z+LVj8dHs=;
	b=YImKaHBY2iV07yrsvIgJ3mqOXQ+GojYUpTZIFQ2wECayPLAh4BXoksLZijLKaw1QqAWMnL
	GRecFTuOp4XwQPaBrALO3N2cFSalNEYVvGRU4//CyV6fCwxeGtO/AEDlg2vlagyZdG8Tli
	4qD4IF6nnn2rJZWxXUFJ+hRNJNV3ceQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-342-V1teO03EO2aFDEcypFZJDw-1; Tue, 22 Sep 2020 04:42:36 -0400
X-MC-Unique: V1teO03EO2aFDEcypFZJDw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89D3D100A60D;
	Tue, 22 Sep 2020 08:42:31 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1919B27C5A;
	Tue, 22 Sep 2020 08:42:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D5ADD1826D2D;
	Tue, 22 Sep 2020 08:42:22 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08M8g8d1024137 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Sep 2020 04:42:09 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D8BA710F26ED; Tue, 22 Sep 2020 08:42:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D2F4E10F26EE
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 08:42:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 755BF80096B
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 08:42:06 +0000 (UTC)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-138-n-uMcA9rOsibQTaeOg9HrA-1; Tue, 22 Sep 2020 04:42:03 -0400
X-MC-Unique: n-uMcA9rOsibQTaeOg9HrA-1
Received: by mail-wr1-f51.google.com with SMTP id j2so16091062wrx.7
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 01:42:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Oul7mTRjZlfUsogTFYA9BRL9iyyUFCw6O9p7wzWzs1I=;
	b=bGleRlDCfhYzN1zmCVQya7viiK5OFNI7NQxZdFM2LcLSozJyE+H1IDg33KIy58Y42V
	dIIKZepmcqKIgK+9vP83G9vfUwt2tJS5lRTx1qAQ53g5Zjw+cXWYNmc5TzPjqV2O1Bvf
	/jfchpXv+wsJbps10qlq60CuQ0IqOfBndbo3XSl8MmAgSQFfC5ut3vh/iSr7pXVD9qQZ
	sGKQCIde8FRsAlru1rZwMWUlEeKyJE7BB3wDXD4j32iO62ARNf5Xk199aI1I35i3WQ2O
	6TuXanOtdy4aBSShEKFwR4LKc2bAvVYB+hG1xf5luYoPJnQqI54bFLxKnW/WUXtLsM4/
	jDXg==
X-Gm-Message-State: AOAM533ldnVQ3hcc3odTikP4mpLAf2rs+23Zqi+8cSllmNFIMr5wM7sp
	RVZ1VMNdpGzSIuV+J+bAhSSiBb7BWcbWHw==
X-Google-Smtp-Source: ABdhPJwZ6rs6pUNZjlNLJvefURuWKeiyqv8sB3WevQLV6iuj9gCaj0GHluIhafi3EwybJwWgHPf1Dg==
X-Received: by 2002:a5d:68d1:: with SMTP id p17mr3895429wrw.378.1600764122297; 
	Tue, 22 Sep 2020 01:42:02 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	q15sm24689344wrr.8.2020.09.22.01.42.01 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 22 Sep 2020 01:42:01 -0700 (PDT)
Subject: Re: ebook-speaker/UTF-8 long files
To: blinux-list@redhat.com
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
	<20200920.133216.759.57@[192.168.1.130]>
	<b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
	<20200920.143000.205.58@[192.168.1.130]>
	<2be0d005-9db4-a3b2-64fc-2e57eeb85c7e@gmail.com>
	<20200920.150321.852.59@[192.168.1.130]>
Message-ID: <16826b51-1633-7e30-c0b2-84c03e46136b@gmail.com>
Date: Tue, 22 Sep 2020 09:42:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920.150321.852.59@[192.168.1.130]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

After doing that, it doesn't read in ebook-speaker. Instead it runs 
through and converts it into a 2.wav file in my home folder...is that 
normal behavior?

On 20/09/2020 16:03, Linux for blind general discussion wrote:
> Oh my fault then. Sorry about that.
> It looks like you will have to use fmt or fold to set your lines to a specific length. Ebook-convert does not seem to have parameters to set minimum line character lengths.
>
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 20 Sep 2020 15:35:07 +0100
> Subject: Re: ebook-speaker/UTF-8 long files
>
>> Fixed it, that command was missing an i in --asciiize
>>
>> Even with the convert done, it says it's an ASCII file with long lines,
>> please wait, then dumps me back to the terminal as before however. Is it
>> that the book's too large for ebook-speaker to handle or?
>>
>> On 20/09/2020 15:30, Linux for blind general discussion wrote:
>>> What sort of error.
>>>
>>> ----- Original Message -----
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: blinux-list@redhat.com
>>> Date: Sun, 20 Sep 2020 15:19:50 +0100
>>> Subject: Re: ebook-speaker/UTF-8 long files
>>>
>>>> That just give me an error on input/output files however though
>>>>
>>>> On 20/09/2020 14:32, Linux for blind general discussion wrote:
>>>>> Try this
>>>>> ebook-convert file.mobi file.txt --linearize-tables --asciize
>>>>> See if that fixes your problem.
>>>>> Rob
>>>>>
>>>>> ----- Original Message -----
>>>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>>>> To: blinux-list@redhat.com
>>>>> Date: Sun, 20 Sep 2020 14:07:24 +0100
>>>>> Subject: Re: ebook-speaker/UTF-8 long files
>>>>>
>>>>>> Tim, it's ebook-convert from the Calibre package, and yes they are .mobi
>>>>>> format originally, and given I've not found a way to natively read them
>>>>>> on Linux with Orca, I figured okay, I'll convert them. They do display
>>>>>> fine in Pluma however and I can read them that way, but I'd like the
>>>>>> convenience of ebook-speaker really.
>>>>>>
>>>>>> On 20/09/2020 13:30, Linux for blind general discussion wrote:
>>>>>>> Tim here.  You say "It tells me to wait", but it's hard to tell
>>>>>>> whether it's "ebook-converr" or "ebook-speaker" that's giving the
>>>>>>> error.  So it's hard to tell whether it's source lines in the
>>>>>>> original ebook that are giving trouble (in which case it would help
>>>>>>> to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
>>>>>>> If it's the former, it sounds like an issue with "ebook-converr"
>>>>>>> which I'm not sure I know how to deal with other than to try a
>>>>>>> different program.  If it's successfully producing .txt files but
>>>>>>> they have long lines that choke "ebook-speaker", you might be able to
>>>>>>> use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
>>>>>>> shorter and hopefully don't choke "ebook-speaker".
>>>>>>>
>>>>>>> -tim
>>>>>>>
>>>>>>> On September 20, 2020, Linux for blind general discussion wrote:
>>>>>>>> So I just ran into this and was wondering if anyone else has. I've
>>>>>>>> converted ebooks to .txt with ebook-converr and wanted to run them
>>>>>>>> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
>>>>>>>> long phrases and give sme numbers, then does....precisely nothing,
>>>>>>>> boots me back to the terminal with a bell sound...
>>>>>>>>
>>>>>>>> Any ideas?
>>>>>>>>
>>>>>>>> _______________________________________________
>>>>>>>> Blinux-list mailing list
>>>>>>>> Blinux-list@redhat.com
>>>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> Blinux-list mailing list
>>>>>>> Blinux-list@redhat.com
>>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>>
>>>>>>
>>>>> _______________________________________________
>>>>> Blinux-list mailing list
>>>>> Blinux-list@redhat.com
>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
>>>>
>>>>
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

