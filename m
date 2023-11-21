Return-Path: <blinux-list+bncBCVPTHE7K4IJLGHTVIDBUBDAJPXBK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 805067F3252
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 16:26:15 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d91b47f23sf34217196d6.2
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 07:26:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700580374; x=1701185174;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uvnru3ubsSFhdKYxRCkVGLXrvUqKXKKru9ZjtbiREcc=;
        b=bWGLJJmYE1myuXLLBIotx6wll/zRlTm7SXvU7iVdBR23qMMt58Gt/zX2ZP60QurQpT
         wVnU4okBUYJOuDTOXf0btDGVymvoI7boQPqtfieN4XfX6uoYsscJgt/vW9RV+HPYyEym
         IrAQAJtEU5BUjOmltFw7t0B5yLrA2hbtZtjhMWec8AOAqUkHlqbVnO3wsLST3JNnPR+7
         tnsBH8DLcxQYFb/SZfQ7GqfVLDfV+/6+d6t/zntYj/7+sxiFEYlde1V6rX0Ou3H3xPze
         d+hFx0ua+QFobDVCsRuC7J7mALos5epMJAeCyyUWhzDwzKxH+W3o8YFyBjjJOEQEd+Qn
         q3Fg==
X-Gm-Message-State: AOJu0Yy6okHn4gKPzX9ZhTqucW5QeFMStWcTuQiiEguwiLiBEchX+Rtf
	6wh9UQCFsdifpZYN0hClrwTheQ==
X-Google-Smtp-Source: AGHT+IHXso8zub8N5Kqv2DKIXEU6u1fQzDsMjxv5H6xZ0dBBn1mLJRR64oCXVCEcT4etc41PZUc05A==
X-Received: by 2002:a05:6214:212c:b0:66d:1112:e870 with SMTP id r12-20020a056214212c00b0066d1112e870mr13318791qvc.22.1700580374210;
        Tue, 21 Nov 2023 07:26:14 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1149:b0:65b:216:b4b6 with SMTP id
 b9-20020a056214114900b0065b0216b4b6ls384906qvt.2.-pod-prod-08-us; Tue, 21 Nov
 2023 07:26:13 -0800 (PST)
X-Received: by 2002:a1f:6d83:0:b0:49c:37a1:235b with SMTP id i125-20020a1f6d83000000b0049c37a1235bmr5856373vkc.7.1700580373436;
        Tue, 21 Nov 2023 07:26:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700580373; cv=none;
        d=google.com; s=arc-20160816;
        b=Pf9y/NLw/zX/dYTszPDWBLBPc2AOEmc2ZG5nPfUqI0bZ/mY8ICcX581ULKYTgT/ihZ
         Ipp8q+Mfp9X0fEacHhzM/nCrMUk62SIvZRpdCMmWQPXVWfvizzUG+KFu1PpB4i4Mu0qE
         CFw0qVFHDwZfLJ9bHn8EzsVV6KpzAdZ5pbGKwFw9/JRZW4Ub17I1WulirvbHsbmrHp1R
         GcQaWjVsvOZhCzkcF/jOUTczY7+nox/Ugg4OLQKXBTRxVRRdu1iDTdVSGPBkhRZFs0Hf
         FRHhdHXZdq53ljRkz5LZpz5k1nrbw7p1PPP+qU5JIkE9o0jtjk7vWmn0yDRcxr/e4aQW
         c9OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=Uvnru3ubsSFhdKYxRCkVGLXrvUqKXKKru9ZjtbiREcc=;
        fh=Zhaa2uQiovV7pyUoDlpj15EQNxpPQLHAhQV/HdKckBs=;
        b=pCriK/P5AR9TB/ysHrJiNjF/F5Y/0K9tkI2B3uY/zX9q67YVcq7psPyBn2mju+Rtuy
         QnzDUkg556h0ppxmBE2eyJuRlfZ07r0s6G0iI3G6d3UL12Jr/3U5eyc7Y8cDqMS7YYyc
         CgPu0yrITQEU0uvvB0Wmlha2Wo2kVlAJI3DNTj5TL6Sd9GoqHL+S7/V+fukwlL+4A+++
         kT3fnM/ya9FTTL7+H6Y+WbD+TG1wMl1iBsqRjMcwu08QJ9Gs9YAFEw/frzeMFSLaS5Iy
         8FkG0rtXGVEdmATmUFWj6KacjRpS4zerLHIS81pkE3MXCvhmSvN55jHx3sM3TvpBu7zn
         KJIQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id r2-20020a056122146200b0049d2cea68cbsi2126903vkp.271.2023.11.21.07.26.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 07:26:13 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-373-HByEsyMYN5a7BxJefSr7cQ-1; Tue, 21 Nov 2023 10:26:11 -0500
X-MC-Unique: HByEsyMYN5a7BxJefSr7cQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C668F85A58A
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 15:26:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C2AECC15983; Tue, 21 Nov 2023 15:26:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BA336C1596F
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:26:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 94D36811E86
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 15:26:10 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-450-qDqfZ_mrNT6nKFkMs74dXg-1; Tue,
 21 Nov 2023 10:26:08 -0500
X-MC-Unique: qDqfZ_mrNT6nKFkMs74dXg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B94D344FC9;
	Tue, 21 Nov 2023 10:26:07 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 8528C1001AD; Tue, 21 Nov 2023 10:26:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 83C171000B6;
	Tue, 21 Nov 2023 10:26:07 -0500 (EST)
Date: Tue, 21 Nov 2023 10:26:07 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Harley Richardson <destructatron2018@gmail.com>
cc: blinux-list@redhat.com
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
Message-ID: <Pine.LNX.4.64.2311211022030.3574401@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <20231121000352.GW23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202007280.3564917@users.shellworld.net>
 <20231121024247.GX23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202159420.3566012@users.shellworld.net>
 <20231121035449.GY23130@nntp.AegisInfoSys.com>
 <Pine.LNX.4.64.2311202309160.3567236@users.shellworld.net>
 <a37d8eaa-1824-42d5-8a32-75bf17a906f8@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-1880974240-1700580367=:3574401"
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
--1949452079-1880974240-1700580367=:3574401
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

Hi there,
We do not have Thunderbird either as a part of dreamhost, or here at=20
shellworld.
What I would personally appreciate is an email option that still uses a=20
web  interface and then I would link things to that address.  I already=20
have mail forwarding on a second gamil account, not only faulty, but I do=
=20
not get to access what the system decides is spam but might actually be=20
needful.
Linux as a stand alone system cannot work for me personally.
thanks,

Kare



On Tue, 21 Nov 2023, Harley Richardson wrote:

> Hello,
>
> Gmail via thunderbird works fine and has done so for a while now. 2 facto=
r=20
> authentication, at least via security keys, broke in thunderbird 115.0. I=
t=20
> asks you to install an extension, and the link to said extension gives a =
404.=20
> How this stuff gets past testing and QA I'll never know. For the average =
user=20
> though, it just works. You enter your google account info in the popup th=
at=20
> appears, allow Thunderbird to access your account, and it just works with=
out=20
> any additional configuration.
>
> Harley
>
> On 21/11/2023 04:21, Karen Lewellen wrote:
>>  Oh I imagine it is..but I am not a programmer.
>>  Part of my professional life gets spent=C2=A0 trying to configure Alpin=
e,
>>  which dreamhost provides the company for whom I work.
>>  I end up with rhs timeouts to the imap server, and lost emails, and
>>  closing inboxes, and clutter over and over again.
>>  If I am forthright, I would pay gmail for the right to keep using basic
>>  html, or someone else to configure this mess so I can get back to work =
and
>>  contact with the scores of=C2=A0 resources who use this gmail address.
>>  May be one reason why I am unsure I would personally use Linux as my on=
ly
>>  operating system, even if I could.
>>  its wonderful magical clay to be sure, but I prefer just buying the cup=
 so
>>  I can get a drink lol.
>>  Given what I have been reading on the Debian list=C2=A0 about what chal=
lenges
>>  folks there encounter getting gmail to work with imap, even using
>>  Thunderbird?
>>  I respect the gifts others have for scripting and the like, but my tale=
nts
>>  lie elsewhere.
>>
>>  Kare
>>=20
>>=20
>>
>>  On Mon, 20 Nov 2023, Henry Yen wrote:
>>=20
>> >  yes, handy for testing. to use as a full-fledged email client, some
>> >  configuration is necessary, though really not any more than any other=
=20
>> >  client
>> >  (outgoing SMTP server, accounts/identities, etc.). mutt is very=20
>> >  powerful,
>> >  with the ability to run macros/scripts at lots of important junctures=
.
>> >=20
>> >  On Mon, Nov 20, 2023 at 10:01:57AM -0500, Karen Lewellen wrote:
>> > >  Hi,
>> > >  Thanks for these details.
>> > >  What does the "handy" read only flag provide?
>> > >  My goal is to access this account fully, not simply to read email,
>> > >  although as a test it should be handy.
>> > >  Unless it has changed, the code would indeed come to the alternativ=
e
>> > >  address google has on file, instead of to a sell phone..but it has=
=20
>> > >  been
>> > >  about a year.
>> > >  Thanks,
>> > >  Karen
>> > >=20
>> > >=20
>> > >=20
>> > >  On Mon, 20 Nov 2023, Henry Yen wrote:
>> > >=20
>> > > >  according to google, you will have to use "app password" as a=20
>> > > >  password
>> > > >  to your gmail account (to keep your overall google password safe)=
.
>> > > >  to do that, you need to first turn on "2-step verification", then
>> > > >  generate the app password (i think it's in the 2-step-verificatio=
n
>> > > >  section).
>> > > >  in addition, yes, there's an "enable imap" (and some imap-related
>> > > >  settings) in gmail account settings.
>> > > >=20
>> > > >  you will have to respond to the code that google sends when first=
=20
>> > > >  turning
>> > > >  on 2-step verification. but once you've generated the app passwor=
d=20
>> > > >  for
>> > > >  gmail-imap, i don't think google will send any codes merely to=20
>> > > >  access
>> > > >  gmail via imap.
>> > > >=20
>> > > >  most of this is in step 2 and step 3 of the general instructions:
>> > > >=20
>> > > >  =C2=A0https://support.google.com/a/answer/9003945
>> > > >=20
>> > > >  two other notes:
>> > > >  1. imap access has to be via ssl-imap.
>> > > >  2. there's a handy "Read Only" flag on mutt, so the command line=
=20
>> > > >  should be:
>> > > >=20
>> > > >  =C2=A0mutt -R -f imaps://username@imap.gmail.com
>> > > >=20
>> > > >  On Mon, Nov 20, 2023 at 08:09:58AM -0500, Karen Lewellen wrote:
>> > > > >  Hi,
>> > > > >  so for the following to work.
>> > > > >  mutt -f imap://lewellen.kd@imap.gmail.com
>> > > > >  Something would have to be turned on in my gmail settings?
>> > > > >  I got interrupted system call when I tried.
>> > > > >  as shared, testing with another gmail account before tampering=
=20
>> > > > >  with my
>> > > > >  main one.
>> > > > >  Karen
>> > > > >=20
>> > > > >  On Mon, 20 Nov 2023, Henry Yen wrote:
>> > > > >=20
>> > > > > >  my reading is that google/gmail will start requiring a more=
=20
>> > > > > >  complicated
>> > > > > >  method of connecting to gmail server emailboxes in about 9=20
>> > > > > >  months.
>> > > > > >  in the meantime, plain imap access will still work.
>> > > > > >=20
>> > > > > >  mutt can access an emailbox via imap simply enough, like:
>> > > > > >=20
>> > > > > >  mutt -f imap://username@imap.gmail.com
>> > > > > >=20
>> > > > > >  my reading also suggests that the ability for an imap client =
to=20
>> > > > > >  connect
>> > > > > >  to gmail requires a setting in one's gmail account.
>> > > > > >=20
>> > > > > >  On Mon, Nov 20, 2023 at 05:30:59AM -0500, Karen Lewellen wrot=
e:
>> > > > > > >  Hi folks,
>> > > > > > >  I still have direct access to basic html, at least until th=
is=20
>> > > > > > >  morning.
>> > > > > > >  Google is forcing the issue, a change to standard view,=20
>> > > > > > >  requiring a
>> > > > > > >  captcha to ahem confirm it is me.
>> > > > > > >  I understand some folks use mutt, which is likely installed=
 on
>> > > > > > >  shellworld.
>> > > > > > >  Before I=C2=A0 tamper with my main gmail account though, I =
am=20
>> > > > > > >  considering a
>> > > > > > >  test, I have a second gmail account I have not reached=20
>> > > > > > >  independently for
>> > > > > > >  some time.
>> > > > > > >=20
>> > > > > > >  its set to forward..not solid as I have no access to my act=
ual=20
>> > > > > > >  inbox.
>> > > > > > >  I am told though that mutt may do the trick, but as I only =
use=20
>> > > > > > >  Linux via
>> > > > > > >  shellworld, want a safe test, needing information.
>> > > > > > >  Anyone use=C2=A0 mutt that can lend documentation, or a han=
d?
>> > > > > > >  Thanks,
>> > > > > > >  Kare
>> >=20
>> >  --=20
>> >  Henry=20
>> >  Yen=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=20
>> >  Aegis Information Systems, Inc.
>> >  Senior Systems Programmer=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=20
>> >  Hicksville, New York
>> >=20
>>=20
>
> --=20
> You received this message because you are subscribed to the Google Groups=
=20
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
=20
> email to blinux-list+unsubscribe@redhat.com.
>
>
>
--1949452079-1880974240-1700580367=:3574401--

