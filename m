Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 9F2BE2748F9
	for <lists+blinux-list@lfdr.de>; Tue, 22 Sep 2020 21:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600802384;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D7AMbXcL94nZpopYIaW5J+7E8ZcF8G5NHRsMpOCfEhQ=;
	b=h8Kk5j09TgjueRH+SGlb75ToDZ+7PZ/SvMahkZl/xJzAdON4SjpxZJMhrMZOP+4+3bbOwY
	V0cdTJkJtOUY0Y9+h5Q61vBN7ZXEEbipmp6OCAJ8a+HGfm6c29rMSMxPOejVe8yJjgg02j
	ARmXKmYKX1TlmexFFQULhtvrIqZ19Hw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-98-I1vltwLkML-yoFyihgqp-w-1; Tue, 22 Sep 2020 15:19:40 -0400
X-MC-Unique: I1vltwLkML-yoFyihgqp-w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F34AA805EE4;
	Tue, 22 Sep 2020 19:19:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A026F5DA7B;
	Tue, 22 Sep 2020 19:19:33 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C8E3B18A1997;
	Tue, 22 Sep 2020 19:19:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08MJJKWe004045 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 22 Sep 2020 15:19:20 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7D2492022794; Tue, 22 Sep 2020 19:19:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7863A2022788
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 19:19:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1AEBB185A78B
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 19:19:18 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com
	[209.85.128.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-299-du7d1BeUPt2ySCu-XEX5YQ-1; Tue, 22 Sep 2020 15:19:15 -0400
X-MC-Unique: du7d1BeUPt2ySCu-XEX5YQ-1
Received: by mail-wm1-f51.google.com with SMTP id e11so2859946wme.0
	for <blinux-list@redhat.com>; Tue, 22 Sep 2020 12:19:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NcAZzgCShDRmjR/aVi4ckjAwi8Cn64+jyPinThY0OzQ=;
	b=HHQ0RJM0JqS+zNg5V5WsZ54toEFPzE2s6Tga6iOY8Tl4DIUugLHvYAE5Ar0DDAax4i
	b86fqc9CEJU5JGnu/ETsyuhyCiLGXj3WTS2A2IImf0zzIU51xMR3y2B+DvVzxd50JYt9
	Vs0S9ziQ9hVawMtJ8TTj/Se2GKMeX44aU+YDn9LHK2xMBAQrFSA5K0QzKDT957Fie7s+
	qkS03huhmgjTd0i16/0hpB9pK9sT3GtSpxR9kTSjAAi411RpVOvrGvFX7tPIDrFrNiNJ
	QmKfwtAppr8OHF5VE/25YHU5xHaB5+khPnfjRNj9HOMPc8OLz3N6asI7NFlfQd+d0EOG
	Xtqw==
X-Gm-Message-State: AOAM5313YTeP4lyhrMME0o234FpmpZyvEoebsIygvjCCSOo9eGgFnGoS
	hPYg7SfTb7ouG53UsRYWNP0uHzyCrEiiRQ==
X-Google-Smtp-Source: ABdhPJzKZZWNUezkDDPpd2Swu7/vTt8Ejz5sQvcUt899b4cdGiEecHhRfNg7d+1zQ4r0IDSDRwPtpw==
X-Received: by 2002:a7b:c1d9:: with SMTP id a25mr2705418wmj.4.1600802353833;
	Tue, 22 Sep 2020 12:19:13 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	u66sm5728399wmg.44.2020.09.22.12.19.12 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 22 Sep 2020 12:19:13 -0700 (PDT)
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
Message-ID: <750a86ae-49d6-0ec5-2454-a5de40bc3afe@gmail.com>
Date: Tue, 22 Sep 2020 20:19:12 +0100
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
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Thought I sent this earlier, but not sure since my sent folder's acting 
up...but is there a way to tell ebook-speaker not to convert a book into 
a .wav file and just open it in ebook-speaker and read it that way?

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

