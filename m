Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 703DC27145C
	for <lists+blinux-list@lfdr.de>; Sun, 20 Sep 2020 15:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1600607266;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=sKEaC6T9cp2gZjh2Pcy9bChf71qIgE64srcdmC6XQl0=;
	b=fEdMIct7nQh3YV/OcIbLyXCYLct3AMQowJdSTn2lCclpflb+n5wmkT3qfemwvD/bEFPKOd
	Rb9hvtTCkTfzo4mlLtdNEHTxoGbCR+YvbV0n2Rz9tkPLgZ6M6lEueYPhUa0d5fTTfcAjwc
	VXE449BOn8B5Bvo7baQIEGoDkj/rhzY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-8P1-A4goPseBGNxZ1BvlOA-1; Sun, 20 Sep 2020 09:07:44 -0400
X-MC-Unique: 8P1-A4goPseBGNxZ1BvlOA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 372671074644;
	Sun, 20 Sep 2020 13:07:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DD47A17155;
	Sun, 20 Sep 2020 13:07:39 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 68292183D040;
	Sun, 20 Sep 2020 13:07:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 08KD7XT1029297 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 20 Sep 2020 09:07:34 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id CD9D75AB7A; Sun, 20 Sep 2020 13:07:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C666E5EDED
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:07:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1DC87101A53F
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 13:07:29 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
	[209.85.221.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-368-x1TIJWLEPPe6boE_mAkGgQ-1; Sun, 20 Sep 2020 09:07:26 -0400
X-MC-Unique: x1TIJWLEPPe6boE_mAkGgQ-1
Received: by mail-wr1-f49.google.com with SMTP id j2so10020531wrx.7
	for <blinux-list@redhat.com>; Sun, 20 Sep 2020 06:07:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=TCHdUm63nWzFIBMUf05u0p8koyse3n7Vkb1eEtUw4Ac=;
	b=QAIl5U/obAFY+d/q/0PqJJIsC9BkwMynVy17crUEAFTX8ZLbTKHdYMIiJYDZh6YZb5
	mcnTm14YavMnXxCYKQ/ix6i/vfja3sb1WaCt4q3dug4EUUxEUv/aBbHjd6wuaNLE7FMK
	bDYaCMZSv6xArvoZrQ2sa3glJy6lmP/3qfghqstSCEyeeE35hArxckxYYytpoTt41gWY
	zjmoLlCAASqwGhyjg5DQdmx6MJSUqgTvhpvhchWnY73s9wL77nHFR+FWAn0AL+elNIEW
	/LoMP7K9/o4Xz8Cv+eMNQDtTrXT9uMYPxBwBNpd9oZyJ38JSmDeHnFpYKlLC9CYi03YY
	VIsg==
X-Gm-Message-State: AOAM530aE75erOQzEdUKpy4K0Gy9iTFoxgG5Wjxm6tCguxG94x/JKdBB
	27CNYI3muJm/VHrQm2dZri5fbANvOqNQJw==
X-Google-Smtp-Source: ABdhPJyIoEqUGktJsAZPUeod0Y6o77oj7keMoEnm4X1CVsh9JD67IXqXXlSRs3jrAtCLtU+xyIojbg==
X-Received: by 2002:a5d:4949:: with SMTP id r9mr49480492wrs.27.1600607245318; 
	Sun, 20 Sep 2020 06:07:25 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id
	s2sm16575577wrw.96.2020.09.20.06.07.24 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 20 Sep 2020 06:07:24 -0700 (PDT)
Subject: Re: ebook-speaker/UTF-8 long files
To: blinux-list@redhat.com
References: <addab503-37a4-eb73-3099-29e5dcb713df@gmail.com>
	<20200920073046.1040b490@bigbox.attlocal.net>
Message-ID: <c722d6c7-89af-bcd4-cb51-4165e977cecd@gmail.com>
Date: Sun, 20 Sep 2020 14:07:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200920073046.1040b490@bigbox.attlocal.net>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Tim, it's ebook-convert from the Calibre package, and yes they are .mobi 
format originally, and given I've not found a way to natively read them 
on Linux with Orca, I figured okay, I'll convert them. They do display 
fine in Pluma however and I can read them that way, but I'd like the 
convenience of ebook-speaker really.

On 20/09/2020 13:30, Linux for blind general discussion wrote:
> Tim here.  You say "It tells me to wait", but it's hard to tell
> whether it's "ebook-converr" or "ebook-speaker" that's giving the
> error.  So it's hard to tell whether it's source lines in the
> original ebook that are giving trouble (in which case it would help
> to know which type of ebook:  EPUB, Mobi, etc), or the .txt output.
> If it's the former, it sounds like an issue with "ebook-converr"
> which I'm not sure I know how to deal with other than to try a
> different program.  If it's successfully producing .txt files but
> they have long lines that choke "ebook-speaker", you might be able to
> use `fmt` or `fold` to re-wrap the lines in the .txt so that they're
> shorter and hopefully don't choke "ebook-speaker".
>
> -tim
>
> On September 20, 2020, Linux for blind general discussion wrote:
>> So I just ran into this and was wondering if anyone else has. I've
>> converted ebooks to .txt with ebook-converr and wanted to run them
>> by ebook-speaker. It tells me to wait since it's a UTF-8 file with
>> long phrases and give sme numbers, then does....precisely nothing,
>> boots me back to the terminal with a bell sound...
>>
>> Any ideas?
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

