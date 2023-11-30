Return-Path: <blinux-list+bncBCVPTHE7K4IMLZNCVMDBUBGB4NUZU@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE0A7FF459
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 17:05:27 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-423e1682fbdsf11751881cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 08:05:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701360326; x=1701965126;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AswYgbWemAQF4prMBNdQeDnNBd65bLv7rnN3EUmI+lU=;
        b=Ak0Pd/7FUABItl4Q+SlW08tdiNJw15OMz+BJXQUDU8is0/ueo8a5iv+TkDQNLSuCCO
         VWXZnXKR+wRZ6ZPbrBXkqE+cQlykdlp3AYFIZebQeFAoRdM91frs6gJtDRnlmmPL5pkq
         /2cRSNdOL+gxPOrE7Ry/latRSNNZHHivUe5itn+vBuDthWVFVcSZQz5kyw6kIB3lo4zI
         soeQT79M/fkyj5zWJw955GxGMeZJQZTrVm2+7jvgxuYWfb1XPovpyNrsTuOFeffGJ1oM
         sz8jT2F4C4JpF1illvmRBQXWrQOjuTladLBGcTLMn9e5WgHeUSpE5GBdVz3NrICtonor
         1WCw==
X-Gm-Message-State: AOJu0Ywqy3yNbpyFFLK+7GlJlRDCXTFt4+GTyVj3bRDc7OxR78ryJUfc
	0wqaCXcIWZRV3hBeVhoYruCWDg==
X-Google-Smtp-Source: AGHT+IGkWieFtQf2O266Gb6Wee/q3PAhE1G1XeC1nNpDZ15cZFZ2vvEuRtNcWuDPvroiaOkVhE7edw==
X-Received: by 2002:ac8:5b85:0:b0:423:70f4:c28d with SMTP id a5-20020ac85b85000000b0042370f4c28dmr25317410qta.67.1701360326293;
        Thu, 30 Nov 2023 08:05:26 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1907:b0:423:731a:7859 with SMTP id
 w7-20020a05622a190700b00423731a7859ls601336qtc.0.-pod-prod-09-us; Thu, 30 Nov
 2023 08:05:24 -0800 (PST)
X-Received: by 2002:a05:620a:3c01:b0:77d:5da4:4645 with SMTP id tn1-20020a05620a3c0100b0077d5da44645mr19949432qkn.69.1701360324683;
        Thu, 30 Nov 2023 08:05:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701360324; cv=none;
        d=google.com; s=arc-20160816;
        b=eY1xUz+H8xxWYeYqDG+qvAvKwJmbkBEZTNOWDkh28AcN7QUWD4hQ8NigIffWFoc27U
         gwxSfEyByb1Sce5p2VDHhfmN1LjKKmh6pItMn97L2vsfYQySiz8IRytyXWBH/9zHpHBl
         a1fBviz33WCxZaw1bYcOVmRiWajuf8x3TRsqK1RH/C7vKZB+90Ooky2A71DZnHvwf89b
         bzigB94c05RAEYZOq2X3+mgahESVHPzo34ACayqvjrqCgEGpAqOERcuNlRUXcqMJlsH2
         YJZ0c6IHPWzsRKODCgRaARbyNvCyKBHMzBYwMTLAG0YQb0Nf03HSju+L4sNIO7eEiwGr
         xuXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=AswYgbWemAQF4prMBNdQeDnNBd65bLv7rnN3EUmI+lU=;
        fh=bCabGQs3jn1s0M0qXUniS/CTf8AL/F0wZwsNHkuqrnc=;
        b=PaCvwKPYp2ZzH2IAMGNHTfms/jHmLot6kgy5nB6MoV32ftOb/rcAo6Qj1XPEOKbVT1
         2awOaXo45Fkts66/Eu9Fz7RVuCxDIRpvPHFiKKfn6bysEUACFjt35EbXuRiu73ev/nEh
         Ji2NrAaP5VodegdudLteptMggg3RAyMKnNcAieLgG2ah0uwa2R3/tgUiZmVeNZUP/jhE
         ZwrT56yKpY0p205oxfrfElxJMWNOwsNL3iEW9Gv2eK9/DDVtLyRKnuHiFxOg7O0nBpEu
         mvYp2Sjuue1/NhQxVI+tr+tT6hrknOMRwsskK7SQL99ZC7XGPHDWAb+FojWZFX0DLgAt
         o+gg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id rv11-20020a05620a688b00b00767c77c80b5si1305253qkn.477.2023.11.30.08.05.24
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 08:05:24 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-436-NHKiDkb8MMiRBlxQFXpDJA-1; Thu,
 30 Nov 2023 11:05:23 -0500
X-MC-Unique: NHKiDkb8MMiRBlxQFXpDJA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D105E2815E22
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 16:05:22 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id CDFC5C15983; Thu, 30 Nov 2023 16:05:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C6BFEC1596F
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:05:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A4614853066
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 16:05:22 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-222-fohdcz2bPxeFweEW-EtJrg-1; Thu,
 30 Nov 2023 11:05:17 -0500
X-MC-Unique: fohdcz2bPxeFweEW-EtJrg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 7DC1544FC7;
	Thu, 30 Nov 2023 11:05:16 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 394CF1001B6; Thu, 30 Nov 2023 11:05:16 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 37AD2100094;
	Thu, 30 Nov 2023 11:05:16 -0500 (EST)
Date: Thu, 30 Nov 2023 11:05:16 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <7634f774-0813-cb35-2519-7ceb2e4216af@panix.com>
Message-ID: <Pine.LNX.4.64.2311301103200.3728673@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <c9277002-d894-203e-511b-952f27c98048@panix.com>
 <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net>
 <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <Pine.LNX.4.64.2311292213270.3720159@users.shellworld.net>
 <7634f774-0813-cb35-2519-7ceb2e4216af@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Jude,
I dare say this applies only to a personal build?
Speaking personally, I am not a programmer, and the script concept seems 
more  trouble then simply reaching the menu bar, but that is  just me.
Kare



On Thu, 30 Nov 2023, Jude DaShiell wrote:

> With these browsers a command like:
> elinks --help|less
> makes the command options come up at a more reasonable pace and it's
> possible to write a script like mylinks.sh that starts the browser has all
> your favorite command line options on the same line and ends with $1 which
> takes an url if you type
> mylinks <url>
> later once you make the script executable.
> If you figure out you need more command line options and you know what
> those options are, edit the mylinks script again and you don't need to
> mess with menus any longer.
>
>
> --
> Jude <jdashiel at panix dot com>
> "There are four boxes to be used in defense of liberty:
> soap, ballot, jury, and ammo.
> Please use in that order."
> Ed Howdershelt 1940.
>
> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>
>> And Jude provides the command line option.
>> Thanks.
>>
>>
>>
>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>>
>>> links -html-numbered-links=1 should do that for you.
>>>
>>>
>>> --
>>> Jude <jdashiel at panix dot com>
>>> "There are four boxes to be used in defense of liberty:
>>> soap, ballot, jury, and ammo.
>>> Please use in that order."
>>> Ed Howdershelt 1940.
>>>
>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>
>>>> I did say links the chain, you are thinking of l y n x which is not the
>>>> same
>>>> browser.
>>>>
>>>>
>>>>
>>>> On Wed, 29 Nov 2023, Jude DaShiell wrote:
>>>>
>>>>> There is no keystroke for that.  You can turn that on in options or start
>>>>> lynx with lynx -number_fields.
>>>>>
>>>>>
>>>>> --
>>>>> Jude <jdashiel at panix dot com>
>>>>> "There are four boxes to be used in defense of liberty:
>>>>> soap, ballot, jury, and ammo.
>>>>> Please use in that order."
>>>>> Ed Howdershelt 1940.
>>>>>
>>>>> On Wed, 29 Nov 2023, Karen Lewellen wrote:
>>>>>
>>>>>> Hi folks,
>>>>>> for those using links the chain, there is a command line option that
>>>>>> turns
>>>>>> on
>>>>>> links are numbered.
>>>>>> Can someone remind me of the keystroke?
>>>>>> Thanks,
>>>>>> Karen
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>
>>>>> --
>>>>> You received this message because you are subscribed to the Google Groups
>>>>> "blinux-list@redhat.com" group.
>>>>> To unsubscribe from this group and stop receiving emails from it, send an
>>>>> email to blinux-list+unsubscribe@redhat.com.
>>>>>
>>>>>
>>>>
>>>>
>>>
>>
>

