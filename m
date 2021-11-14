Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AC15A44FC6D
	for <lists+blinux-list@lfdr.de>; Mon, 15 Nov 2021 00:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1636931722;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=j2ML9+/Fl3e3TedQSxiD4Ytsswu+yCLGuoNoDRHdqY0=;
	b=BILQn3H0E0/HtVjtIEpk9yrWkq7vfKqQHSdn6aOpDixhW7QECt9w9HXBm5m+TKLHrHb6rT
	WVp5F69S77M3TaKl4xvlyRADDtLaNi8zS6+oDqSFTpfeJp0L0Q/MAZ2boaYq6PADtmTZWn
	8ENlyCVoFg2GFkHtqlQYet9AF+tlp5c=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-447-GmVxkEqyNSGHOVAu1Q4vRQ-1; Sun, 14 Nov 2021 18:15:18 -0500
X-MC-Unique: GmVxkEqyNSGHOVAu1Q4vRQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ACBA5E757;
	Sun, 14 Nov 2021 23:15:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1C9515DF56;
	Sun, 14 Nov 2021 23:15:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4ED994A703;
	Sun, 14 Nov 2021 23:15:04 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AENEukk004966 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Nov 2021 18:14:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id CBBE6404727A; Sun, 14 Nov 2021 23:14:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C7C104047272
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:14:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AD781185A7B2
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 23:14:56 +0000 (UTC)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-587-PJUFEgNpOqGYFC3NXIR0Pg-1; Sun, 14 Nov 2021 18:14:55 -0500
X-MC-Unique: PJUFEgNpOqGYFC3NXIR0Pg-1
Received: by mail-qt1-f171.google.com with SMTP id p19so13951775qtw.12
	for <blinux-list@redhat.com>; Sun, 14 Nov 2021 15:14:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=v0/Zsu/9IuH3NwyWxWwqMMABtnAld2DmqzL76Ki1OsA=;
	b=UdC2X5tkjWMJnnGObTEbzGKtdGDBJ6CtUUGEyMdgar3vbqDShn8Ihr/Hv2+YNmUYBP
	AYkg4GwaJNYRSVkMyd1GICSmirj3yTICF/ohwBnr/1bKg7ILnpowBHdUHjyv8ZzAPmOt
	cpFvw5+hdqxNqWA9U4I8tNMZ+8lwk4wNiq63n/39o+brTGe/6z5uiGp0E0wmScb5nUu5
	AzDc6I5F5QioG45+W6Cr6YlnA1oeIpTftPaUegd8frXgiz8UK+hEzXCNZD8LFtX1FLFi
	hvViNEkkyeuCdY5OKmEYoAntDvti1SgaEPpreMpmy0qLfQNiYjcGcDpQWEZQd8bkLS2p
	jR6g==
X-Gm-Message-State: AOAM531BQQ+wP8xOD7NSNjnWGSwob4TS+3uHhc1AHekR/XpnjjXnahZP
	Z+h4DLGVxSuQSW0xtBioYYobuxdJkZwbxuFE
X-Google-Smtp-Source: ABdhPJxJRJYD3JhJqCvYiIHwf71YAvSzy8tFYa6eQW8KAjnxdrSGN8ISAN5MQ1yltYq++1kS0WohnA==
X-Received: by 2002:ac8:5947:: with SMTP id 7mr2716100qtz.16.1636931693854;
	Sun, 14 Nov 2021 15:14:53 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::11])
	by smtp.gmail.com with ESMTPSA id
	bq43sm3779952qkb.32.2021.11.14.15.14.53 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 14 Nov 2021 15:14:53 -0800 (PST)
Subject: Re: any other accessible email client for linux?
To: blinux-list@redhat.com
References: <4015f410-14f1-6c3b-b0a5-7688b34c418e@gmail.com>
	<b415a935-f50d-a71b-0ddd-30d1f8ac6146@gmail.com>
	<df15eb1f-989b-b8fb-f90c-8fa6817be487@gmail.com>
	<alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
Message-ID: <6bb0a456-bfc5-e1dc-5886-5dc32687c580@gmail.com>
Date: Sun, 14 Nov 2021 18:14:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2111141627140.871@panix1.panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have been following this discussion with interest. Talking about 
alpine or pine and elm reminds me of my days in the Grad school twenty 
years ago. I remember using these applications with my university Unix 
system for email. However, at that time we got our email accounts 
already setup for us. I have never had to do the setup myself.

I launched alpine in a terminal, and I hit S for setup, then C for 
configration. However, I was lost in that screen because I did not know 
where I am. I knew that I had to enter my personal name and the imap 
server, and the smtp server etc. The problem is that moving into these 
fields with the arrows does not work. I get no speech at all.

How do you guys deal with this screen?

Cheers,

Ibrahim


On 11/14/21 4:27 PM, Linux for blind general discussion wrote:
> Use the w key and you'll be prompted for a search string.
>
>
> On Sun, 14 Nov 2021, Linux for blind general discussion wrote:
>
>> Looking at alpine, the first thing I noticed is that I can set an inbox path
>> and an smtp server, but I can't seem to set an imap server, and I couldn't
>> immediately find the encryption, port and authentication settings even for
>> smtp. I really do like the menu interface, most of it with single-key mnemonic
>> functions, but there's just too much here that I can't seem to figure out,
>> like how to set up imap email, although I do know that it's possible. Problem
>> is even reading the man page isn't helping me get through all the config
>> options, and only my page-up, page-down, home and end keys are navigating
>> through the configurations, making it difficult to set a single option, and I
>> don't see any show cursor or similar command line option that will allow my
>> screen reader to speak the configuration I would be setting. Unfortunately,
>> even the most inaccessible desktop email applications make it easy enough to
>> set up a mailbox using imap and smtp settings, complete with
>> security/encryption and authentication. I think what I'm looking for is some
>> kind of "setup new mailbox" menu selection, but I don't immediately see that.
>> It seems it looks good for local mail, but I'm not finding any remote mailbox
>> setup. I did see message threading options, which definitely helps with that
>> issue, but remote mailbox configuration definitely needs to be easier to do
>> right from the setup menu or the main screen that I see when I open alpine.
>>
>> ~Kyle
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
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

