Return-Path: <blinux-list+bncBCVPTHE7K4INLP7TVIDBUBAA4KTIQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2F67F3434
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 17:50:30 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-77d62634693sf4740285a.0
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 08:50:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700585430; x=1701190230;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=znsVHaHw1THL7BLPnTuWQfJ4Ofdji1RaydH63tE7VO4=;
        b=kJw5V5Xq8hfwsrj46uY820YN1MvVEGVyM3hTcvibbm5ViSnQNqAZuE3PxIMi/z+nZl
         cUP/Z1eX+MwcrKZapiq50OSFd334PSD+hr051XrF8R3lMRN1YCyBGLvCX34WdPL1Jg4w
         lIfAEzEWNfTQUjB8+7z8+3G1FwQjaaaVTOXoY/K7KkUHbochg7XXLp765TIxe1YquFGb
         3wsKx8lKO29EEKdAeJ7KULOhd1Buqjphp5n/VCbn4t8Pg10DF79Ym8H0AXGB5GlFd3SG
         UPRG5oKBnbd9J4M4XOqWhcgfbFCzRRNGNC9hxjEHtkCLDfbyEOS+/MMFMQbReR557aqa
         gk5A==
X-Gm-Message-State: AOJu0YzBR4TXnTw8+xUxy2pqbEArk1T255Q+B4lIwF5C03DzrORAlnSY
	iDLwn+f7uEsWfkSNAu9d6tFzsg==
X-Google-Smtp-Source: AGHT+IGaiSVwkjYMM2qvtiQxIFrP2e12ZWLfMIAEiLpYCE+b4Q/pK4vy8rwFhISQMzWdNKGJGRUseA==
X-Received: by 2002:a05:620a:2845:b0:772:749a:ec13 with SMTP id h5-20020a05620a284500b00772749aec13mr4182100qkp.2.1700585429399;
        Tue, 21 Nov 2023 08:50:29 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4f13:0:b0:668:d9c1:f577 with SMTP id fb19-20020ad44f13000000b00668d9c1f577ls797357qvb.0.-pod-prod-00-us;
 Tue, 21 Nov 2023 08:50:28 -0800 (PST)
X-Received: by 2002:a05:6214:500c:b0:679:2f90:d02 with SMTP id jo12-20020a056214500c00b006792f900d02mr4622835qvb.26.1700585428380;
        Tue, 21 Nov 2023 08:50:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700585428; cv=none;
        d=google.com; s=arc-20160816;
        b=O64u2KMzVLy/UsjRINFLGL5IqXllcb27adjuQn2HSgqnhChtk2vcbtu8vHF3fSudGY
         ZKP8+51fSict0n9W0OOxJoQSQM9LjkewTgahvceYwadck63Sh2DF3ewvFMNXqFcsEtzX
         gqRT9ZrxRO7I+7q7mkFFDgMTarnraBntAixmWJSVGVaqSD0PR+TEtxjjxE4/jSiRc3cq
         UprDK5fgYzE7QkfNhCLb4uF9zMifCbD7/biHdnQbPEuZ57e4rPXA2sJ0GUeDYFf7KY8R
         jXg6zyg3vPs1jDA8rdAzggsjjYWsLwh/VqJAV4rIPjwXasT8WvyArex+g1TxBO+c3Za3
         89/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=znsVHaHw1THL7BLPnTuWQfJ4Ofdji1RaydH63tE7VO4=;
        fh=Yb/fQpl84BEXH03hjotBnK5nrlAdTBygY+Ct56T3T5A=;
        b=GO9oXJaCJt++vF3IjGmsNv+A0Ev6pBYpstsCVwA2pbV1mIEbnV0iumxEyS4TvMsShi
         hF9+HrbpglIM8LU/WQ4uojpr21foilcRkdhTqSSgy2brSARW463/Q2/iVa3iT1jSU3eg
         yLRZwHEI4sKMRPLwIW6wSUsJDstWJ5qRsIszBjGIiousKzHWqA3YUPgkG8xcKZ2q65V0
         f3BK9yZbhEcmEIDxrSlHTAw3d/wn2nMO+yelY7aDxALOi6EsB9jvTSVWIQ33ceScG2uv
         KwGQ9VV86okrACaOm7tC+qClr3rL5UepvOUuOA9JtbazMqDKDTkBmzjuXb7IOaBhWMHU
         xPnA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id hf3-20020a0562140e8300b006782027a895si7024173qvb.179.2023.11.21.08.50.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 08:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-335-77R1Tj0kMTqHRWZaZgLmbA-1; Tue,
 21 Nov 2023 11:50:27 -0500
X-MC-Unique: 77R1Tj0kMTqHRWZaZgLmbA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E9AEF29ABA39
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 16:50:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E6745502A; Tue, 21 Nov 2023 16:50:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DED2C5028
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:50:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B86BB2806046
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 16:50:26 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-623-DN8aYsc4Oz-_2D6zsVuR1g-1; Tue,
 21 Nov 2023 11:50:25 -0500
X-MC-Unique: DN8aYsc4Oz-_2D6zsVuR1g-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 95A2244FC9;
	Tue, 21 Nov 2023 11:50:24 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 4BDB91001AD; Tue, 21 Nov 2023 11:50:24 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 49F151000B6;
	Tue, 21 Nov 2023 11:50:24 -0500 (EST)
Date: Tue, 21 Nov 2023 11:50:24 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Chime Hart <chime@hubert-humphrey.com>, 
    Harley Richardson <destructatron2018@gmail.com>, blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <981c24e6-d364-83de-17f0-c6ca7c588623@panix.com>
Message-ID: <Pine.LNX.4.64.2311211149300.3575549@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
 <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
 <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
 <e4c20f48-32f9-751a-34a1-3426e6e01d2d@hubert-humphrey.com>
 <Pine.LNX.4.64.2311211101130.3574401@users.shellworld.net>
 <981c24e6-d364-83de-17f0-c6ca7c588623@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
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

okay then, lets speculate.
How much would it cost?
Kare



On Tue, 21 Nov 2023, Jude DaShiell wrote:

> People with the money haven't put it out for a browser like that and won't
> put the money out for a browser like that.  That's why it hasn't and won't
> happen.  Putting a browser together like that would need a development
> team and not only for the interface there's security considerations
> requirements and patching that will have to happen into the future for any
> such project.  That needs dollars or some other currency to attract and
> pay development team and give them enough money that this new project
> remains their only project for long enough to get the project to first
> release.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Tue, 21 Nov 2023, Karen Lewellen wrote:
>
>> Chime,
>> And that is something I do not personally understand.
>> freedos and djppp, both editions of DOS still under development are not kept
>> there by individuals using adaptive technology.
>> Instead, they are there because many people want choice.
>> Elinks when compiled with the options, provides a blending of the graphical
>> and the text. paypal is treating it as my default device for one of my
>> accounts, no more captcha.
>> Links can create the best of both worlds as well.
>> So why is there not a port of Thunderbird or another email tool that blends
>> the best too?
>> Creates enough of a progressive enhancement factor i. e. basic html, then
>> builds upon that for interfacing? That helps mobile users who are not all able
>> to get apple or are unhappy with android items.
>> Kare
>>
>>
>>
>> On Tue, 21 Nov 2023, Chime Hart wrote:
>>
>>> Well Karen-and-All, I think there are no non-graphical ThunderBird
>>> applications, so I wouldn't think that would be an option for those of us in
>>> a straight commandline shell.
>>> Chime
>>>
>>>
>>
>>
>

