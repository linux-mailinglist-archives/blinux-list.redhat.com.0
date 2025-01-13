Return-Path: <blinux-list+bncBDAPZGHUUMBRBAHUSW6AMGQE5TO6B5A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D514A0C2AA
	for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 21:39:30 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88c987fc7sf82588746d6.3
        for <lists+blinux-list@lfdr.de>; Mon, 13 Jan 2025 12:39:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736800769; cv=pass;
        d=google.com; s=arc-20240605;
        b=blA5fFx0tQ/yU0ggeV1sUPIa6B/wVC9etn5DCpZjnq3xUExIs2JbstlTFpKrWvPsL2
         tQK0VXDSPtc/n24IIsII0P0jLr7yecTv18uMUz7l/3H+zXganuS4jJ5N80ecj2yhukHf
         11AJNVVNim3230tOchU6/ySekRZN0hplZQY3nCUcBm/WWABb+EIANtLL71N1gZ9vTewS
         tlEmRC6Sh66wDdth/SXwa3mUVWbw7noAdqyPKQYIW6jayr86uEUSgGS8Rwdiu1SwZFgs
         w7y5F43Aem6if2xS5KS+wgmpZJYDWBYDtBPmD3XA8oqTXwGYnS0Yg/VdILSf3ojeigRz
         fFxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=TEYjq9UkhgNWW6dGGtFIX3Z39JuavjYfi1iiCiIG4X8=;
        fh=ZeUYrqm0kiaZ+uKKC71c3+rIN/ev3yzEfRrXVAoUcWg=;
        b=B6TjK0EobsJuXzudhfbr7VRbu4SnE2dRrentXxsfEBI5dRbuo/N+YEzhdD7FOXs/sr
         CPJRzax4QAlXw8rf1BNUTv3j5O8GwU8F4DpwFm3A4KNV4b3fNEJga/p4L6ah7FBYoZdy
         ntH3HzRQ7qmEhdemMPpoZhG3Lm1qsZSvB2IpIaBs+zA/Gij60HAvS7PiWJ1zKLhO5S+g
         zboQJV5t3SpICRxUZMEq7QXTIKeej+ksNoASoa1Pcn5F5rblxHb0PxE9s9aQAaOwbTcp
         F7zV09Tcn6mER12toCAsefC/9nrahc7HuzKzFqwbOwyicNenBctCjAr+Vva/fbyOIoji
         8YKA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736800769; x=1737405569;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TEYjq9UkhgNWW6dGGtFIX3Z39JuavjYfi1iiCiIG4X8=;
        b=lg1qPej7IfQEtzr8l2imfgTqs2+nO/XEMgKeI3fYqKmj6a/ysTFfIB3jG7+dy9HTm8
         RtuGocJoV1jP+dDqEIbvM2vHfblsLyW0Ua1epNJsygpHu2d99ivFQhoWFAW7uuOigc+D
         Q2C+gaEHF3NR/fObDP3hYmc/m/R3B1kxDUJa5i+kX0ai3VJRwEKxeIJi9kZyvhiC/wdu
         eSPNrfqFk+95ySqd8kS5tpws5Z+Goiml2ABcX0cgVe53qpV1CKumdrUyGUpXNn5zVxiJ
         FhguYQAC9g19XO0+qxfREUuMDKEY67d3oA/Ur21Teai3OhtUYULg/f8iAi/X8xgRt9X0
         QmBQ==
X-Forwarded-Encrypted: i=2; AJvYcCV8dJ0m34I+vvZkbg5/hx7E+aaedGCZj7Sure5NezUCduT6U5zyINLrvcF8QoapFaJP8mLtyQ==@lfdr.de
X-Gm-Message-State: AOJu0YyARImwcXKRkbOZCJJqyyqF3776RoHs1RmobPNnbZdZSEUJ36IL
	bvSvB4Ylg3MdhwS09YXLB1HbxOxX5JMWS1eJ+ldNv/fcZDRyGB4Py7LdhdrJ1yo=
X-Google-Smtp-Source: AGHT+IH/U4Y2O+FOQlMcjUmJ6vT6mEQqmKtlXtozuSrankXKdq8/OwB/1a49Oz7FA/dyzqvBdUtMlA==
X-Received: by 2002:a05:6214:c4e:b0:6d9:2fff:c382 with SMTP id 6a1803df08f44-6df9b2342b8mr368894386d6.27.1736800768963;
        Mon, 13 Jan 2025 12:39:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:edc3:0:b0:6d8:f050:cdf6 with SMTP id 6a1803df08f44-6dfa3824828ls73637576d6.1.-pod-prod-07-us;
 Mon, 13 Jan 2025 12:39:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWGJ43g3MgbVeD5NRUHCzI4p5FkG6UdeDbtxQudj3Mj3pER2XAVX0BRLOwTSzawJa7MfYNqiwZY6a4Bvg==@gapps.redhat.com
X-Received: by 2002:a05:6214:4303:b0:6d8:88cf:e690 with SMTP id 6a1803df08f44-6df9b1b4ea6mr366437416d6.3.1736800767676;
        Mon, 13 Jan 2025 12:39:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736800767; cv=none;
        d=google.com; s=arc-20240605;
        b=iYeAMrhaq3To6riwhH8ZvL+Y2P1JDZUh+s4JPgifGceCCap6dCAwG0d/FiLX90SrH/
         HTupE61jIwMH9o0eXDMHMh98ECy+Z/Onm4TPq2bRDchuS7+RYd1myvynZ/5d6qDaCEY4
         ZXW0wcZSM8p1Nr+tZ/XwQ2rhSF58McpOLhyJxKZk1aXIpJKsRKUW6v59tsXgBwLv5uqu
         7UioEWlnDNuXbLJ4LLIMpW2enpZCnMzWz6UBFlnwAU7AGajWcg0SOWvFPWMEUV6Fcuv+
         Ai4nWqYYaQDnEaJsLO8+9NKVNBspHFzqS7LgaPk9c4QAKc+7de4TwEs8kUtel0oxrSh7
         jWbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:delivered-to;
        bh=ROQyn6hH1FOwJn8vRRDPTheuOIYSTH4FmS8zHaA3NVU=;
        fh=q5TzYKWhKZTzbkFSYReHRhDZEhNTptVs6ka2GrV19Uw=;
        b=KdXVyNzFBTHdC8WueUc/KlTapGIWtfR1bf1ony67EoJC7p3T0SgkTFE2LuE2AXgvBr
         tiOYLI0Nn1d1l2luOMnCw1hoTZ4IBW/v0TF0yEUED9reFY8lhmwx/ziHX8RmBYIgCUGm
         VZH/W0GwpivYJtWDnG5oWE6EpAoTVJX3bSz6jOl2H9T0EP/d1WOqBfZnokQT/f0YToo3
         jR7hkBW/yYX1n4C//fNh36fCKfdvjlJftikc0/rbn5lWBnTtkfZkXfhq9AlWEixfxrNT
         YEFoMLBnKCIA6Z0r8/IkSlAkai6siRK+bwsDYXyZyZlf3ogfx+9J2MgkHVJUR2SnH6MB
         2CEA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46c873e4db1si102765501cf.258.2025.01.13.12.39.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 12:39:27 -0800 (PST)
Received-SPF: pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.42 as permitted sender) client-ip=209.85.167.42;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-591-zK9uq_-xM1-to2EHm0D7iw-1; Mon,
 13 Jan 2025 15:39:23 -0500
X-MC-Unique: zK9uq_-xM1-to2EHm0D7iw-1
X-Mimecast-MFC-AGG-ID: zK9uq_-xM1-to2EHm0D7iw
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 280B91955DD0
	for <blinux-list@gapps.redhat.com>; Mon, 13 Jan 2025 20:39:23 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2270719560BC; Mon, 13 Jan 2025 20:39:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1FEDE19560AD
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 20:39:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id ECAC61955F69
	for <blinux-list@redhat.com>; Mon, 13 Jan 2025 20:39:21 +0000 (UTC)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-322-BMvMOQ14N52go7gIBJ1xfQ-1; Mon, 13 Jan 2025 15:39:19 -0500
X-MC-Unique: BMvMOQ14N52go7gIBJ1xfQ-1
X-Mimecast-MFC-AGG-ID: BMvMOQ14N52go7gIBJ1xfQ
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54263b52b5aso4765452e87.1
        for <blinux-list@redhat.com>; Mon, 13 Jan 2025 12:39:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUe4djibnrJinz7pFYytPFOk53MJCMpMrZyMImij2yMISC2rUMIiHWL6iCWxWHSnqKz9bzqFQPqzpuqdA==@redhat.com
X-Gm-Gg: ASbGnctuoMmJxI8TrB1f875+jaKdnxiwUWutYv7OXHDjdszYxi6+A4NBeyDJ3aW/c/R
	v11BVgGGxy4P2AXDDSLdmxk76oioSK/eYTFVs6sx5DGNPyViws+S0XFQPXVzhLz1kBgamiutZO/
	T+yfdyBfDP2nKqYlTVb9WKt4lA1FRptTsWn0nYdrAfqasMuXVwUB5w2oUuvH49s46tFdduGGVmc
	HPijUSQ/+NMkTzmvVVfnqAyZqgQbsiZay8ohumpMQy7O2dQaUUj5fRHMrzS9bWLFxnWHTAGJxJY
	2mGC3Ve1+PiiToo12TI=
X-Received: by 2002:a05:6512:3c9c:b0:542:28e3:2156 with SMTP id 2adb3069b0e04-542845d2081mr6357212e87.25.1736800757480;
        Mon, 13 Jan 2025 12:39:17 -0800 (PST)
Received: from localhost (broadband-77-37-216-184.ip.moscow.rt.ru. [77.37.216.184])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1ebf45sm15753851fa.97.2025.01.13.12.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 12:39:17 -0800 (PST)
Date: Mon, 13 Jan 2025 23:39:16 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Didier Spaier <dmarc-noreply@freelists.org>
Cc: orca@freelists.org, blinux-list@redhat.com
Subject: Re: [orca] Re: Sorry for offtopic, response to the blinux
 registration list not working
Message-ID: <t6wgronsw2joofli5ambgj4dchsldg2ieqxrjwgv2v7jsn2mxq@mb5gzgprwvwm>
References: <876361b2-68e7-44e1-ad8c-d2a3a838f854@harrastenurkka.fi>
 <a4765a7a-e546-088c-7f43-7c2038dbe283@hubert-humphrey.com>
 <039001db481b$0ea43140$2bec93c0$@gmail.com>
 <4c3ac83d-ad20-4413-a57d-a23874518efc@slint.fr>
 <02f144af-7577-e873-34b6-a8bafe5e2915@hubert-humphrey.com>
 <d17761b0-8c45-4356-8a19-f4585633c827@slint.fr>
 <aee96de1-5287-4699-bb5d-09653a2a8044@gmail.com>
 <0c84a96a-65e6-4c7b-9098-f348d1670cf3@slint.fr>
MIME-Version: 1.0
In-Reply-To: <0c84a96a-65e6-4c7b-9098-f348d1670cf3@slint.fr>
User-Agent: NeoMutt/20250109-dirty
X-Mimecast-MFC-PROC-ID: _Un-GpVhGOh5A5VYsXeGUxr1JeRzKMHeJZUXp3Imv6w_1736800758
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: zV92wZSAUhGhYffxDESXFSETRJgDwGzsuthTpkiROCs_1736800763
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: aarnaarn2@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aarnaarn2@gmail.com designates 209.85.167.42 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
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

I'm waiting for approval from freelist staff. will keep you all posted.

On Sat, Dec 07, 2024 at 06:30:51PM +0100, Didier Spaier wrote:
> Thanks Alex,
>
> I suggest that you wait until Monday night for a possible other proposal =
but as
> far as I am concerned go for it.
>
> I will be at your disposal for any help you may need.
>
> Cheers,
> Didier
>
>
> On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
> > Hello. I think I could create and administer sutch list.
> >
> >
> >
> > 07.12.2024 0:36, Didier Spaier (didier) =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> >> Thanks Chime,
> >>
> >> unfortunately this information is rather old, thus many of the links i=
t provides
> >> are dead.
> >>
> >> Unfortunately the blinux list is only partially usable and provides no=
t recent
> >> archives. Fortunately the is one here instead:
> >> https://www.spinics.net/lists/blinux/
> >>
> >> I think it's about time to cease to use the blinux list that seem to b=
e
> >> under-managed if not no more managed and replace it by one that could =
be hosted
> >> @ freelists.org as is the orca mailing list, which is free with good r=
ecords.
> >>
> >> @All, what do you think?
> >>
> >> Is there a volunteer to register then maintain a list like blinux@free=
lists.org
> >> replacing blinux-list@redhat.com?
> >>
> >> If no one volunteer to do that within a week or so I could do it, unle=
ss someone
> >> objects or have another proposal.
> >>
> >> Cheers,
> >> Didier
> >>
> >>
> >> On 06/12/2024 22:09, Chime Hart wrote:
> >>> Well, Chris-and-Didier, I am glad I save as much as I did. In my Lynx=
 bookmark
> >>> file, I have the following which has several mailing lists-and-an ftp=
 archive,
> >>> which I haven't tried lately
> >>> http://leb.net/blinux/
> >>> Maybe an ftp index will provide dates to imply if any will still work=
. Best
> >>> of luck
> >>> Chime
> _______________________________________________
> Orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> General information: https://orca.gnome.org
> Orca documentation (English): https://gnome.pages.gitlab.gnome.org/orca/h=
elp/
> Orca documentation (translations): https://gnome.pages.gitlab.gnome.org/o=
rca/

--
Sincerely, Alexander

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

