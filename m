Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id B8D712714FC
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 16:21:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600611675;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YKkO1WGM2drWD8dZn2iKSIOG8uK3/Jpu5gsKzuEUWRw=;
	b=FoaPzAOolWB9iow2mmJgtydqBayP+AsvZY+dAA7dKNhiNGAPbmx572K8R4OXl8vh62XWOn
	xYkMn615/QoSeFZdOILSloBoHEv3nmmbiY46ujKnD4u6Fh9jMqIX6hwjJZO+W3NXx6nMCX
	+IsKt1nDyvb5+rYZhFVK+Ld1tMw+fAo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-564-HgT4nmkrN02RDKLRpwaPxw-1; Sun, 20 Sep 2020 10:21:13 -0400
X-MC-Unique: HgT4nmkrN02RDKLRpwaPxw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECE6980EDA5;
	Sun, 20 Sep 2020 14:21:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DE89755777;
	Sun, 20 Sep 2020 14:21:08 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0E6795A0FF;
	Sun, 20 Sep 2020 14:21:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KEJwSj005808 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 10:19:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 4BB845AB7F; Sun, 20 Sep 2020 14:19:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 476F25F262
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:19:55 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DD9DC8007DF
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 14:19:55 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-428-Er-37-wwPnKP0hcm-tMlXg-1; Sun, 20 Sep 2020 10:19:53 -0400
X-MC-Unique: Er-37-wwPnKP0hcm-tMlXg-1
Received: by mail-wm1-f46.google.com with SMTP id x23so9643611wmi.3
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 07:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=P2BcPLarKq7L2GMgM+xNEBPO0fou6TND8C7f1gf7KAU=;
	b=NL9LB3KnRtBucCl62ZpCnmuGb+bDO9o81xyKVWftZUaOiKx/ZPgYpCD4YZ809pQdjT
	9ELCPmU8v2oI14yPjPEOn03nBH6pNHKgr5GdwBX9UHLG+hA3oxqMfO/E/yzisCqKZxZd
	0k/ez9wWNbDXrAwwYvmIlt4mdQrZvyQoJ6DXHv1xTHMj/uQyri3Cv9p/ryj3eBWLqZXm
	Y5CmjiNxacQKZ9+e07z/Cwn4uXn/LA1PgTt8v4yGbiCA+8FSVgQuVi8X25mcN4ULTsPe
	dveTCvmOTKqs9epHnztLhbjL8hFTt9bcrat+UpXOHgGK/sPXrVXPANAYB+TaQKuxT6G9
	qWVA==
X-Gm-Message-State: AOAM533t2A/fKCQwGdLaQrHBUpXDqz1ZiaynUF8d315xzDPhg4deP/5B
	IbNuCOP0qT9p4SDHTC/+r75KGYVrXieFfA==
X-Google-Smtp-Source: ABdhPJyVKV5ZPo3AzeaurStP6FN/CsXVRROT6mS/UUAL7I2ZS4Kf72RSBpEGPjfpZ+rvnLP9iUWogQ==
X-Received: by 2002:a05:600c:4103:: with SMTP id
	j3mr25292419wmi.130.1600611591628; 
	Sun, 20 Sep 2020 07:19:51 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	z11sm15173490wru.88.2020.09.20.07.19.50 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 20 Sep 2020 07:19:51 -0700 (PDT)
Subject: Re: ebook-speaker/UTF-8 long files
To: blinux-list@redhat.com
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
	<c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
	<20200920.133216.759.57@[192.168.1.130]>
Message-ID: <b9c59cbe-dcbd-f7e4-f030-86fcc435482f@gmail.com>
Date: Sun, 20 Sep 2020 15:19:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920.133216.759.57@[192.168.1.130]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false;
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

That just give me an error on input/output files however though

On 20/09/2020 14:32, Linux for blind general discussion wrote:
> Try this
> ebook-convert file.mobi file.txt --linearize-tables --asciize
> See if that fixes your problem.
> Rob
>
> ----- Original Message -----
> From: Linux for blind general discussion <blinux-list@redhat.com>
> To: blinux-list@redhat.com
> Date: Sun, 20 Sep 2020 14:07:24 +0100
> Subject: Re: ebook-speaker/UTF-8 long files
>
>> Tim, it's ebook-convert from the Calibre package, and yes they are .mobi
>> format originally, and given I've not found a way to natively read them
>> on Linux with Orca, I figured okay, I'll convert them. They do display
>> fine in Pluma however and I can read them that way, but I'd like the
>> convenience of ebook-speaker really.
>>
>> On 20/09/2020 13:30, Linux for blind general discussion wrote:
>>> Tim here.  You say "It tells me to wait", but it's hard to tell
>>> whether it's "ebook-converr" or "ebook-speaker" that's giving the
>>> error.  So it's hard to tell whether it's source lines in the
>>> original ebook that are giving trouble (in which case it would help
>>> to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
>>> If it's the former, it sounds like an issue with "ebook-converr"
>>> which I'm not sure I know how to deal with other than to try a
>>> different program.  If it's successfully producing .txt files but
>>> they have long lines that choke "ebook-speaker", you might be able to
>>> use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
>>> shorter and hopefully don't choke "ebook-speaker".
>>>
>>> -tim
>>>
>>> On September 20, 2020, Linux for blind general discussion wrote:
>>>> So I just ran into this and was wondering if anyone else has. I've
>>>> converted ebooks to .txt with ebook-converr and wanted to run them
>>>> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
>>>> long phrases and give sme numbers, then does....precisely nothing,
>>>> boots me back to the terminal with a bell sound...
>>>>
>>>> Any ideas?
>>>>
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://www.redhat.com/mailman/listinfo/blinux-list
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

