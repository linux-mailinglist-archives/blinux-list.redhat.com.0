Return-Path: <blinux-list+bncBCVPTHE7K4INVDXQVIDBUBEPNQIV2@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCB77F230A
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 02:26:51 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6757f3d7911sf27251506d6.1
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 17:26:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700530010; x=1701134810;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kzsqLzuIvsu/pl///5lzcNDsvB7jplIR7lbgNHKuCAg=;
        b=MPR7qyGjCc9iWGzC2tB13zZ6Sg87/RWv8kSjr1SWGrNfe5jBacl6P6fkUfThgb75qf
         rUQDqQy8HtnN7czKmPS06SnAAILNeLD0JRcTJNZXs4yXp7jdLOe4ZdbY5vzpeESmCuQV
         KLXfwpt92Hfdj9EAusA6kMbb/uHUtsgany/Avt2OSuEfasQBIBZ4cFi78JLJwx/XGZfc
         UzfQKDkX+pxihQXyRW/QNFN9V6F/flxscTqwBFDnxdChyxdDwCTMMRFQTRehqLMovWm7
         PEC9EZAjIMXTb2Ns7Tgk22654GrBk2P9OET8yPqRoEe8HmvIj/bjsXZhCGnTRmb3g3LH
         cZ3A==
X-Gm-Message-State: AOJu0Yz/GuOjfKyCB0Hzau04cmPv0l6R822HPbvlgaS2ipqFR1kBwmqJ
	QQMnXsseMLHTUw4qJ00PQXcmbg==
X-Google-Smtp-Source: AGHT+IFRJZkNDS2Wkq5XSM+40jIMhW2NJSX3hwUOzk4qX80Mr2601Oz1TMNGrUiUzJ3I85csBAIvZw==
X-Received: by 2002:a0c:e045:0:b0:674:b63c:a67d with SMTP id y5-20020a0ce045000000b00674b63ca67dmr7624343qvk.58.1700530010628;
        Mon, 20 Nov 2023 17:26:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:a6c:b0:646:f0a7:568f with SMTP id
 ef12-20020a0562140a6c00b00646f0a7568fls65046qvb.1.-pod-prod-08-us; Mon, 20
 Nov 2023 17:26:50 -0800 (PST)
X-Received: by 2002:ad4:5d47:0:b0:66d:169a:d41c with SMTP id jk7-20020ad45d47000000b0066d169ad41cmr12654564qvb.19.1700530009911;
        Mon, 20 Nov 2023 17:26:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700530009; cv=none;
        d=google.com; s=arc-20160816;
        b=w9QYKkleOqGd/pPEn0+srxRDI9G+/Bk3a/uvJdhPKrDYDQEZcdC4iiEmTBrSIfJfmx
         d9CIQ9i06zaciOrhkv7zdQb7ZrzD1X6nqXj6wuFtTRyaxwq4JJ8GlQqutIurCOGPMKVK
         HpZ2NRrnHQnRRQRFfbrWkUBKtyegzla/YxgZmJiz4KGBV1Nu3g1aPUxCtCkqAON5lCPy
         LgHi4KVp/2tA8QITMb6WlukgZgE83nboZwYmQI/a0CNwLWDqds3nvMrQD+tEBmn3VS8s
         DWm5O9Rgu6dZmuEY7fU67tXZv2r1yGg6xW/3iq7qfgE+Nukr7IxNCAdWLtSG8SkBqGWv
         PG0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=kzsqLzuIvsu/pl///5lzcNDsvB7jplIR7lbgNHKuCAg=;
        fh=/WXTkerNGoKzvmET2at0GoHN0WHXrK3HWcjGxRSP3cg=;
        b=c8p4avFUk7INkNFdWxGrAby9jk5XY7pY7LnDZoC3UYlflCVC7XJjZO8mTD0ficSXKX
         YJacEXYDsCp87Wsa/qeuXBJIQbDbCTsyXnwfjvZnPBRBAbirwAfLhPFosLK+D6GuIRBX
         /KE60V2oaq9iaG7ytTzCfrbdHAq9KmRszGEwQCplA0SodMJra79EuYXSQ9HM2f8hutx+
         eQbxM6oGN+eRJU/7z77s8NMke6zjjqJfXXKB94w5gMO4X75fUzLVCnxddnoJ4IgUhVj9
         OllHTHid0aT3Ir2DONeUzM0C0bJzpALQJigM3Y9kyPHvfLtFj6uXLmtYXACHXK9KMMps
         2I/A==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id ra15-20020a05620a8c8f00b00779db1453aesi7688443qkn.367.2023.11.20.17.26.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 17:26:49 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-543-PjSjalRCPi-YmbpYy0o3ug-1; Mon,
 20 Nov 2023 20:26:48 -0500
X-MC-Unique: PjSjalRCPi-YmbpYy0o3ug-1
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com [10.11.54.10])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3042B3C0F437
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 01:26:48 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 2C6FC475004; Tue, 21 Nov 2023 01:26:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2585C492BFC
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:26:48 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4EAC810FC0
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:26:47 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-620-e3KjzNCVN2KX2TFtTzklgg-1; Mon,
 20 Nov 2023 20:26:44 -0500
X-MC-Unique: e3KjzNCVN2KX2TFtTzklgg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id D83D34050A;
	Mon, 20 Nov 2023 20:26:43 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A39EE1001C0; Mon, 20 Nov 2023 20:26:43 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A22AF10009B;
	Mon, 20 Nov 2023 20:26:43 -0500 (EST)
Date: Mon, 20 Nov 2023 20:26:43 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Ishe Chinyoka <chinyoka.consultant@yahoo.com>, 
    "Jason J.G. White" <jason@jasonjgw.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <f535aa18-d83a-637d-4fc6-298db97b360f@panix.com>
Message-ID: <Pine.LNX.4.64.2311202021350.3564917@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
 <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
 <87y1esexx0.fsf@programming.brainpower.africa> <f535aa18-d83a-637d-4fc6-298db97b360f@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.10
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1815460779-1700530003=:3564917"
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.
--1949452079-1815460779-1700530003=:3564917
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

fleacollar? laughs!
seriously,  unless that cell phone process is voice only, that door is a=20
closed one, if it has to be done often.
When I lost access to my research gmail account lewellen.kd@gmail.com, I=20
set up mail forwarding.  only to have items flagged as spam that I could=20
not, still cannot reach.
For the inbox I lost access to  this morning, my need is greater, access=20
to its contents for the files  stored there.
lost that with the mail forwarding door as well.
Kare


On Mon, 20 Nov 2023, Jude DaShiell wrote:

> Gmail always has AllMail which is everything that comes at anyone in gmai=
l
> and everything that goes out to everyone in gmail, the inbox and all othe=
r
> labels are subsets of AllMail.
> For would-be mutt users, a script found in some versions of mutt is calle=
d
> fleacollar.sh intended to make proper setup of mutt less pain-filled.
> If use of gmail is a must have, you'll need to enable two factor
> authentication which means you need to provide your cell phone number for
> two factor authentication and then generate an app-password to use it.
>
> Another alternative would be to log into your google account and arrange
> to have everything forwarded to a different email address off gmail in
> some future date.  This way for the stuff coming at you you'd never need
> to touch gmail again.
> Pre-existing content of AllMail could be pulled onto that other email
> address with offline-imap.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Tue, 21 Nov 2023, 'Ishe Chinyoka' via blinux-list@redhat.com wrote:
>
>> Hi,
>>
>> I use mutt and gmail. What I can say is that, first you need to enable
>> two-factor on your Gmail account. Then, second, you have to generate an
>> app password for mutt. Having copied the generated password, you have to
>> set up both an Imap and msmtp utilities such as offlineimap for fetching
>> the mail, and msmtp for sending the mail. Of course, I understand mutt
>> can handle both these operations, so you can set up in the .muttrc, but
>> as for me I use other external programmes for doing just that.
>>
>> What I did was to set up the ~/.netrc file where I stored my login
>> credentials so both offlineimap and msmtp use this .netrc to read the
>> gmail app password.
>>
>> As for mutt accessibility, as a text mail handler, it is just fine. You
>> can use vim for composing your messages.
>>
>> Anyway, mutt has many configuration items. The mutt manual is detailed
>> in how each of these settings affect the behaviour of mutt itself. I
>> hope others can chip in. But I just wanted to help on how I set up mutt
>> with gmail on my machine.
>>
>> Be blessed,
>>
>>
>> Ishe
>>
>>
>>
>>
>>
>> Karen Lewellen <klewellen@shellworld.net> writes:
>>
>>> Hi,
>>> my problem though is that I need access to the inbox contents entirely,
>>> not just to forward.
>>> The Debian list  is currently discussing things like mutt with gmail, a=
nd
>>> imap as an alternative.
>>> Apparently this bypasses the security problems with gmail in general?
>>> And yes, I send from it too..agree that hosting your own mail has
>>> positives.
>>>
>>> Thanks,
>>> Karen
>>>
>>>
>>>
>>> On Mon, 20 Nov 2023, Jason J.G. White wrote:
>>>
>>>>
>>>> On 20/11/23 17:30, Karen Lewellen wrote:
>>>>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>>>>
>>>> I'm familiar with Mutt, but not with using it with Gmail. In particula=
r, it
>>>> is my understanding that authentication is more complicated now than i=
t used
>>>> to be, due to Google's security policies.
>>>>
>>>> This article seems to be a reasonably up to date starting point:
>>>> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with=
-gmail-on-linux/
>>>>
>>>> I have a GMail account, but it's configured to forward everything to o=
ne of
>>>> my "real" e-mail accounts, and I don't use it to send messages. My Mut=
t
>>>> configuration is et up to work with mail on my own server.
>>>>
>>>>
>>
>>
>
--1949452079-1815460779-1700530003=:3564917--

