Return-Path: <blinux-list+bncBCPN3MHH6QPBBLGC6GVAMGQEUAO3PKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C287F26A6
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 08:50:06 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7789f06778asf1279133685a.0
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 23:50:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700553005; cv=pass;
        d=google.com; s=arc-20160816;
        b=EElzSeTxIlHE5gQ4jWblzxRQgOCjfdZfIO8uAoqiNTxs47ye9hlsoNUfMnRsgS9eNp
         fE1M8lAZqJCTTaqS622d/TC9xZFDo5/dnQb7ig2IBrg+7ejINqNxtzZMaKdNS3jC1uS3
         id0wCXftnXrpS+wwnjVr0ZBjtMk3rZ8MZw17ZI/6tEDANxigO79VFYiW3leLInId7ZgO
         IKVCSljD2bb9N5wCvmz5jkMAGk4x7MwczwiRpOlPvxS7PWTCJshy2oIVYnHfepV5kIE2
         rgaExP0vIJWAEtU3xxgliT9Mta++puyLVQiHwNVAj+CsTESo1AvMPRo4aUD755pPv3Ev
         dRPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=vIRLqBrSGuYtRL1IGSkwgQwfkv9eT2CkJ9RGY85tf3U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0hbFCeWkpN+zmnmyEcCjvmhjx5q+karkcEBIaN+/ly9xycihYPAzB4SzT+kMoqDeUh
         Sy5WbwgTzfzpXYSDOGRbeQ4jAK9mirKY4MRDNfCEj72/4Bq2WHC2AWUgG1aKBwdNCkHj
         p8dU3IiinOAiLA8pNrt9tw/9q3GG7IJNZ59aCRPCX0fcXjtnaLMmgR8i5OP4lUQj6GWG
         4GHOkxRmEt24viJiaaLdGeFmDkZkgnXUV6gaI0X9192A6Ar0BgSbuJU4YZltDQQsro7q
         KO3+iRBPr/IuIjfMFrjjyWTUuUf5aGovkMxQg6xTKeUEYo5kryHVDBXCRvsqIdbo0tlZ
         kWQw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700553005; x=1701157805;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vIRLqBrSGuYtRL1IGSkwgQwfkv9eT2CkJ9RGY85tf3U=;
        b=P4TaMtAARtxlUCOI5+8l1W/X1XHX9FbScCn19ZKNMDSfraQDSzhTGUh125AiC9e2CP
         PsSqNGBq6adNrL0C1lcfwrUQWCtjvjAdYPrXkUY7b+EWuERmJTLUlU4V3lD9KtZsu6rK
         cN5IqX6qLj3a0cOG8oHqNpUBE0Ob+/YnIuv/wO1Odmj5ohqxC8kq6m7i1PBrbdE748dF
         clpsSmD4K05C0c4tWHHg7K/OJzqfxTmM24Q528lu1z8eRYFrODUgovqke6aRbDcEVkWF
         Olk9KGsMy0mQS0IOWHOxUfZbBjRdP/K4VJjzJZkpLMjM9qEI7BsppTyXhHxQYO0tyWoY
         YTRA==
X-Gm-Message-State: AOJu0Yx59rwTxwy/CbIVRTB+9mWo2U6hmGvD+hLSHMtvCUdnzrsTd4Yl
	k5RRTpZ8/lLPyBpt9Gykt4QQIQ==
X-Google-Smtp-Source: AGHT+IFwLRlWns07xNUwOKX3lLIVxeFd7X/kLnEbqBp7zkgnsjJQ+TyLz7n/GB63AOTePX0MRS+Bow==
X-Received: by 2002:a05:620a:4152:b0:778:8cdb:88ff with SMTP id k18-20020a05620a415200b007788cdb88ffmr2706127qko.31.1700553005356;
        Mon, 20 Nov 2023 23:50:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4f13:0:b0:668:d9c1:f577 with SMTP id fb19-20020ad44f13000000b00668d9c1f577ls100326qvb.0.-pod-prod-00-us;
 Mon, 20 Nov 2023 23:50:04 -0800 (PST)
X-Received: by 2002:a05:6214:4107:b0:672:6450:f809 with SMTP id kc7-20020a056214410700b006726450f809mr2332483qvb.16.1700553004306;
        Mon, 20 Nov 2023 23:50:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700553004; cv=none;
        d=google.com; s=arc-20160816;
        b=TGsRXiE9yqmeeWkXLPd1DexmqM41NLFunTAYdAOu3UYsl+eJueMYy6ac8XtPJMw+d/
         K9OENusZW+sGGwwX7Xq8wi/reSRkIMnQ1solS/rMJorH4P8J/Mk0+ydsK+0iMf2xvMlT
         x88Aau/k8Yn6nUf8qRgAOgkqC6kYfRUboE8/MVMiowxTHmwhB3/DfyrKNtNxfWRRyzlQ
         Gue7pd1QPFEHjewJpwwGRSaRHXkYBjkMmCNn+OGlq7Y8Yl+07z13XeVuuOIBM8jJ/qMC
         Oi9k3WNeKkAJttY42kYK0J4UaqaDDCc8b+GBTR+af6fmktjWNma9+0oonjqUxo2v8xFT
         9WKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=grzcK9Z70umWWECoD0Pm20hOOvKmIVUu/yjItT9H5OI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=E/tF53NsL7f67QiZOQHXG7Yae5v7UCMGvHXA8UgIejr2X3FEKoN9Kyz8obLspcbHhh
         3sb5Q64/05zPz376TARpMb530ykmOjFMubDuHaOsWJRKg29kEiAguAsSbjQ9XS243GPJ
         uHJt+k1UGmeDU0f9MSQLVYSmK+3FwxdIFxr69uKzXvS6ylCzpKI/Dl/Hj/XzElhYWj+P
         wgG5bhxDwbk4BgkYc2Nz7vdDVMZECJn7B2dNF2vgp4TgcZ+hKWu1d3SG+Zc141vzvu5R
         ors/ZrepRMwxUamItWLydSv8rwkypf1VAKhTlfImIliIdJ0EzdhUSAD7w2bLP9KK0rAu
         pchg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=destructatron2018@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id k15-20020a0cfa4f000000b00678af66f2e0si6019644qvo.587.2023.11.20.23.50.04
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 23:50:04 -0800 (PST)
Received-SPF: pass (google.com: domain of destructatron2018@gmail.com designates 209.85.128.41 as permitted sender) client-ip=209.85.128.41;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-296-SHnq4ro1MqG5cvJCGl6cEg-1; Tue, 21 Nov 2023 02:50:02 -0500
X-MC-Unique: SHnq4ro1MqG5cvJCGl6cEg-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8B73811000
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 07:50:01 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id B523A492BFC; Tue, 21 Nov 2023 07:50:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id ADB5B492BFA
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 07:50:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 794C13810D3D
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 07:50:01 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-wpczZaOqP4-7nYkCDAUTKg-1; Tue, 21 Nov 2023 02:49:59 -0500
X-MC-Unique: wpczZaOqP4-7nYkCDAUTKg-1
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40790b0a224so20894175e9.0
        for <blinux-list@redhat.com>; Mon, 20 Nov 2023 23:49:59 -0800 (PST)
X-Received: by 2002:a05:600c:3c86:b0:409:2c35:7b3e with SMTP id bg6-20020a05600c3c8600b004092c357b3emr8046877wmb.8.1700552997554;
        Mon, 20 Nov 2023 23:49:57 -0800 (PST)
Received: from [10.130.248.2] ([37.203.138.229])
        by smtp.gmail.com with ESMTPSA id r14-20020a05600c35ce00b004094d4292aesm16028240wmq.18.2023.11.20.23.49.56
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 23:49:56 -0800 (PST)
Message-ID: <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
Date: Tue, 21 Nov 2023 07:49:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: google removing basic html access, alternatives?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
From: Harley Richardson <destructatron2018@gmail.com>
In-Reply-To: <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: destructatron2018@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of destructatron2018@gmail.com designates 209.85.128.41 as permitted
 sender) smtp.mailfrom=destructatron2018@gmail.com
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

Hello,

Gmail via thunderbird works fine and has done so for a while now. 2=20
factor authentication, at least via security keys, broke in thunderbird=20
115.0. It asks you to install an extension, and the link to said=20
extension gives a 404. How this stuff gets past testing and QA I'll=20
never know. For the average user though, it just works. You enter your=20
google account info in the popup that appears, allow Thunderbird to=20
access your account, and it just works without any additional configuration=
.

Harley

On 21/11/2023 04:21, Karen Lewellen wrote:
> Oh I imagine it is..but I am not a programmer.
> Part of my professional life gets spent=C2=A0 trying to configure Alpine,=
=20
> which dreamhost provides the company for whom I work.
> I end up with rhs timeouts to the imap server, and lost emails, and=20
> closing inboxes, and clutter over and over again.
> If I am forthright, I would pay gmail for the right to keep using=20
> basic html, or someone else to configure this mess so I can get back=20
> to work and contact with the scores of=C2=A0 resources who use this gmail=
=20
> address.
> May be one reason why I am unsure I would personally use Linux as my=20
> only operating system, even if I could.
> its wonderful magical clay to be sure, but I prefer just buying the=20
> cup so I can get a drink lol.
> Given what I have been reading on the Debian list=C2=A0 about what=20
> challenges folks there encounter getting gmail to work with imap, even=20
> using Thunderbird?
> I respect the gifts others have for scripting and the like, but my=20
> talents lie elsewhere.
>
> Kare
>
>
>
> On Mon, 20 Nov 2023, Henry Yen wrote:
>
>> yes, handy for testing. to use as a full-fledged email client, some
>> configuration is necessary, though really not any more than any other=20
>> client
>> (outgoing SMTP server, accounts/identities, etc.). mutt is very=20
>> powerful,
>> with the ability to run macros/scripts at lots of important junctures.
>>
>> On Mon, Nov 20, 2023 at 10:01:57AM -0500, Karen Lewellen wrote:
>>> Hi,
>>> Thanks for these details.
>>> What does the "handy" read only flag provide?
>>> My goal is to access this account fully, not simply to read email,
>>> although as a test it should be handy.
>>> Unless it has changed, the code would indeed come to the alternative
>>> address google has on file, instead of to a sell phone..but it has been
>>> about a year.
>>> Thanks,
>>> Karen
>>>
>>>
>>>
>>> On Mon, 20 Nov 2023, Henry Yen wrote:
>>>
>>>> according to google, you will have to use "app password" as a password
>>>> to your gmail account (to keep your overall google password safe).
>>>> to do that, you need to first turn on "2-step verification", then
>>>> generate the app password (i think it's in the 2-step-verification
>>>> section).
>>>> in addition, yes, there's an "enable imap" (and some imap-related
>>>> settings) in gmail account settings.
>>>>
>>>> you will have to respond to the code that google sends when first=20
>>>> turning
>>>> on 2-step verification. but once you've generated the app password for
>>>> gmail-imap, i don't think google will send any codes merely to access
>>>> gmail via imap.
>>>>
>>>> most of this is in step 2 and step 3 of the general instructions:
>>>>
>>>> =C2=A0https://support.google.com/a/answer/9003945
>>>>
>>>> two other notes:
>>>> 1. imap access has to be via ssl-imap.
>>>> 2. there's a handy "Read Only" flag on mutt, so the command line=20
>>>> should be:
>>>>
>>>> =C2=A0mutt -R -f imaps://username@imap.gmail.com
>>>>
>>>> On Mon, Nov 20, 2023 at 08:09:58AM -0500, Karen Lewellen wrote:
>>>>> Hi,
>>>>> so for the following to work.
>>>>> mutt -f imap://lewellen.kd@imap.gmail.com
>>>>> Something would have to be turned on in my gmail settings?
>>>>> I got interrupted system call when I tried.
>>>>> as shared, testing with another gmail account before tampering=20
>>>>> with my
>>>>> main one.
>>>>> Karen
>>>>>
>>>>> On Mon, 20 Nov 2023, Henry Yen wrote:
>>>>>
>>>>>> my reading is that google/gmail will start requiring a more=20
>>>>>> complicated
>>>>>> method of connecting to gmail server emailboxes in about 9 months.
>>>>>> in the meantime, plain imap access will still work.
>>>>>>
>>>>>> mutt can access an emailbox via imap simply enough, like:
>>>>>>
>>>>>> mutt -f imap://username@imap.gmail.com
>>>>>>
>>>>>> my reading also suggests that the ability for an imap client to=20
>>>>>> connect
>>>>>> to gmail requires a setting in one's gmail account.
>>>>>>
>>>>>> On Mon, Nov 20, 2023 at 05:30:59AM -0500, Karen Lewellen wrote:
>>>>>>> Hi folks,
>>>>>>> I still have direct access to basic html, at least until this=20
>>>>>>> morning.
>>>>>>> Google is forcing the issue, a change to standard view, requiring a
>>>>>>> captcha to ahem confirm it is me.
>>>>>>> I understand some folks use mutt, which is likely installed on
>>>>>>> shellworld.
>>>>>>> Before I=C2=A0 tamper with my main gmail account though, I am=20
>>>>>>> considering a
>>>>>>> test, I have a second gmail account I have not reached=20
>>>>>>> independently for
>>>>>>> some time.
>>>>>>>
>>>>>>> its set to forward..not solid as I have no access to my actual=20
>>>>>>> inbox.
>>>>>>> I am told though that mutt may do the trick, but as I only use=20
>>>>>>> Linux via
>>>>>>> shellworld, want a safe test, needing information.
>>>>>>> Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>>>>>> Thanks,
>>>>>>> Kare
>>
>> --=20
>> Henry Yen=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Aegis Information=20
>> Systems, Inc.
>> Senior Systems Programmer=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Hicksville, New York
>>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

