Return-Path: <blinux-list+bncBD6J3OOK2IIBBQ6Y3G5AMGQEDUKH4KA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id BB5499E8A18
	for <lists+blinux-list@lfdr.de>; Mon,  9 Dec 2024 05:04:20 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-466c88a95e5sf76966161cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 08 Dec 2024 20:04:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733717059; cv=pass;
        d=google.com; s=arc-20240605;
        b=f6OfB+y3z6noqakipmkpAkZfrywhGwQ/319YWhGqVIUh9hbEaptjHlenGQGmG8P3/b
         MhCn2mJlJbf2tKFCh2UJcU4N4FcDALUzT1xm2bTEPaMpRCnUbn/oZugEevkm0OwKYbrD
         10JTBs1eu/2hBtoj4X8PUe2VjhjFezvDGcDUFpAhV/ilY0Cou2pycvZsGN8BQUVJlD6q
         zSZVBM372vvYOsS/rkNIPIEY9I+o7dXCrQ8F6I4jFZP/HZskpzPtFN9xrsyFWcfU9vpJ
         MLPEmj4ZOTeyNn0j+bq+qaUoKgvrchXLikr7S8/SrbDLWgnkhF52tDCtewQ2e9hbYNFp
         l86Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=57Zsu7em+QoztvDv2wvPvhAYH3kv17pOu0q3HJDVP6k=;
        fh=ofxwibmMgC/3rKFIZpw6QagVSo8Qc/j8o4IWNQDpGAQ=;
        b=WMldabk1Lrgw/HgYZnHCUG1/mD+OUx9eKpvWBv/m1O9I0tjvBrtrRp9UccLx+wIuUa
         Eo4Lzr5RlyrFK3O6mkOJozDMVMQuEG5tZGhiDCSwKgXZ2veAWgW7ne4sUxt/r1EREl2r
         75pw1f12tguThSVw9BmfB5CWF5UztGdtDoOyDeB0fDYbYERLOEn72lkIG3O44wi12qlW
         dui3EYpxbtZNiH9cQyxT7FSPD67MfjdtOSmsO7bUEpk/K36dVUiWHi904DguHr2K/slx
         j3TBULqCrPz3YRCej4+WMG/y6AfovUIbJR1gd4U+xXlFKhxLltwdo0hZo+BVVgkYbXRl
         QIww==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733717059; x=1734321859;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=57Zsu7em+QoztvDv2wvPvhAYH3kv17pOu0q3HJDVP6k=;
        b=q2sldxHK6ceYD4QvTvNZodxtuE6lS06LfgBtCpW4mqfuyZGXhdysHyK0ltcXwqYMJy
         fEVtZByzm4Q3y6ILVbb+yu2U32FzO0l3UOmXmuweCIIl5FrgXII4xbde8L06l9xP2vps
         jivDK6K6LJR4JXtL2HO4QrRZy7qVsYlHC8QHcJb8D8fmCUX9lnLhOyWyTjU07sbOqil4
         WIUXQpmCl7pr0cRLzFlNRgfDahRy2bt+zEZWJNrCEPxYNvqlN3LJqU2q9dWGeyDEGXk1
         Yien4+9+fQVuMyvobOJPP1pYYFmJsRMFvVkDwSmOtxXESsbnl7l6QqwsHT64v1sn653W
         VBgw==
X-Forwarded-Encrypted: i=2; AJvYcCVcu3yr9dfTJoKuh0/TxLXb9mHwvAN7+PpH6w4h/V/7SolkfPNXi1emez4gykV7B65EHjBxKA==@lfdr.de
X-Gm-Message-State: AOJu0Yzh1NuLITvXKDdX2S0dvJvi55o9gBGbpTDW3EnWpqV3WWtn82FA
	vsdhthQPasU1abvXXJrdntXgkt9hr9CVKUOD1S4n9X4V/aixD2qJdb19n6M8JT4=
X-Google-Smtp-Source: AGHT+IGSZWqq4xkjL0X8LdPFmCCTfFbGtXZ64VYruD4zglKtNw3H/ZcfmgsTq4DwViZSrAXAIbAo2g==
X-Received: by 2002:a05:622a:580f:b0:467:5dcf:79c2 with SMTP id d75a77b69052e-4675dcf7cf5mr74424771cf.43.1733717059428;
        Sun, 08 Dec 2024 20:04:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:800c:b0:467:5eb7:7178 with SMTP id
 d75a77b69052e-4675eb77cd7ls10460281cf.2.-pod-prod-03-us; Sun, 08 Dec 2024
 20:04:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUOu/GMmqTteOHoRzjW/10rAPp9CfmuipBg+b/ODEORTwoKfMpfoGM5k6Ers15LBxGVoHON8UtGubrznw==@gapps.redhat.com
X-Received: by 2002:a05:620a:454e:b0:7b1:11ac:627a with SMTP id af79cd13be357-7b6bcad51c0mr2008012985a.25.1733717058533;
        Sun, 08 Dec 2024 20:04:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733717058; cv=none;
        d=google.com; s=arc-20240605;
        b=IkyC5ZwPahToqBB8zGixWQY2nihaYvSLBBTF4ymkXXqBugIFzqb0C/4qU3SDfdFt6N
         CFMG8mj1FSLTesVL7wkXDqHFrsjALgZs37Mgg/KORNoC2xM93giZqD7IxgPtOI4aEBSX
         TqvUV9uov6vsJWUCREd2QT/PFhzfqr0VAXNsP2AYB8a7YbVxxlDAqlUdd5ySNpg4y2pC
         nhPfT9iZOH6PCUVcybib+EJ+qjhL3weRYVsE+PHT9sxaVMaxBC+hgjRLPQtu7l6hon/j
         rFw8P+ulv7OMbkaLMrwyNkDDminHb7sXpywtRN0ZShEcq8Qs6RvLAl2s37pAX86h03t5
         2FNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=KNgWcT5X2MRD1F+BDIfvud5+820rsP2WBX0WJ2gxXeU=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=e6gP1qKMIfIoyzKpE+VOa0iITyuNdbaR/NrYzp6jVqIJRxhFNU+3mGT66MLVIwoNJt
         LZYF5wfGI+OqAwmfXlSnlf3z9GGum94tA5RvMjLhN9u+RwvxCDbqzjepWWIRVzpDBXKc
         8zgmWWDW5SOWAMlV8q8DD+91+1kDPlbrKUTX8YAathha7RLlt2Tq8UK6F9X2oMhyJjoE
         OIbwaYALJA3OPDZTfIgwJsVc5hFAZEclKaa0976YL5KXhI6oxLnY5fyg4lKfpmteBwAt
         Bjd9KIv1o9ARvsvbdIGG067O46IyjzuWbSB64L1bI81XYoNN6LXukLcqmupxOMs5gjxY
         FwBg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7b6b5abd959si1087001085a.515.2024.12.08.20.04.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Dec 2024 20:04:18 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-v5EBEtiUPQKLujd_c3lgww-1; Sun,
 08 Dec 2024 23:04:17 -0500
X-MC-Unique: v5EBEtiUPQKLujd_c3lgww-1
X-Mimecast-MFC-AGG-ID: v5EBEtiUPQKLujd_c3lgww
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 570641955F2F
	for <blinux-list@gapps.redhat.com>; Mon,  9 Dec 2024 04:04:16 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 5282219560AF; Mon,  9 Dec 2024 04:04:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4FDD719560A2
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:04:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A49AD1955F45
	for <blinux-list@redhat.com>; Mon,  9 Dec 2024 04:04:15 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-130-dTKXawRhP7uxX4ClpIdelQ-1; Sun,
 08 Dec 2024 23:04:12 -0500
X-MC-Unique: dTKXawRhP7uxX4ClpIdelQ-1
X-Mimecast-MFC-AGG-ID: dTKXawRhP7uxX4ClpIdelQ
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [0.0.0.0] ([208.107.97.40]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M3UZ6-1tJx2P0Wtm-00DKt3 for
 <blinux-list@redhat.com>; Mon, 09 Dec 2024 05:04:11 +0100
Message-ID: <20241209.040341.694.24@[0.0.0.0]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: My Sound-Cards Are out of Order Again
Date: Sun, 08 Dec 2024 22:03:41 -0600
MIME-Version: 1.0
In-Reply-To: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
References: <b5d047ff-5695-bbaa-d3c3-41ca7fd56396@hubert-humphrey.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:Kv8LgVC4yrbsVBTuyVSaiXLRKwwZojvvEIh2DdqxxWjEdqv13aN
 6AoxdR/+6hMi8W9L3R7Dv2gDMbbxqVjtinSWtfUNWka2gwKIDmrt0Dw7lf6cZBT9sXa29Q6
 NAgQIf1GN6gpP6+aCkWKEOTuQdDSrFh9cF96j1bugtoEuqrS5R5h10HHslUqigfkLl2aLAI
 2xSBjyGXyWCCi2CYCrkSw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:YoXrkIHPuG4=;JvRLDWC7EtKsNEM0RDDShOxEjMS
 /TL50HpM/JJSJZE3+5AyhJ//T3EjxjcVwJtTriD7x/MqU212nHHEErSONFqczq6FXnDFvxTZi
 gfq6z4hBv3Tb1+FLsFw7CEd07+8L/POumkiH0Mio0uM+6dTIzMW+n0HCh5d14BGdDr8MTbsBH
 JqPvZfTtdBHjVo0u/SwSVH5zGf6tCyWvkWja0qfWi/dw51a6d8IpsPEmTQzFG+5V57Efewj12
 PCo2IkHfBgpBH+gv1IPHmRLXZ6ZG8PWtPdpVY8QgpXEl6YNxeuENCky1wt1vnbM1IHcEPtmpB
 ji+HTNbq+Wnf0I2RrSGwZHP/Ve1V4b6iGLmbUJsA7xanz6/afGvZdWP+ooQ7uv4uB4wuTJkNY
 uAr3h+CCvVKsodBfFmXTOx/bSIbbhgnBacc5+EzplT/1gK39TJJxwTaV1068JVirJACgjT1dJ
 VVIbc2KOahU2wMPKt4g4lJ2VeEbVUkqaDh65czD4SNNNmuUJAbm3xUrxoWHnxEH7RhTq6yHH/
 zlS4A0kUVKUHQwcK9f9hSzmeXTI2av662MY3XrKeCEll0xnA2/2E4+CkvinBcgr0eFQjPAlh3
 5JlJzUugLLMwUdYCkHxSLYYblj2WwDN8rOoG9+rM8QCr2qwkESD3zs8Xug7ctwnhCuTdyxE9j
 C3Mv9W9Jn60J7lzOd6kAdiPqO7j3/sq/pi3TEJrd65k67X6QqjCxniQj053RPpqNW5EMGRQ99
 JyIcfUWqWO/bSr6wiqYg1Hydn5iBzuU0YX8+EJqX7WfxsVwSZijAMobdUjMHLy8e91YhtGYuy
 cWQe8X4emvBw75uE8pT1exXUZxJCxAMYst3vigry/BtBd2nP4cc3pnO7a462kNKppKtM3yN8L
 h4ecP9Y6Cyg/N89a5+f3f5BpZK4hHZ3Os/KBAd1oLX0zDjg73Lvp7rC0hREQHnWrzCGvuMAAT
 fXWPgqysZn7a6EcC+F24D9tQqPfi7C20xKeieN5HsjfuW59OgFKrY57/6FuAzJ/YLFHc2XMJ1
 5sE8Nz0Zj5PKWy8Lu+mV6XvNuj6C6aPlIRjF/1fsT5oXZXAwV1LJ4Zg1RWsy5aoFDoEGZMZ7e
 0Qdo83OtypZeJ2dziVp7yvn6NiECLN
X-Mimecast-MFC-PROC-ID: DbNYhY66tew4aTyPyANcZFVLn3YjkZKNLddJCrz-H1k_1733717051
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: OdscCc7jFUc-4Fu_HS49SmASrO9NgRrOT47YY_qLN3E_1733717056
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Are you using pulse or pure alsa. The answers will differ.

----- Original Message -----
From: Chime Hart <chime@hubert-humphrey.com>
To: Blinux Discussion List <blinux-list@redhat.com>
Date: Sun, 8 Dec 2024 19:59:11 -0800 (PST)
Subject: My Sound-Cards Are out of Order Again

> Hi All: Well, yesterday after my main Debian SID machine was up 209days, I
> restarted. Ever since, my 4sound-cards are coming up in the wrong order. I have
> a 4button switch-box, especially while I sample live news streams. Back in May
> I needed to restart 7times until these cards came up the way I like. In the
> many years I've been in Linux no1 has been able to figure out how to make this
> setup work. This evening I booted alot. Sure I can swop aliases around so that
> mpv1 actually plays the correct card, however, things like youtube probably
> play on the defalt? Here are the 4 sound-cards with credit to "sam" created by
> Willem
> Xonar DGX card number 0
> Ensoniq AudioPCI card number 1
> HDA Intel card number 2
> SB Audigy 2 ZS [SB0350] card number 3
> Without the luck of restarting-and-hoping, are their an easy way on the fly of
> reArranging these cards? Thanks so much in advance
> Chime
>
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

