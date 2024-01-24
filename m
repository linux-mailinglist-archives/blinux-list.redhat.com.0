Return-Path: <blinux-list+bncBCV3N6GOXMCRBDEFYKWQMGQEISCETNY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 63FD583A009
	for <lists+blinux-list@lfdr.de>; Wed, 24 Jan 2024 04:22:54 +0100 (CET)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-783abd199dbsf135773585a.2
        for <lists+blinux-list@lfdr.de>; Tue, 23 Jan 2024 19:22:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1706066573; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tg8I1d0Dhqe8zj3o1eT6HZENUq09Vn6FJmLSMjovkFqHtbBlNRTqlzf4EVzP9OBR8R
         h6tfG6kb6muXBAKPjvZgtDIfGKEWUzEgRfXi34RLk3YoMSnPucI8LPGLmZeaL4BHqYqU
         gvAWzoCLFZvuotMCgrymS3bfZ2qPIQnj8BM9yqCGo98O28XcBtwjhWFbBP7Jq8tWov2p
         xN6zAF2Ua8DMDZ3tdHw+s6fC7W6NUh0tf4kYqlzh8fvMZSL0q7pvw0bPwVlt3y8VHbaV
         ZrZwjA/ZkVxcrZYA9CpRATxgPWWz3m2/vu7Rs6rF1MX1yesUZVUzUUactmL1xt0ckDJ8
         zxlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=EqXAfDGm2wDTELYnWSf9rMRq4HjF8xRjsEuuJuN46Uo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=DDyOXG2iKfzN7tgtCymkS3fVkFvdHmUkNWelxOqM5h2rj+Wdhb49shrI6MX4xlgdGU
         n486RmK6oZcEbcy/EkWbIcwvMb6yF8fkDrsehy6RK+g/siu+7kCK8kwnnRW3UEjZY6S5
         HWWTID0FyjtmPl6d4kGPZ6OpZoqQYtlqzav2XDDwnz8ttP7blYFG5lTL7cI7afwqnm5z
         r6T2r0KwJ/NBU/KLhxQ6SCXUOk1ukF05Y5oAmTOePWQyStW24veG1gHk1Tvd+sDZig5s
         5+uDegAAFHzZm8HxUkP6/ktjMvEjENC9xu4Pv84TOJmZ27T20tAeMVhw/2fTB3aWkoti
         s+2w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706066573; x=1706671373;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EqXAfDGm2wDTELYnWSf9rMRq4HjF8xRjsEuuJuN46Uo=;
        b=i8NRJegKqsFfr1VePginqyrE+4lyDbmesXQ6xGYL1ynlP+eZfyaOkQjMbNuMWJ/Xog
         2qPiXbv/fuBc0eT8QSj0CQBbkuPS98dL0lQCEKmEekA4Re64e72H1eC9JUfP10TX2Txh
         n48ZgvmhfQ2+UOtb5uGEfzuvWoB5zoc3hbSwDRu9MOXP094mTCkhxmj6zOmByLJIiKe2
         KnPw+aB2mwVO4eMo5bK8siq6MLOuOLp3R8Fn7wjaoDdfowjEFRUX9Mpm222v8jvOMl2A
         eLvuWMWf3Odw4OhIOKM0ZIFBoKlcFgnROh/5s31GZvc4cyc6EPhb77SfmQn1nonaVhkC
         Tl3A==
X-Gm-Message-State: AOJu0Yzauof5qCLn1SfYPTqT4IfJ0nW09Xpyovpbxxl05r3xeEz60OpS
	n9+u4j0xem1fUSiCPkYkyxEzCMsmawn5DPT7AKyJry8C+RHdDvC4BBBjxqVyWbM=
X-Google-Smtp-Source: AGHT+IFzp3i5lsSyU7tPSbDuu/sY4dqH0Gg8BHmGD1gsUk6XsXBdii9Z44ribhowuyJ/bGtp1fV1oQ==
X-Received: by 2002:ac8:7c92:0:b0:42a:5194:60b with SMTP id y18-20020ac87c92000000b0042a5194060bmr1305296qtv.81.1706066573089;
        Tue, 23 Jan 2024 19:22:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:82:b0:42a:4390:38a2 with SMTP id
 o2-20020a05622a008200b0042a439038a2ls3313609qtw.1.-pod-prod-02-us; Tue, 23
 Jan 2024 19:22:52 -0800 (PST)
X-Received: by 2002:a05:622a:1b9e:b0:42a:5bd2:1517 with SMTP id bp30-20020a05622a1b9e00b0042a5bd21517mr512588qtb.6.1706066572178;
        Tue, 23 Jan 2024 19:22:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1706066572; cv=none;
        d=google.com; s=arc-20160816;
        b=JikAZi0DYuwlfss3DmnVhwgUdMiRZuqQ7OwQOZTwYWdevadItdAdoFD4A/UWeTKCEz
         a6EwTDCjlOwFyzmD5/dLDNT9u4Ozn0V5lOcFSCJPc8uSwFq1Ewen9PTFt062xxaeFULh
         +grPYr8BzWYLibp2SA64T8bQduAhnhCc/hxPx0CeewMGadfF/YY2h9Y+7L0W9fhoJxyr
         fYNqfw+ooxop5PEii0zwt1Ohlgwm3bDNiKQDG3eDHd+hrgtdlq0XxUKn8Lwm800UyyT2
         bQKi8fKHNsm5YyYSKhFme7qI8+UmLk1tVlPFjsIRDjEOehVci2pI9mqNIOSkoUGp4nzx
         4W8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=w+Zj4frSpZ39mSsY1fv88F6dcSLpTUT7fxLny+L94qc=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=iPS7YTRLI+ts/42eOqV50ika5Ow9pGf/9h2L+fr6ukDhG1ZYCO70BS6TYwgXqZCI6h
         stzT6leWIkJscq5NJqBu8H/mQ4p9lTTKGoLT2xg4wOAbHDahaOEe2CrAasszH+XmD1wH
         q8e9Plq7mbNYp7x8gkUXuqeTt7q9wDQR9iyj0R2E0heRpZZyutmmX6BQfaF+0gjEyeYj
         gKK3/UW46fHfq64gmRX/hYqPpcKPAvRfGNy4HgdNQxeYz7VyZf9XRSAA8WSEmvZ+2sX3
         g2AKZ5jAcPGfRaiqcmq9A/+X/K0awT5GqB0vE89suXwsFjGXU9PQC8KPeg+Se9ZrF3ke
         G3AA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id f13-20020ac859cd000000b0042a42c6a7f5si5208051qtf.1.2024.01.23.19.22.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 19:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-14-L_FZUUsRNfmCRV9vTQawfw-1; Tue, 23 Jan 2024 22:22:50 -0500
X-MC-Unique: L_FZUUsRNfmCRV9vTQawfw-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 61D5F85A588
	for <blinux-list@gapps.redhat.com>; Wed, 24 Jan 2024 03:22:50 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5EE12492BCA; Wed, 24 Jan 2024 03:22:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5826B492BC9
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 03:22:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D6DC73C13A80
	for <blinux-list@redhat.com>; Wed, 24 Jan 2024 03:22:49 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-171-KToLflXAM4WG942lrOyjDQ-1; Tue,
 23 Jan 2024 22:22:47 -0500
X-MC-Unique: KToLflXAM4WG942lrOyjDQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MEV3I-1rI5bL3Ymg-00FzAM for
 <blinux-list@redhat.com>; Wed, 24 Jan 2024 04:22:46 +0100
Message-ID: <6e4f341c-4330-4e79-a48b-a6ca93fb5d76@gmx.it>
Date: Tue, 23 Jan 2024 22:22:44 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux e-readers do they exist?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <Pine.LNX.4.64.2401222334260.324573@users.shellworld.net>
 <CAF2O2Czs-Tp-bAA8t7bsx95MGjFNhwKT2aTAZdhZBW+BnShWKg@mail.gmail.com>
 <Pine.LNX.4.64.2401231429500.336098@users.shellworld.net>
 <CAF2O2CxQbdG-ORf2weztvUF3LESbe=9cdVnXTuF4hrvaXFUQZA@mail.gmail.com>
 <Pine.LNX.4.64.2401231826010.338658@users.shellworld.net>
 <db5491a9-20ad-424b-8faa-7b5e69ca1a28@gmx.it>
 <Pine.LNX.4.64.2401232011010.339927@users.shellworld.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2401232011010.339927@users.shellworld.net>
X-Provags-ID: V03:K1:XSB0B+DF+x5MjJz/0O7/T34ZIuBnRDPQQV/aFldn7igneRY30s4
 GR/zHK3w6PYQMMFMxOsu1fN90IK2ja6w3Bk4g5CN7P7Ill81CDXIF71NPqTP4Vsk8M8RX29
 uEdTCNABiMV0cB8v3Vjap4R0xjTjrn7UeD+aEKBI5tv/o1lKFqFswW7o1menoVlZzm8sY+U
 UuMIBRjQlNkmB7uwCnagQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:IK1jXuYxmuc=;KrPq7dZH78pKmrF7c4U24pJxUbd
 ZhpkrusH6+q/ZmyFQWdSDstczxzBBlmQ6O6wN5ebGjkYgGJAbx8KYkgYFq+3heAGkcPgS/U3v
 g5WkXzsD64/yvMKHQC1a/e1g7t2EolJxPG4iUh9Pilq3Rh/x+GHNtCkcNQVtdlnyLVVM01gPb
 o3xFHbjwmLddlw71U2Zkfb5PoLlTV4+2y4hFyYPvQ+/v3oK5O8lYsCWY+jotscugU15btFzT2
 /+Z3Kl7DG0gg/AAj3NZcm772pNBY4Nb6WnNlDKYSnsVpeQVOgzaq1kNGGM2F55zRdfJANvUpz
 wFhUHV72bsEgyVgdTnKeIZwWQNqen0m9wqZyU7rhXqC55yHB4X15+ayGGbvhEPIGv97y562kN
 /fODR0LNJoeQjloleVG6HR2SzEVji8dtYJqxiParEENLtdxfjp8xwMDsHgwLFZ4VWs3ovz6it
 o35NVZsdjMlRMfJYMTkR5Hef/sjEUWF9189xPzWkmANDcyvVghG7VsFv1p4mnJ8HbqJYEVAu9
 R/JtET0ZTsILf0Q0AhtJM5udjkrwjPKMNZMyHhXQShJaD1tIkLnwyRGau4PNsNFrU7VR1ZbJA
 pKKYRdg+A29HblhOS9nBsfCfmVE7M7/7YgLDRgWyI+FuG8wNiBH9l5sAc6/b5B6yJj3uuHCok
 8uW4RdBcarZWSonpKXiqWnVFUs/oG48N6b4vgkiRUiWK+21wYyDBkW2mBXLvIgJScu7vKVnMP
 udt39eX81woNUNrTWEMQN2VqIparbvydGfSWxvKC8y9TOYaEfuaJFWlQck1TKw5wY6fAR4QZq
 pM2CsZRr+FA7Exg7DNfMyAG1Ahr+HtVv4K+AuWN7KBJ/HcGuLe1ShBPkgs3AEZ43/KG38zq3e
 AsvBdnpSTrS0hk55XAfZV5/MMLdnNLRkQUNirJgK9sCS4wFJSskPTrkn5qjByQZKbTAkyiXlA
 NEWf5g==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.15 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

Karen Lewellen stammered and stuttered:
> I cannot use Linux, no driver exists for my synthesis.


But yes, I just told you that the driver does exist and I have it
working on several machines, including the Raspberry Pi. In fact,
DECTalk has worked on Linux for many years, it has only been a year or
two though that the source code has been available so that no one needs
to spend a large amount of money to get the software. Perhaps there is
some effort (a source code build that has been simplified into the
./configure && make && sudo make install method) needed to get it
working, but it does in fact work. Unfortunately, due to the licensing
still being recorded as proprietary, even though the developers of the
voices themselves have published the source code, it would not be
possible to ship Stormux with DECTalk speaking out of the box. This is
however something that can be made for you at little to no cost, or you
could also build the source code and install the software onto the
MicroSD you intend to use in the Pi. In any case, this is not a
non-existing driver that prevents you from using Linux, but rather an
artificial limitation put in place by the copyright holders who have for
all intents and purposes dropped off the face of the planet, or at least
are not fully known to be able to get full permission from them to
package it and ship it with distributions. Of course due to the fact
that the source code is now published, it is very much possible to work
around this limitation and get your favorite Linux speaking with a
synthesizer that works for you on any machine.


> Further, I asked specifically for Linux based e-readers that can
> incorporate dectalk speech, because I already know other synthesis
> that I have=C2=A0 tried can cause the physical harm.


This is why I said that I have DECTalk speaking here. I use it not
because others cause me physical harm, but because I have come to very
much like the way it sounds for some reason. I guess for me it is just
that it sounds less glued together and muddled than other synthesizers.
In any case, you mentioned it specifically, so I told you that I have it
working.


> The idea of claiming=C2=A0 that a device works=C2=A0 for the blind as a w=
hole,
> but providing=C2=A0 only one means of input that 90% of the blind do not
> use,=C2=A0 is frankly stunning.


Well, for one thing, I am blind, but I don't classify myself among the
blind, meaning that I am human, not a number, a statistic, or heaven
forbid, a disability, or as I prefer to call it, a disperception. Still,
I never said anything about the braille input thing. As a matter of
fact, I am the one who objected to the cost on the grounds that it is
insane to take a $55 to $75 computer, stuff it into something that has
only 7 buttons on it and turn around and set a price for the unit at 15
to 20 times the price of the original computer, especially when the
input interface doesn't work for many people who are blind or visually
impaired. I in fact mentioned the Raspberry Pi 400 specifically, as it
is built into a standard typing keyboard that I would say at least 95%
of us use on an everyday basis, and I only spent $150 or so to put it
together into a fully functional screenless laptop computer that I can
cary anywhere. Oh yes, and I have the lovely DECTalk speaking on it
beautifully.


> I am being specific about my needs to avoid exchanges like this where
> someone shares that since something works for them, it will work for
> me, when in fact it might likely put me in Hospital.


No one said that because something works for them that it would
definitely work for you. You asked specific questions, and a couple of
us gave specific answers to those questions, because since these things
work for us, it is our hope that it may possibly help you. On the
specific topic of DECtalk working and speaking on a Linux computer,
despite the fact that your responses are coming across, at least to me,
as unnecessarily unkind and even rude, I will volunteer to send you a
link to download an image of Stormux set up with DECTalk speaking right
out of the box if you should decide to purchase a Raspberry Pi 400
computer to run it. I have it working for me rather nicely, so it is my
hope that maybe it will be able to help you as it helps me, or if not,
at least it can help someone.

~Kyle

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

