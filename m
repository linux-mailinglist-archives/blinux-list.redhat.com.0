Return-Path: <blinux-list+bncBCVPTHE7K4IOBYHQVIDBUBHZU73IG@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com [209.85.222.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A75B7F24CF
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 05:21:54 +0100 (CET)
Received: by mail-ua1-f71.google.com with SMTP id a1e0cc1a2514c-7c3df04d32fsf1013073241.2
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 20:21:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700540513; x=1701145313;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YUqY5VdqK6nlBe0abi8+E9bjW7sDqSZq2KfbDbdnCyE=;
        b=nJaSOFGDaItlyq4nDKLUK8zs31UVBXRQfNYJIiacgw0qJKdivcaITnwb+EavEuZu9I
         jgimzi8Nl5z+7eFf8OaELdEteRQutVAFHE749th51xDe/hb3T4DOQ+50HMljELbNSjFg
         n/a9U/RCWza6EFG9Amid5OtkSWvc6XVUR1arH9M/XQ/5aJRw3oAGSAMQEj0iFWR2Ejj+
         zIPCd3b3xOYXwuachAOsei6uBaMc/OdXu2QykHWFOVrh/qSSxJbl7zpkwUmss+wbJz9V
         zHf03YAOmQPDvZeJar+VHc3uc8106JNPX6cZOnMgB3UvVl6cc4oJ+RU1zGRR+TzEpK59
         ZgAw==
X-Gm-Message-State: AOJu0YzfDGEpDuEXiAIuOumkfyYMGWpNMtLjBpGDEVkKEKQ1qAxBqFJ3
	8aYd3ZwGq9ewznypTVLlRMkY2A==
X-Google-Smtp-Source: AGHT+IGbWpl/qAWkcjVS7FqPNSHmzmCtdBZK9X5qLTcbx2SgSLLN1ElZNBZn9hxZaZSWYtdKZImHgw==
X-Received: by 2002:a67:f490:0:b0:45d:9d0c:2e07 with SMTP id o16-20020a67f490000000b0045d9d0c2e07mr8546621vsn.6.1700540512860;
        Mon, 20 Nov 2023 20:21:52 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:70c:b0:65d:b9b:f319 with SMTP id
 c12-20020a056214070c00b0065d0b9bf319ls2762183qvz.0.-pod-prod-09-us; Mon, 20
 Nov 2023 20:21:52 -0800 (PST)
X-Received: by 2002:a0c:dc0e:0:b0:679:d3a9:4e20 with SMTP id s14-20020a0cdc0e000000b00679d3a94e20mr6091569qvk.21.1700540511947;
        Mon, 20 Nov 2023 20:21:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700540511; cv=none;
        d=google.com; s=arc-20160816;
        b=aXJyWw+qR9Nmq/EzQf2sLPO+4Gm1K4E9i26E4BtS3F8e6/mPmPuu/2joztQhwrTGsx
         V1vWZujJlgNfwRrrOVRtU4Sc7jF067OM5v18a+GBP94XDGExg2IXQTrHNYyRtyLN4hw+
         yLNj1VAOVtE+9fdLaymVQOVCFA0uNCExL9SwHW1zd6h4IljHmsmTUPFp8V+JRtUe1Kyc
         nDwNC/A2x+qOQmsoCW+9Av+wqFlyHCEq4jysgm6E/G3LnifhMHBc4N44jRAQcg1nDFc4
         dmXmlo5EMDZBMhaYQC8sjBjncdbb3sxhSifmHEjptEVGkAVhGFcx7FgbFKybqIRbcwY/
         qgJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=YUqY5VdqK6nlBe0abi8+E9bjW7sDqSZq2KfbDbdnCyE=;
        fh=AISzwqGD61sZMYJiju9jWSKUGCMc5rv7GSLo65LOhDI=;
        b=iQYkH6bam2rvymkwe/qdESdEO7tt1DubpeIlaNClmFwmPI2gUTAT1J5xRvnC1TTx+r
         4VaB/G+pCqaiaPaQxtA1v2HxdGFf3fJ7I+ab64vT5FdviFLQFqIZ8ryFtuuk9W1jzAP2
         K8+24i0Qm9q3ymWGhaQ1egmQgHXQTwB2ELmFLcdT4Z4Y7onCGPvKGGGmaBqoLtUJx2Gc
         wJdHeNJ0LzgBTeq0AwOgZaQGRbmGQHnwmmtENKuyirTdtmySmQV71ImIBNXWNum9RwM4
         pRYouE2o6oi23XfvzGmCw/Oi3jWd1UT8OwUw+EA3dTZTmSrN94l3anybbLOGzqUYPqZY
         lxiQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id pv17-20020ad45491000000b00679df339975si2633264qvb.426.2023.11.20.20.21.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 20:21:51 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-94-B8dBC4eIO9C5XejDYbUYNQ-1; Mon, 20 Nov 2023 23:21:50 -0500
X-MC-Unique: B8dBC4eIO9C5XejDYbUYNQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 20E5E185A783
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 04:21:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1DF02C15984; Tue, 21 Nov 2023 04:21:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 16126C15983
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 04:21:50 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E60C981B6EC
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 04:21:49 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-312-5kDZbdv1NIydL1IhJMxDHQ-1; Mon,
 20 Nov 2023 23:21:46 -0500
X-MC-Unique: 5kDZbdv1NIydL1IhJMxDHQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 5F64544FC7;
	Mon, 20 Nov 2023 23:21:45 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 2AECC1001C0; Mon, 20 Nov 2023 23:21:45 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 2A68A10009B;
	Mon, 20 Nov 2023 23:21:45 -0500 (EST)
Date: Mon, 20 Nov 2023 23:21:45 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Henry Yen <blinux-mail@AegisInfoSys.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <20231121035449.GY23130@nntp.AegisInfoSys.com>
Message-ID: <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
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

Oh I imagine it is..but I am not a programmer.
Part of my professional life gets spent  trying to configure Alpine, which 
dreamhost provides the company for whom I work.
I end up with rhs timeouts to the imap server, and lost emails, and 
closing inboxes, and clutter over and over again.
If I am forthright, I would pay gmail for the right to keep using basic 
html, or someone else to configure this mess so I can get back to work and 
contact with the scores of  resources who use this gmail address.
May be one reason why I am unsure I would personally use Linux as my only 
operating system, even if I could.
its wonderful magical clay to be sure, but I prefer just buying the cup so 
I can get a drink lol.
Given what I have been reading on the Debian list  about what challenges 
folks there encounter getting gmail to work with imap, even using 
Thunderbird?
I respect the gifts others have for scripting and the like, but my talents 
lie elsewhere.

Kare



On Mon, 20 Nov 2023, Henry Yen wrote:

> yes, handy for testing. to use as a full-fledged email client, some
> configuration is necessary, though really not any more than any other client
> (outgoing SMTP server, accounts/identities, etc.). mutt is very powerful,
> with the ability to run macros/scripts at lots of important junctures.
>
> On Mon, Nov 20, 2023 at 10:01:57AM -0500, Karen Lewellen wrote:
>> Hi,
>> Thanks for these details.
>> What does the "handy" read only flag provide?
>> My goal is to access this account fully, not simply to read email,
>> although as a test it should be handy.
>> Unless it has changed, the code would indeed come to the alternative
>> address google has on file, instead of to a sell phone..but it has been
>> about a year.
>> Thanks,
>> Karen
>>
>>
>>
>> On Mon, 20 Nov 2023, Henry Yen wrote:
>>
>>> according to google, you will have to use "app password" as a password
>>> to your gmail account (to keep your overall google password safe).
>>> to do that, you need to first turn on "2-step verification", then
>>> generate the app password (i think it's in the 2-step-verification
>>> section).
>>> in addition, yes, there's an "enable imap" (and some imap-related
>>> settings) in gmail account settings.
>>>
>>> you will have to respond to the code that google sends when first turning
>>> on 2-step verification. but once you've generated the app password for
>>> gmail-imap, i don't think google will send any codes merely to access
>>> gmail via imap.
>>>
>>> most of this is in step 2 and step 3 of the general instructions:
>>>
>>>  https://support.google.com/a/answer/9003945
>>>
>>> two other notes:
>>> 1. imap access has to be via ssl-imap.
>>> 2. there's a handy "Read Only" flag on mutt, so the command line should be:
>>>
>>>  mutt -R -f imaps://username@imap.gmail.com
>>>
>>> On Mon, Nov 20, 2023 at 08:09:58AM -0500, Karen Lewellen wrote:
>>>> Hi,
>>>> so for the following to work.
>>>> mutt -f imap://lewellen.kd@imap.gmail.com
>>>> Something would have to be turned on in my gmail settings?
>>>> I got interrupted system call when I tried.
>>>> as shared, testing with another gmail account before tampering with my
>>>> main one.
>>>> Karen
>>>>
>>>> On Mon, 20 Nov 2023, Henry Yen wrote:
>>>>
>>>>> my reading is that google/gmail will start requiring a more complicated
>>>>> method of connecting to gmail server emailboxes in about 9 months.
>>>>> in the meantime, plain imap access will still work.
>>>>>
>>>>> mutt can access an emailbox via imap simply enough, like:
>>>>>
>>>>> mutt -f imap://username@imap.gmail.com
>>>>>
>>>>> my reading also suggests that the ability for an imap client to connect
>>>>> to gmail requires a setting in one's gmail account.
>>>>>
>>>>> On Mon, Nov 20, 2023 at 05:30:59AM -0500, Karen Lewellen wrote:
>>>>>> Hi folks,
>>>>>> I still have direct access to basic html, at least until this morning.
>>>>>> Google is forcing the issue, a change to standard view, requiring a
>>>>>> captcha to ahem confirm it is me.
>>>>>> I understand some folks use mutt, which is likely installed on
>>>>>> shellworld.
>>>>>> Before I  tamper with my main gmail account though, I am considering a
>>>>>> test, I have a second gmail account I have not reached independently for
>>>>>> some time.
>>>>>>
>>>>>> its set to forward..not solid as I have no access to my actual inbox.
>>>>>> I am told though that mutt may do the trick, but as I only use Linux via
>>>>>> shellworld, want a safe test, needing information.
>>>>>> Anyone use  mutt that can lend documentation, or a hand?
>>>>>> Thanks,
>>>>>> Kare
>
> -- 
> Henry Yen                                       Aegis Information Systems, Inc.
> Senior Systems Programmer                       Hicksville, New York
>

