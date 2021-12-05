Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A6364468C15
	for <lists+blinux-list@lfdr.de>; Sun,  5 Dec 2021 17:24:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638721461;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gsSVhCuTJB9gI5L7ucEi0XEOPqq+gnfjNb2Bhvz018w=;
	b=Q25CP69SI7aDbMxMFyFtJHfnigzqdvyJULNc66hz3/szrl0oOb5ntntxfw+sUY33326lD4
	nRfEFA7iUap7Q1NFzCkqBsUlFK239j4Ag3vBKOqwPbQvI6XnhR954dSFO7JVxMOdnaweuZ
	AGr2mbkTvUfzTn3CUfNP9gWjbP0yWAk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-320-lKn2OzjNNmyFumYSzeQjag-1; Sun, 05 Dec 2021 11:24:18 -0500
X-MC-Unique: lKn2OzjNNmyFumYSzeQjag-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 703671030C21;
	Sun,  5 Dec 2021 16:24:14 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 206331346F;
	Sun,  5 Dec 2021 16:24:13 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B0A3218095C9;
	Sun,  5 Dec 2021 16:24:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B5GLITE006958 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 5 Dec 2021 11:21:18 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id A26164010E79; Sun,  5 Dec 2021 16:21:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9CD8940CFD04
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 16:21:18 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 835B0805A2E
	for <blinux-list@redhat.com>; Sun,  5 Dec 2021 16:21:18 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-248-mM1e8XheP_Oe46hwZzO_Tw-1; Sun, 05 Dec 2021 11:21:16 -0500
X-MC-Unique: mM1e8XheP_Oe46hwZzO_Tw-1
Received: by mail-ed1-f47.google.com with SMTP id z5so33430620edd.3
	for <blinux-list@redhat.com>; Sun, 05 Dec 2021 08:21:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=4swLNjaIyO07FrlH9vs0MekkOJ3XsK2k6dAx5tNu3Us=;
	b=ds9BKC3NrAivm2/px80uooN04WKxStM6KgTFWl8+GuTw1EpLeRNV5BDRokfqPT0p+n
	0y9KeZg9w1mpNyMxBh+vSn1Xbh4fRedaqn9mC7Bh8UDnFR/PThSzh0HLx7cBjGM9s7OP
	Oo8VuJSgVpKmX2FgXcxGJfNj6z7S479VWZirOrHqyRVHvH6zD960t08E8zmkr1PF/bSL
	WdlFw8QDpWnXGFKmWqDOc3DDlAKrtpzit7LCosiKhThhtnFa5y0d2/ZXKm9F0G9R4W5I
	oyBXtlczbRm0QRh34BW9MRgjgLUmLNU3juWqzvo2psCkAGGvRil12H9/lI7b2jWfkO8j
	nxhw==
X-Gm-Message-State: AOAM532YfTOf1EXZg6c9Opr17omOtM/xWBCqIui1en0JWkxRF6UUKga3
	4sUPQ2y64oFUWD+qI67QnWITNPzNs24=
X-Google-Smtp-Source: ABdhPJxyBPw8TxyTFm02oZLRnwM08zNAI38qDACY1Y4Eap/4uP5q/HFhgWwbU6WZj19ksrW2LIuZrw==
X-Received: by 2002:a17:907:a40b:: with SMTP id
	sg11mr38549102ejc.534.1638721275469; 
	Sun, 05 Dec 2021 08:21:15 -0800 (PST)
Received: from [192.168.0.104] ([41.13.20.207])
	by smtp.gmail.com with ESMTPSA id 23sm1484721edv.33.2021.12.05.08.21.13
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 05 Dec 2021 08:21:14 -0800 (PST)
Subject: Re: Useful aliases in .bashrc?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <a0603f61-07eb-3f44-411e-805a5ea7afe6@gmail.com>
	<20211205081607.1b8e272e@bigbox.attlocal.net>
Message-ID: <16b79725-64b9-b768-5d88-08a9d76326c3@gmail.com>
Date: Sun, 5 Dec 2021 18:21:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20211205081607.1b8e272e@bigbox.attlocal.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Tim,


I really like your way of doing things.


Quick question, please ramble if you'd like, managing podcasts, how?


To expand on that a bit, what do you use for a pod catcher; where do 
they go, in short, what is the easiest way to deal with your podcasts, 
especially if you have many of the things, like I currently do on my phone.


I'd like to get most of them off of there, space and all.

Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

On 2021/12/05 16:16, Linux for blind general discussion wrote:
> Tim here. A couple from my collection:
>
>
> Sometimes I type "cd .." too quickly, and miss the space or even a
> period too, so these make my typos work as expected
>
>    alias cd..='cd ..'
>    alias cd.='cd ..'
>
> I commonly jump to my MP3/podcast queue directory and run a command
> (`biggest`) that finds all the files in the subdirectories and sorts
> them all from smallest to largest (big ones that don't sound
> interesting are the first on my chopping-block for saving time/space):
>
>    alias mp3='pushd ~/Music/podcasts/; biggest -h | tail -20'
>
> Also helping with podcasts I have
>
>    alias ti='id3 -q "%_p%_f: %t"'
>
> to give me the titles of podcasts I point it at.
>
> I also keep my finances in ledger(1) format and have a number of
> aliases around manipulating those
>
>    alias fin='pushd ~/finances/ledger'
>    alias le='pushd ~/finances/ledger; vim +$ $(date +%Y).txt'
>
>    checking() {
>      pushd ~/finances/ledger
>      ledger -f only"$(date +%Y)".txt --pedantic register Checking "$@"
>    }
>
>    led() {
>      pushd ~/finances/ledger
>      ledger -f only"%(date +%Y)".txt --pedantic balance -l "commodity == 'USD'" not "Equity:Opening Balances" and not "^Income:" "$@"
>    }
>
>
> The "fin" alias just takes me to the directory; the "le" opens the
> current year's data in vim and places the cursor at the bottom so I
> can add new entries; the "checking" function gives me my checkbook
> register (to which I can append "--cleared" for only those
> transactions that have cleared); and the "led" function gives me a
> hierarchical overview of all of my accounts and how they roll up.  I
> also have a more complicated "pay" shell-function that will look for
> the most recent transaction that matches some parameters and
> re-create that transaction with today's date in my preferred format,
> and set the amount to the specified quantity letting me do things like
>
>    $ pay kroger 38.21
>
> rather than manually find & copy the entire block, and update the
> amounts.
>
> Finally, I keep my calendar in remind(1) format so I have several
> aliases that help me set all my preferred parameters
>
>    alias 1='rem -g -q -iCOLOR=2 -@2'
>    for i in 2 3 4 5 6
>    do
>      alias $i='rem -g -q -iCOLOR=2 -@2 "*"'$i
>    done
>
> so I can just type "1" for today's agenda or "3" for a 3-day agenda.
> (I can ramble for hours on using remind and have a lengthy blog post
> about it.  If you want a text-based workflow for your calendar, it's
> *amazing*!)
>
> Hopefully this gives you some more ideas,
>
> -Tim
>
>
> On December  5, 2021, Linux for blind general discussion wrote:
>> Hi all,
>>
>>
>> I have never really played with .bashrc, but have found it rather
>> useful to add a few aliases to it.
>>
>>
>> The one I find most useful so far is the alias to my "startwin.sh"
>> qemu script. I use
>>
>>
>> alias windows="sh ~/qemu/startwin.sh"
>>
>>
>> instead of having to type, every time
>>
>>
>> sh ~/qemu/startwin.sh
>>
>>
>> If you have any useful aliases to share, please do?
>>
>>
>> After all, why should we not make each other's lives a bit easier?
>>
>> -- 
>> Warm regards,
>>
>> Brandt Steenkamp
>>
>> Sent from Slint Linux using Thunderbird
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

