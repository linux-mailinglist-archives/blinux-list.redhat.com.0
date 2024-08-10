Return-Path: <blinux-list+bncBCVPTHE7K4IIR2G6WUDBUBF5PNACC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB3A94DDF9
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 20:40:09 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7a20d58da41sf399910485a.1
        for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 11:40:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723315209; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwLAUgjzNzQOxfMgnK1WJf0RtWEbi2jvX5WrxNwmKeZjmfXn7nG7L5G2TSIH4W68Qo
         YqsE0vaZaSQSQvQ55Bz4OU+XYFQ6eMM6p70sOVjo6BQ51qe22pOtTuZZYttxHKJIBiOg
         rGq4DejiGXyBXaYjUxOimO1Xpj7KjdIx8sGLnTPFEuf661JgF4nAahqSpjObB/f5+m6n
         IabRlc4BhFv+Kg8SXbnRkyelZiEI0KUgwetDk8zryZ8euutj3g+ZIpKKKx6x72nQ8Cfe
         vDeelbfza500SZQ9W3B+bK9hbe8boiTrg29PaCexN63X08DiT8aytvuBYHopD4+2nTFh
         Y1bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=LEOL0Uo8KMNpw1N84fp0kq9XZwcoJ6KVsEJjZK7JZ08=;
        fh=5D+pAxi9Mqzg4rgVxp2FHo76A4MOPTvHlF/vaHTy4pA=;
        b=Wm5CD1gxIgRjX28XnbiCsjo/68CcT6bI4k757oI/K9WvmzDAd7f31Ny/JYYvsdlECb
         GTfrNsL+vc4dRP+kW0fKpaqtwgqQdYYAhwg8zJftHUj1lmJ4wHwtliKnmN1uELDrtDKY
         r+/pm7ASPdpyjQwZDJw0wTJqHknHBp+zSI7AaEBsonXFfvqDogG4iZ26TEIaKFsstEvi
         bRco9oTKrV9gwXJyHqWJdtW54L8a4ik0NlIvUhqnZ+gtI9V7NMpk/HK7RXBvJjKgXC5C
         SPENQ0QCFZTfv9U0ZExbxrWOV4juoKnDV0tH6aBVQLb0P9O3zKlDI2zJgdSiXTFhEPMc
         53BA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723315209; x=1723920009;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LEOL0Uo8KMNpw1N84fp0kq9XZwcoJ6KVsEJjZK7JZ08=;
        b=G9+wz8KEVP71VfQgPyLYLFN+/3/l+PsykcCGbV7F6INioUkh5MaHwRMumv84NY4zrh
         806kApYNFUpTjWKZD/RlTCMg7PwuBPpa/Nwo7SUZbSOm78TkGRLNvHOwLP1bU27z3p8f
         xolbDGNxHv1dQa3B9+1vBkDnLPyEcy0YrcRI0wizCRzi/Ott8X9BgX+GmP1AYFTmBkb6
         /k56QATv0j8b8YUL268R3gw/BSgNKqPrsBrDRr1cx8LFi5TxD5OD7hNNGpC3BlzkI0yY
         0ryA4PBTKqpHtxrpOEF8m5qPv3JsEJuk2WweINS0gJBpG9ZPEm13VHF3+22u6UB33RFP
         HOHg==
X-Forwarded-Encrypted: i=2; AJvYcCXF8vIZSnUboDattujeWvMhCupMzke7iDnmxnzcYPr+2Y/e8/oij3Nd/jovLtxqAuV53t0tPQ8hYrRYM22lBgkjZEtt83RX1de4
X-Gm-Message-State: AOJu0YyPW1myix8zcN8SMjWrHWwRSyLSZ6ACqODbyHq7Trw8Tu7A01zn
	/pQRNpbi6Jh4Sd/RR5zHF1zP+BrFe7E+XvUJqJgRdQ0nsYf0sbLhpimGmSdO2hA=
X-Google-Smtp-Source: AGHT+IEGYnCdj7VNMCAmDFsXfGAuXDRX5VqYiMZxzj4T6C0arFPnW5bt3pnKdblBjzOzs4dBCKzISg==
X-Received: by 2002:a05:620a:4042:b0:7a2:ccd:9665 with SMTP id af79cd13be357-7a4c17caea1mr650646385a.37.1723315208344;
        Sat, 10 Aug 2024 11:40:08 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:486:b0:44c:9bbc:abf8 with SMTP id
 d75a77b69052e-451d10e7feels47612881cf.0.-pod-prod-02-us; Sat, 10 Aug 2024
 11:40:07 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX9wKMu+TLdBqXfvB3ml+EqUZ+l6BjP8ye/hYhsIUqMwYdc1dx9Fpe7KA2A4QNBIC4LLFWEXVMTeIoh3s5TmAvAtH8CT5Vo0EwZLB/m
X-Received: by 2002:a05:622a:5a97:b0:44f:ddad:c21c with SMTP id d75a77b69052e-45312523be4mr81147201cf.13.1723315207417;
        Sat, 10 Aug 2024 11:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723315207; cv=none;
        d=google.com; s=arc-20160816;
        b=XGy+82PMVQIz2aroPXo6kUutEGdPWcUZ3PbYKfKm+4CDo2+ImrX5I0+mEDAXcmBfxi
         4AlAUbaG4C7UXqpbiIfefLaNUPtslBLhWeefEa0uTnF7qscylZbbsPFeMGRt8gUQwxEl
         XamyOT+H2SrxaKz5Ql5AWalVtzCv87TOLzwCzUsCjSCGP4w8wmHIXyJSYFcylBuU+hZj
         9bn4GxWmKD079CdIi33cmchuwSbXqEFcJOi+ZmLxREECfH9e/iz4PXErMHTG+81tgsq1
         QAR5GhvLtt9ZzcmdB97F4DJst2dWlcmGhIgMuTKbB7nv9F+ke5AO1aoDO6HkIkJlkNNX
         uBVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=LEOL0Uo8KMNpw1N84fp0kq9XZwcoJ6KVsEJjZK7JZ08=;
        fh=grrkjGclC1IYSaoisEeKV+KQM2HZZFYeRto+XcgiqYI=;
        b=hprAwpoqkAxPB8yNJFZmnTrTFyXB5c9jT0TYF5CU7tpRLALT2kHxY2YgPLOiF3zqz8
         a5CDrS0XIcGQY1z2JcG5y05wBpF4n6KV37LwK7zKgo3+uBcsFWLHU2BJ2UT5LfR0MDaK
         vgQI8o5wgDgwZXIFQ9NnqXOI3q4gxIwldOmWWGTtvyAoENrBcrjSJ/tDl6UOdXuB9P3q
         KOYTV0rbTh1uOmk3B1XC1SRvL3y5WkliDYV+67rCuuQ6MsJ+WrL1rHqxqA69+ugv1HyA
         MpT5Ai8f/8JV6CzX6Rbh4DY/j0f4CRTBpzMnVOnophAwgPSm6szvGZ2ZDrGBG/DB4Em4
         dByA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c266eb7si23675671cf.372.2024.08.10.11.40.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Aug 2024 11:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-639-auA40YCxNkCjL0-fihzj5Q-1; Sat,
 10 Aug 2024 14:40:05 -0400
X-MC-Unique: auA40YCxNkCjL0-fihzj5Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CC0911955F43
	for <blinux-list@gapps.redhat.com>; Sat, 10 Aug 2024 18:40:04 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C68D61955F45; Sat, 10 Aug 2024 18:40:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C436F19560AE
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 18:40:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3F0121955F1E
	for <blinux-list@redhat.com>; Sat, 10 Aug 2024 18:40:04 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-332-hodCk_rPN0muCShq_INFyg-1; Sat,
 10 Aug 2024 14:40:01 -0400
X-MC-Unique: hodCk_rPN0muCShq_INFyg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B564C40508;
	Sat, 10 Aug 2024 14:40:00 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 6DA241001C5; Sat, 10 Aug 2024 14:40:00 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 6C436100080;
	Sat, 10 Aug 2024 14:40:00 -0400 (EDT)
Date: Sat, 10 Aug 2024 14:40:00 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: "cstrobel crosslink.net" <cstrobel@crosslink.net>
cc: Paul Merrell <marbux@gmail.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: taking a screenshot using either Links or e-links?
In-Reply-To: <DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2@DM6PR18MB2506.namprd18.prod.outlook.com>
Message-ID: <Pine.LNX.4.64.2408101435270.4167173@users.shellworld.net>
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com>
 <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
 <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
 <Pine.LNX.4.64.2408092006300.4155520@users.shellworld.net>
 <DM6PR18MB2506A27A81B8C58C4CDBB069C7BB2@DM6PR18MB2506.namprd18.prod.outlook.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: MULTIPART/MIXED; BOUNDARY="1949452079-741565194-1723315200=:4167173"
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
--1949452079-741565194-1723315200=:4167173
Content-Type: TEXT/PLAIN; charset=X-UNKNOWN; format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE

My sincere apologies.
I am not asking about lynx the cat. Amazon has removed the=20
www.amazon.ca/access door all together.
Meaning that when one tires to log in there the html error that empties=20
form fields, all form entries will be lost error happens.
instead, I am asking, as I did several months back for the links - as in=20
chain or elinks solution since both allow  amazon Canada log in.
I am also not sure if I am getting all the posts, since shellworld=20
administrations still believes they are above the need for ptr records.
Thanks again,
Kare



On Sat, 10 Aug 2024, cstrobel crosslink.net wrote:

> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82Looks like 'p' to p=
rint to a file in Lynx.
> =E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=
=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=80=82=E2=
=80=82=E2=80=82=E2=80=82=E2=80=82https://defkey.com/lynx-2-8-9-shortcuts
> [https://defkey.com/images/program/lynx-2-8-9-2022-03-31_02-08-02-origina=
l-size.png]<https://defkey.com/lynx-2-8-9-shortcuts>
> Lynx 2.8.9 keyboard shortcuts<https://defkey.com/lynx-2-8-9-shortcuts>
> Lynx is a text-based web browser that runs in DOS, Windows and Unix-like =
operating systems. Started in 1992, Lynx is the oldest web browser still be=
ing maintained.
> defkey.com
>
>
> ________________________________
> From: Karen Lewellen <klewellen@shellworld.net>
> Sent: Friday, August 9, 2024 8:08 PM
> To: Paul Merrell <marbux@gmail.com>
> Cc: Linux for blind general discussion <blinux-list@redhat.com>
> Subject: Re: taking a screenshot using either Links or e-links?
>
> I appreciate that wisdom.  However, I would deeply prefer the browser
> specific solutions if at all possible.
> I am using a Linux shell, which may impact how this door works.  further
> the  extra links  compile on my desktop is for DOS not Linux.
> With appreciation,
>
>
>
> On Fri, 9 Aug 2024, Paul Merrell wrote:
>
>> On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen <klewellen@shellwo=
rld.net>
>> wrote:
>>
>>>   well..how would that save a file in a way to share it with others?
>>> print screen creates in theory a printed copy.
>>>
>>
>> On my system, it brings up a screengrab program.
>>
>> --
>> [Notice not included in the above original message:  The U.S. National
>> Security Agency neither confirms nor denies that it intercepted this
>> message.]
>>                                                =C2=AF\_(=E3=83=84)_/=C2=
=AF
>>
>
--1949452079-741565194-1723315200=:4167173--

