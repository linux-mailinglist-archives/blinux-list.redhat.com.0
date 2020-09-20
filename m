Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 6B74E271504
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 16:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600612525;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I6xQg2w91ZKTZXeU5Sw+zJoVlRMGtdogOihYe/xAujM=;
	b=YzvEiRqvjZ0nU1j7CKz/pueW29YXkWSNvIdIOHV+DyPJL2RYK4VQC7cIc4PkPdF8ikq7BF
	Wkiqyzu3WNitUhN2YC5nKdliPgxOqPdbOFRNMhzXnlWOYyVccqJrHkKPEu+aS/2BjHeMmD
	P8umbqmEE4pGlGl+DkwmrvVyEcCq5ug=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-aztVqYdlMEasAW4vOBOUxg-1; Sun, 20 Sep 2020 10:35:22 -0400
X-MC-Unique: aztVqYdlMEasAW4vOBOUxg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9605E802B6A;
	Sun, 20 Sep 2020 14:35:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7A1651002388;
	Sun, 20 Sep 2020 14:35:19 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2549444A7F;
	Sun, 20 Sep 2020 14:35:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KEZGD2007047 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 10:35:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 02D632156A34; Sun, 20 Sep 2020 14:35:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F246E2156A30
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:35:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 857E685828A
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:35:13 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-204-30IB_BE8MNGV9x3L96cCNQ-1; Sun, 20 Sep 2020 10:35:10 -0400
X-MC-Unique: 30IB_BE8MNGV9x3L96cCNQ-1
Received: by mail-wm1-f54.google.com with SMTP id l9so10035077wme.3
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 07:35:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=s9DmGlMtxhyDow56ELUkDvgqgbd8avLEWRg4rCWonWM=;
	b=t8/r/jzmVRtAPFvXTMVOrj7yX8oDkHXjWwMYOcrBgzuDTLJGsk2RpFy7ADY64GvDc/
	Fr+opk84cSwFcBQRyT+wgs5tmf0rq8tzOY7TSCeSx4utN9zsuAI1n3FmiKZgbaKbUGnX
	oIAPp02btEOkVMoblqRg3/OeQpalVWmnj/mdsxH0f9BdYFrdtZWFiupLmFn12YI22VIK
	l26Rp08XkYb8UGridTknvvp9gkA9m5SJONGE/BPURi8IrglJXbSmh6BSNC4+IswV+Zev
	wo9YiyGlWIX+RTL10ijdBb8gRhzlppw1CBG2nzdC/SzC/6WXKyV2SackqfVvV/mFD3+6
	RlCw==
X-Gm-Message-State: AOAM5311bjGIyPWe/XbxX39XZ9Eeo/IGDC3yx9dpLI6qCb47KAm0Yiie
	dNEC3HvozsOJg/bEzfxxTEgr/Q4dUr5h8Q==
X-Google-Smtp-Source: ABdhPJzrFHLCHKlFga4FW4MM5SMaHBUPDX0WiWWkWg8jjbdfaTNDlMzP5g6SM05yWy4/OKzD1Zke/g==
X-Received: by 2002:a1c:e0d4:: with SMTP id x203mr27375033wmg.91.1600612508912;
	Sun, 20 Sep 2020 07:35:08 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id c4sm7944301wme.27.2020.09.20.07.35.08
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 20 Sep 2020 07:35:08 -0700 (PDT)
Subject: Re: ebook-speaker/UTF-8 long files
To: blinux-list@redhat.com
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
	<20200920.133216.759.57@[192.168.1.130]>
	<b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
	<20200920.143000.205.58@[192.168.1.130]>
Message-ID: <2be0d005-9db4-a3b2-64fc-2e57eeb85c7e@gmail.com>
Date: Sun, 20 Sep 2020 15:35:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920.143000.205.58@[192.168.1.130]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Fixed it, that command was missing an i in --asciiize

Even with the convert done, it says it's an ASCII file with long lines, 
please wait, then dumps me back to the terminal as before however. Is it 
that the book's too large for ebook-speaker to handle or?

On 20/09/2020 15:30, Linux for blind general discussion wrote:
> What sort of error.
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 20 Sep 2020 15:19:50 +0100
> Subject: Re: ebook-speaker/UTF-8 long files
>
>> That just give me an error on input/output files however though
>>
>> On 20/09/2020 14:32, Linux for blind general discussion wrote:
>>> Try this
>>> ebook-convert file.mobi file.txt --linearize-tables --asciize
>>> See if that fixes your problem.
>>> Rob
>>>
>>> ----- Original Message -----
>>> From: Linux for blind general discussion <blinux-list@redhat.com>
>>> To: blinux-list@redhat.com
>>> Date: Sun, 20 Sep 2020 14:07:24 +0100
>>> Subject: Re: ebook-speaker/UTF-8 long files
>>>
>>>> Tim, it's ebook-convert from the Calibre package, and yes they are .mobi
>>>> format originally, and given I've not found a way to natively read them
>>>> on Linux with Orca, I figured okay, I'll convert them. They do display
>>>> fine in Pluma however and I can read them that way, but I'd like the
>>>> convenience of ebook-speaker really.
>>>>
>>>> On 20/09/2020 13:30, Linux for blind general discussion wrote:
>>>>> Tim here.  You say "It tells me to wait", but it's hard to tell
>>>>> whether it's "ebook-converr" or "ebook-speaker" that's giving the
>>>>> error.  So it's hard to tell whether it's source lines in the
>>>>> original ebook that are giving trouble (in which case it would help
>>>>> to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
>>>>> If it's the former, it sounds like an issue with "ebook-converr"
>>>>> which I'm not sure I know how to deal with other than to try a
>>>>> different program.  If it's successfully producing .txt files but
>>>>> they have long lines that choke "ebook-speaker", you might be able to
>>>>> use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
>>>>> shorter and hopefully don't choke "ebook-speaker".
>>>>>
>>>>> -tim
>>>>>
>>>>> On September 20, 2020, Linux for blind general discussion wrote:
>>>>>> So I just ran into this and was wondering if anyone else has. I've
>>>>>> converted ebooks to .txt with ebook-converr and wanted to run them
>>>>>> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
>>>>>> long phrases and give sme numbers, then does....precisely nothing,
>>>>>> boots me back to the terminal with a bell sound...
>>>>>>
>>>>>> Any ideas?
>>>>>>
>>>>>> _______________________________________________
>>>>>> Blinux-list mailing list
>>>>>> Blinux-list@redhat.com
>>>>>> https://www.redhat.com/mailman/listinfo/blinux-list
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

