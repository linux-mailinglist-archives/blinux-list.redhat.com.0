Return-Path: <blinux-list+bncBCVPTHE7K4II5CXQVIDBUBEL5DQWI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 223FF7F22FD
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 02:17:04 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-677fb25cfe5sf31895456d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 17:17:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700529423; x=1701134223;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=37KBBsqinJSIVsK7LdE6JNZ8K2ZmYOzrlI+qh6B5hBI=;
        b=NrH0jXgU4fExvIe0wihNwg93O0LX3kt6sPzXp2eDDzWfiqZTeGluu0f3MZnudcPFCV
         00pQeksLZwcQg2I/YG7RapyhytwwMqPUv5FAyp01Z4dl69qVcIYDNl2u33xTdiorbRE/
         rcIRNBy6Pbd+wkXLlxwmWPX3rRLIvYNKUsfls3YulBLEjlR45RpqoYJUQIH5pW3ds9Hp
         3xQ8KLDXomYNjeHrjXy5qnB0V3bgxp73guHWS8UxttsSpI3NqzYeit21rC7SqUf77DqC
         FMgWnpvUieFfr9FiAKRJNvLtWKwEvyszB/nHa5FoDtF4xThnDtXBRXRVOwOzvbSIsYu+
         +ZgQ==
X-Gm-Message-State: AOJu0YwyB3yA2ALBH/k3lIUBU0GIuPV1wRl5UNxWOuwPN+E4slMOcPq5
	2foN0XWYU3nhe8Y9Zdoigaq8VA==
X-Google-Smtp-Source: AGHT+IHzn//bPgl7unudTbOH7cXOWf/r/anxCY1WqoFYn8hFTn2PyeKKqur0nhPJcJtaiExs8fEigQ==
X-Received: by 2002:a05:6214:29c7:b0:66d:5b68:95c7 with SMTP id gh7-20020a05621429c700b0066d5b6895c7mr9970643qvb.58.1700529422511;
        Mon, 20 Nov 2023 17:17:02 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2581:b0:679:e68a:ed80 with SMTP id
 fq1-20020a056214258100b00679e68aed80ls591468qvb.2.-pod-prod-02-us; Mon, 20
 Nov 2023 17:17:02 -0800 (PST)
X-Received: by 2002:a67:c185:0:b0:462:8f85:783a with SMTP id h5-20020a67c185000000b004628f85783amr7861015vsj.22.1700529421846;
        Mon, 20 Nov 2023 17:17:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700529421; cv=none;
        d=google.com; s=arc-20160816;
        b=W4MbKLTdlrg1CJKSyMvXfXZoeRpbHRXX5FRlFqH2oRBiEvaudszVKa9He9yhiepOp7
         /DDxc3f1GddIavWVdVZxNvpYZ/qU2mlSAIff/pEzIg4hlGz0V8nn0C0wFhafL1GSjtfG
         KxjDBWfZysk4vCvResuTkO7ZL1nV7Qvm2TjcDbK+SEVMDTls4mtn3boZ7p31MBLyOV7D
         aI6yvsYC3+AFOUlgyG8wIVEbvhAOUQwdk97fdc2GhMmIVl6edsrBnmM2YpE0X2rFoBqC
         gnemDLyUku0YEzJN3E/ehCx5PTVVDvbchR5hf3avjLP7eiKBr8g7gC3F/VUZAmQbq/Eq
         oNKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=37KBBsqinJSIVsK7LdE6JNZ8K2ZmYOzrlI+qh6B5hBI=;
        fh=VHqNEtNZELruNFGd8Tsm/QclX1q3fISXFQHE48KIBEQ=;
        b=WiceuoZxAu6vaNmLhts4HprSa4EsrvU1vt2CCDDvyy5CcAXx1qMnEXCIrOtxhgBvw5
         J8+aZU+LvsOGSiwg0NR1e2k8vxqm+73WJtjav8787l3sroFs60R7cRSkwDm3mgVGaz7Z
         Zirpm4ippiJ8BzletgyTCnuRZ0IikQxFPD1NZRzS8r8nCgbFg0irbVvJofoWJaapmZXT
         IeTqYrQC+RehXjb824j5nuA1rQgKtof/6FTQwo+gDtBc0xWie/WldmPHC0DlBZrOL6sL
         5VmaEZI8MCk+0M4yvgGqJCk5VB+DqX/Ox6MeVmXm1irfEFAvjAzhqvLmHV2Z2gMZkt+n
         nc4Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id dn5-20020a056214094500b0065afa9743aesi8121115qvb.460.2023.11.20.17.17.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 17:17:01 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-336-scKDT7qWMCelr0EjGmmwWg-1; Mon, 20 Nov 2023 20:17:00 -0500
X-MC-Unique: scKDT7qWMCelr0EjGmmwWg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 290CD8007B3
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 01:17:00 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 256BD1121314; Tue, 21 Nov 2023 01:17:00 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1D43B1121312
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:17:00 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DADC01C04194
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 01:16:59 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-691-lihAIK3oOymanPMSzrmr8g-1; Mon,
 20 Nov 2023 20:16:57 -0500
X-MC-Unique: lihAIK3oOymanPMSzrmr8g-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id EC4354050A;
	Mon, 20 Nov 2023 20:16:56 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id A96AD1001C0; Mon, 20 Nov 2023 20:16:56 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id A77BC10009B;
	Mon, 20 Nov 2023 20:16:56 -0500 (EST)
Date: Mon, 20 Nov 2023 20:16:56 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Ishe Chinyoka <chinyoka.consultant@yahoo.com>
cc: "Jason J.G. White" <jason@jasonjgw.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <87y1esexx0.fsf@programming.brainpower.africa>
Message-ID: <Pine.LNX.4.64.2311202014530.3564917@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
 <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
 <87y1esexx0.fsf@programming.brainpower.africa>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1865398071-1700529416=:3564917"
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
--1949452079-1865398071-1700529416=:3564917
Content-Type: TEXT/PLAIN; charset=utf-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi,
What role does the two factor authentication play?
I am unsure I have an option for that, unless gmail still sends a message=
=20
to the  alternative email on the account.
Will add, my options are based on what shellworld provides..they have mutt=
=20
I have discovered.
Be blessed indeed in return,
Kare



On Tue, 21 Nov 2023, Ishe Chinyoka wrote:

> Hi,
>
> I use mutt and gmail. What I can say is that, first you need to enable
> two-factor on your Gmail account. Then, second, you have to generate an
> app password for mutt. Having copied the generated password, you have to
> set up both an Imap and msmtp utilities such as offlineimap for fetching
> the mail, and msmtp for sending the mail. Of course, I understand mutt
> can handle both these operations, so you can set up in the .muttrc, but
> as for me I use other external programmes for doing just that.
>
> What I did was to set up the ~/.netrc file where I stored my login
> credentials so both offlineimap and msmtp use this .netrc to read the
> gmail app password.
>
> As for mutt accessibility, as a text mail handler, it is just fine. You
> can use vim for composing your messages.
>
> Anyway, mutt has many configuration items. The mutt manual is detailed
> in how each of these settings affect the behaviour of mutt itself. I
> hope others can chip in. But I just wanted to help on how I set up mutt
> with gmail on my machine.
>
> Be blessed,
>
>
> Ishe
>
>
>
>
>
> Karen Lewellen <klewellen@shellworld.net> writes:
>
>> Hi,
>> my problem though is that I need access to the inbox contents entirely,
>> not just to forward.
>> The Debian list  is currently discussing things like mutt with gmail, an=
d
>> imap as an alternative.
>> Apparently this bypasses the security problems with gmail in general?
>> And yes, I send from it too..agree that hosting your own mail has
>> positives.
>>
>> Thanks,
>> Karen
>>
>>
>>
>> On Mon, 20 Nov 2023, Jason J.G. White wrote:
>>
>>>
>>> On 20/11/23 17:30, Karen Lewellen wrote:
>>>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>>>
>>> I'm familiar with Mutt, but not with using it with Gmail. In particular=
, it
>>> is my understanding that authentication is more complicated now than it=
 used
>>> to be, due to Google's security policies.
>>>
>>> This article seems to be a reasonably up to date starting point:
>>> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with-=
gmail-on-linux/
>>>
>>> I have a GMail account, but it's configured to forward everything to on=
e of
>>> my "real" e-mail accounts, and I don't use it to send messages. My Mutt
>>> configuration is et up to work with mail on my own server.
>>>
>>>
>
--1949452079-1865398071-1700529416=:3564917--

