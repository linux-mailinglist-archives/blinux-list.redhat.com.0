Return-Path: <blinux-list+bncBCVPTHE7K4IILK7QVIDBUBGAOGSNC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B539A7F23F2
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 03:27:18 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-41e3e4aa311sf63331251cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 18:27:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700533637; x=1701138437;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JXxxfgppKu9DAXhjQu/OuNBBV0sQpi56ID0KZQTdwNQ=;
        b=MV/XconTUcKjPnbjMIW7Jg3uipu/V7JkNsmOtZafuQK/QNipxNR+K+FqkoMXz548f5
         PuE/y0ddhruFAHHWttug8tjq16zGls79nOZdI74EbQ/kF6tgcxD/1S+AHAFLpuswEg1C
         /HLVaCZNg8zYC5EowIrfuBgphWLTHbTRu9ArEBI2DjMgWDfESBmLvESkPYABlmwn6aOb
         3bXaIrXXMXgqzgV80jDw4EVqHUercLTaU4bhjynPr/BQNSAdeEFcN8BP4FF3TKAlEToQ
         DbgkUgiSsk3a9e9TMC7dUUBNkldk6fT38hWthIsbfSk1rd579acBZtZYetvd6ZWM8NkH
         QTQw==
X-Gm-Message-State: AOJu0YweQyaxSYytetBkQySstfZENJrQr/NMB/fmvXQ/Glc1BjsKmyvS
	IcnszT3aDVIwgiDzGGVa81uqzA==
X-Google-Smtp-Source: AGHT+IGkiRDYBxaFkL9Z0fdba7EfGcKyof3ODca2eEBRf79zmVaJKFc9YbWQggCR9o0abqTMchF1+g==
X-Received: by 2002:ac8:5d55:0:b0:421:bc6a:a643 with SMTP id g21-20020ac85d55000000b00421bc6aa643mr13669880qtx.45.1700533637526;
        Mon, 20 Nov 2023 18:27:17 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f4d:0:b0:419:5434:d639 with SMTP id g13-20020ac87f4d000000b004195434d639ls4772588qtk.0.-pod-prod-06-us;
 Mon, 20 Nov 2023 18:27:16 -0800 (PST)
X-Received: by 2002:a05:620a:4005:b0:778:8dc1:bb7b with SMTP id h5-20020a05620a400500b007788dc1bb7bmr11434085qko.27.1700533636432;
        Mon, 20 Nov 2023 18:27:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700533636; cv=none;
        d=google.com; s=arc-20160816;
        b=WmwdYkahtz8abAJUCidsImprFVQvNq1iN8GF/GVJ3FXgn7l6bvrU1mzZ6jpIvaHa3z
         MRpKw4y2T3bo5JT21j5gAX5+yKetnZ2/6bkpzG/0fFN5+coKZ6/7E6sOtrxmhJ+wKSvW
         mgggNBKUZK2hZHp1FEBRUq1rnBixHtAxHtmIG5CQ0SDd+Ck1xT7ZE8q/4nttnv+mU0R6
         b7BUbxij+K9f80NOM80NvOSpGzB5QMvW5rehN+wDz5slDzccMPde0bNIAEKEB3h/Y8PF
         f2zN5KdzP+Hs3IriNdqqVi7eTBPqtZ3Oo4c91bn2ZrRDpCAhdJs1mLUwjxnZKlAWwXMR
         sQxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=JXxxfgppKu9DAXhjQu/OuNBBV0sQpi56ID0KZQTdwNQ=;
        fh=/WXTkerNGoKzvmET2at0GoHN0WHXrK3HWcjGxRSP3cg=;
        b=XjKxiCudi36gIDLs6/xRdjDYlCPHB36eLoPOp4AgHP91ED8TzcRDwUCe3w/0nSHY7Q
         0ayUkBEft7J2Yeb4981BRA30nNPgGetAiWH6LEj16HX/L2r0gmIrT3bTHqVqQE8uV4q6
         qVAfwqc0bQNhs3/9EDDlqvjW5JzsE+5bru8zVQ0nKT6+hvkGgf+CIZh5ck7Dr/kElZYU
         I90MBQSXi22W5las6WXN9HbMwc72Cqd/K+nJ1WLfLkko/8KwRNaYIsk+MHpAfAEb4rPl
         ebbaje37XbXxUDJ932kuSlYz8eRx+9/IO2N6d5Ar4WW9BsamDDX8wXLSg+Q+XXfwJykS
         UQsw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id y22-20020a37e316000000b007759e85025fsi8285909qki.628.2023.11.20.18.27.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 18:27:16 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-691-TUbMHC2ROYuUbvs4mlWBcA-1; Mon, 20 Nov 2023 21:27:14 -0500
X-MC-Unique: TUbMHC2ROYuUbvs4mlWBcA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com [10.11.54.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC52A85A59D
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 02:27:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id A8BDD36E2; Tue, 21 Nov 2023 02:27:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A165A36E9
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 02:27:13 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CCB0A8007B3
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 02:27:13 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-530-BmuAUCL7PO-4PeAlOjY2bA-1; Mon,
 20 Nov 2023 21:27:11 -0500
X-MC-Unique: BmuAUCL7PO-4PeAlOjY2bA-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 18AC04050A;
	Mon, 20 Nov 2023 21:27:11 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id D42B21001C0; Mon, 20 Nov 2023 21:27:10 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D378710009B;
	Mon, 20 Nov 2023 21:27:10 -0500 (EST)
Date: Mon, 20 Nov 2023 21:27:10 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Ishe Chinyoka <chinyoka.consultant@yahoo.com>, 
    "Jason J.G. White" <jason@jasonjgw.net>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <f2f8c94f-1dd1-3d48-0878-b0c31abc62ee@panix.com>
Message-ID: <Pine.LNX.4.64.2311202125320.3565931@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
 <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
 <87y1esexx0.fsf@programming.brainpower.africa> <f535aa18-d83a-637d-4fc6-298db97b360f@panix.com>
 <Pine.LNX.4.64.2311202021350.3564917@users.shellworld.net>
 <f2f8c94f-1dd1-3d48-0878-b0c31abc62ee@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-2039967928-1700533630=:3565931"
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
--1949452079-2039967928-1700533630=:3565931
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

As stated, if sent to the alternative email address, and not a cell phone,=
=20
that would not be the worst thing.
Honestly I am considering finding a way to export both gmail inboxes=20
somewhere after I get access again.



On Mon, 20 Nov 2023, Jude DaShiell wrote:

> It's a prompt notification gmail sends you each time you log on and it ha=
s
> a yes and no button hitting the yes button gets you access to your
> account.
> Two factor authentication has been cracked regularly by the bad actors on
> the internet.  I think it was stormdragon2976 that wrote fleacollar.sh an=
d
> I have what's probably an outdated copy of it around here somewhere.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Mon, 20 Nov 2023, Karen Lewellen wrote:
>
>> fleacollar? laughs!
>> seriously,  unless that cell phone process is voice only, that door is a
>> closed one, if it has to be done often.
>> When I lost access to my research gmail account lewellen.kd@gmail.com, I=
 set
>> up mail forwarding.  only to have items flagged as spam that I could not=
,
>> still cannot reach.
>> For the inbox I lost access to  this morning, my need is greater, access=
 to
>> its contents for the files  stored there.
>> lost that with the mail forwarding door as well.
>> Kare
>>
>>
>> On Mon, 20 Nov 2023, Jude DaShiell wrote:
>>
>>> Gmail always has AllMail which is everything that comes at anyone in gm=
ail
>>> and everything that goes out to everyone in gmail, the inbox and all ot=
her
>>> labels are subsets of AllMail.
>>> For would-be mutt users, a script found in some versions of mutt is cal=
led
>>> fleacollar.sh intended to make proper setup of mutt less pain-filled.
>>> If use of gmail is a must have, you'll need to enable two factor
>>> authentication which means you need to provide your cell phone number f=
or
>>> two factor authentication and then generate an app-password to use it.
>>>
>>> Another alternative would be to log into your google account and arrang=
e
>>> to have everything forwarded to a different email address off gmail in
>>> some future date.  This way for the stuff coming at you you'd never nee=
d
>>> to touch gmail again.
>>> Pre-existing content of AllMail could be pulled onto that other email
>>> address with offline-imap.
>>>
>>>
>>> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
>>> defense of liberty: soap, ballot, jury, and ammo. Please use in that
>>> order." Ed Howdershelt 1940.
>>>
>>> On Tue, 21 Nov 2023, 'Ishe Chinyoka' via blinux-list@redhat.com wrote:
>>>
>>>> Hi,
>>>>
>>>> I use mutt and gmail. What I can say is that, first you need to enable
>>>> two-factor on your Gmail account. Then, second, you have to generate a=
n
>>>> app password for mutt. Having copied the generated password, you have =
to
>>>> set up both an Imap and msmtp utilities such as offlineimap for fetchi=
ng
>>>> the mail, and msmtp for sending the mail. Of course, I understand mutt
>>>> can handle both these operations, so you can set up in the .muttrc, bu=
t
>>>> as for me I use other external programmes for doing just that.
>>>>
>>>> What I did was to set up the ~/.netrc file where I stored my login
>>>> credentials so both offlineimap and msmtp use this .netrc to read the
>>>> gmail app password.
>>>>
>>>> As for mutt accessibility, as a text mail handler, it is just fine. Yo=
u
>>>> can use vim for composing your messages.
>>>>
>>>> Anyway, mutt has many configuration items. The mutt manual is detailed
>>>> in how each of these settings affect the behaviour of mutt itself. I
>>>> hope others can chip in. But I just wanted to help on how I set up mut=
t
>>>> with gmail on my machine.
>>>>
>>>> Be blessed,
>>>>
>>>>
>>>> Ishe
>>>>
>>>>
>>>>
>>>>
>>>>
>>>> Karen Lewellen <klewellen@shellworld.net> writes:
>>>>
>>>>> Hi,
>>>>> my problem though is that I need access to the inbox contents entirel=
y,
>>>>> not just to forward.
>>>>> The Debian list  is currently discussing things like mutt with gmail,=
 and
>>>>> imap as an alternative.
>>>>> Apparently this bypasses the security problems with gmail in general?
>>>>> And yes, I send from it too..agree that hosting your own mail has
>>>>> positives.
>>>>>
>>>>> Thanks,
>>>>> Karen
>>>>>
>>>>>
>>>>>
>>>>> On Mon, 20 Nov 2023, Jason J.G. White wrote:
>>>>>
>>>>>>
>>>>>> On 20/11/23 17:30, Karen Lewellen wrote:
>>>>>>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>>>>>>
>>>>>> I'm familiar with Mutt, but not with using it with Gmail. In particu=
lar,
>>>>>> it
>>>>>> is my understanding that authentication is more complicated now than=
 it
>>>>>> used
>>>>>> to be, due to Google's security policies.
>>>>>>
>>>>>> This article seems to be a reasonably up to date starting point:
>>>>>> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-wi=
th-gmail-on-linux/
>>>>>>
>>>>>> I have a GMail account, but it's configured to forward everything to=
 one
>>>>>> of
>>>>>> my "real" e-mail accounts, and I don't use it to send messages. My M=
utt
>>>>>> configuration is et up to work with mail on my own server.
>>>>>>
>>>>>>
>>>>
>>>>
>>>
>>
>
> --=20
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>
--1949452079-2039967928-1700533630=:3565931--

