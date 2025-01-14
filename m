Return-Path: <blinux-list+bncBCD3RKH4ZIBBBZNPTO6AMGQESU5233I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C710A11313
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 22:32:23 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-46792701b64sf114325981cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 13:32:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736890342; cv=pass;
        d=google.com; s=arc-20240605;
        b=f4yDBy4XNajvfIg1I/Q8kxZkAzEs6L0JzTHWWUBb4Y6VpDmO2AfpMF7jWWxzVHNFcj
         2+kRlEVYvyEeCAIXKrD7GsLePL8576oTYP6FmudNFj0K6NEWoMs4Fj9OAvdyG5YgUfdi
         nbELW/NdZnBNMoR7HwiFGzA/ItrHRqVhHwaugdBiKvVLDzVZQveSnnAK9oYqRVRl4dRM
         qdqJ6A1DITMCyi3iiheaJOBK8c6SdWaIkie84dYNDv+KitrzMD6eaZYMjJSUKtE8mdI5
         1mtp2F3yxtK1cTZu7AoWIEmBdL4rX3SbHEiS6a2uThbb/D6Lf2CqwB+K+NTxDSFbsTlV
         GDiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=lEfIm4zXlDGh52l8SdbWpVElnvg4qr3gaTpjBfgR7MQ=;
        fh=0ubB88HTjhz4ryRwFxbwaf59vboG5HyTOPlWdgDCPps=;
        b=R2ESiy/5/uEr6ymmr3PHOGVAY2j8gnzTduQvWimCc5MCOyInEF6M+Zhbms4zF1o55/
         hP8Zkv225O11tUh2PXQ9VnlXwpzs9fWuYkV0oUGKNGOnzUbnu648UB0Hkfhkg78FutGw
         wWhgOa5UG6Q3h9cY7jURvidTMsKLCHqxSLg5vRyO3Zs7m2Is9aYV4+1Q993TvT43FDt4
         aXEJH+mo3J3xBPvDs08U2RzjdUzM/4dx9TLIcPpI/wiafl7/1cJCHiKMkI20p+BBlHj3
         Ow18MM2Sv42FA6awY8gblc5QwfviaRkPT2MGCJC7jnQj0ghbtqsUCAG0euoEbGKavABG
         GK8g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736890342; x=1737495142;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lEfIm4zXlDGh52l8SdbWpVElnvg4qr3gaTpjBfgR7MQ=;
        b=VhkD6hdFz6bYqF1pJDTX4cUPA4cyLeGSVTBCTEg7nV8Ba0HszbEjqrd9yk0DD0VFYI
         2NHborudT9H1o4zQvMs3tpfRJX8/T4tQXPFveuAv2dpCIgZktQE8Tw3b8ZUfSLcv6JQd
         vQcDzMVbytY3K+N4ZjZ6DKuMuV91cvpygSyz3OpklzYj9rt8ciQUom/hdr4oY3cAoSI+
         7TqtNc+rMG3stMaeYR/FfcRIdyOBrxvfa02/YOAi4RLvuVD5GbcpHVpVnH0s6xv/YKMr
         KJTnIAwccZFtAz4stBH9kCn9r9kQpCCJ3BlNjIbRn3pIQaArnzDD/2CK0DAZCgRPJDG8
         zuZw==
X-Forwarded-Encrypted: i=2; AJvYcCXbUIyFUxkOJES4fuDn3vA8FJ2jbBZa3SNQQ8mZ5pBcN1M76FuhD3TsHVzSow0rxWAYgsn+3w==@lfdr.de
X-Gm-Message-State: AOJu0YzVL9cBmEPvjkmIIg2xoOJeXRyOLUHCTTcipTxE1hQsSH4016GF
	yUjadDKoNcGl2HMj1BCb+O/Y6stZCY1ito1nL5KfIeSYrLCDGH3TL4k8i0evA0g=
X-Google-Smtp-Source: AGHT+IFr5hE0R5ujvMU4/BERm6wKTEzT+ZCCmJObZbG9gsL3UkjUZg/WJlUFAdxR1dH9YoOT1a6cVQ==
X-Received: by 2002:a05:622a:1a19:b0:467:87df:851a with SMTP id d75a77b69052e-46c710050aamr380603781cf.12.1736890341989;
        Tue, 14 Jan 2025 13:32:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:6d13:0:b0:467:769b:e63f with SMTP id d75a77b69052e-46c7a9fa075ls60043351cf.0.-pod-prod-07-us;
 Tue, 14 Jan 2025 13:32:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVFcUXJT/NDRA2OVeF33px/JGQUHDGiqC5+LO5/AgJYelMp93WdZCbxI52vOJenqtuCIHHybCk1j2HnUQ==@gapps.redhat.com
X-Received: by 2002:a05:620a:2947:b0:7b6:742d:c01e with SMTP id af79cd13be357-7bcd974fd39mr4583183885a.25.1736890340825;
        Tue, 14 Jan 2025 13:32:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736890340; cv=none;
        d=google.com; s=arc-20240605;
        b=OwNtYyPnJCnutUDT/lO48g3Afe+3qVJka1CT9VGVcCwBjnS42JZwUE5vyvEj5gaTyS
         Nbxo6E42RLmUFWZ7W98T118jiYa+67Th7D0riymZfYmp92qMWWP56xHGwZNpK03qsmz8
         wfC/Hg9T0mZQYmDJRASxHMRWZlVZF2ma+1UiAKHTptXWkNRDDI7fQyLHM77E1rBBsjjE
         VxrFgTOhJAp52mH4KWNagvTYP+0BDTh673UEarShXjfpqpuOeeUIon95OiCQh13Gx20w
         3mYLLtiGiy7F9fjqiJ+5eRZHFbjiYPI+O9RkrAriZIusa5Wo0fp2CaUnv5BjM2/IU78d
         t++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=mcnfm1c4h0ynyWXJbWyPOdpNLFaQeNaJd0mhH6lPFyk=;
        fh=C6ga/1lHViMT48d1Em0a2tL27vnHv+xHymy6q1dX1uw=;
        b=cUGnaD7a9NlcoUyesyqrXPSOMRsoggWe59sHip9nZCTvbkYwi4pnmnFQ3nU923K8AG
         TBgGmbUuSWkdj/EK5bkAXoaiFCWLKLoy5ivM65HwWyP4OzAWZAC7rJe9nUKnAuZtnGJQ
         k/L6wEasUnR41up4Fzj5exvpX/hxL0Plf88wzZ0wwmU9rymLdcAz9pO/XbIuhvSnZYIq
         h2hnSZmhxb9Mj8L8Z4Ri/+XPXaaAChvWIQU32ZxngjEHOYS3zThUKxRvr/Mo8fcu3C8d
         wgp9YFShZ+pT4VaFc23QAOlypcsTT50lFlyCwA5Dm3brWehZOxAfFH4pKQVCHf3gKp1u
         9X9w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce322a226si1483561785a.93.2025.01.14.13.32.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 13:32:20 -0800 (PST)
Received-SPF: pass (google.com: domain of mewtamer@gmail.com designates 209.85.208.45 as permitted sender) client-ip=209.85.208.45;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-691-2dnpcPshM6SFBqwUSgS2-Q-1; Tue,
 14 Jan 2025 16:32:18 -0500
X-MC-Unique: 2dnpcPshM6SFBqwUSgS2-Q-1
X-Mimecast-MFC-AGG-ID: 2dnpcPshM6SFBqwUSgS2-Q
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CD1BF195608B
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 21:32:17 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id C88661955BE3; Tue, 14 Jan 2025 21:32:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C616B195608E
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 21:32:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 29FC019560B0
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 21:32:17 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com
 [209.85.208.45]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-225-bDSi4xatMXykdc4MVdQeUQ-1; Tue, 14 Jan 2025 16:32:09 -0500
X-MC-Unique: bDSi4xatMXykdc4MVdQeUQ-1
X-Mimecast-MFC-AGG-ID: bDSi4xatMXykdc4MVdQeUQ
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5d9f06f8cf2so3631505a12.3
        for <blinux-list@redhat.com>; Tue, 14 Jan 2025 13:32:07 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW4qbmIWzF7UBR7YnTPfnlfsbw2p7BlaxTCQdtSC7nC0JGDyKdmBTephB2Fzj21bQObQrSWb38vPlmL/A==@redhat.com
X-Gm-Gg: ASbGncsG3r4E/7rHxKUBRNo1el/VeXlNnXdfmFSlwshJCVwfvvatTkRUGE3ANCyJndK
	6qbkzPR7HE9ZKyyV+F0NLo+f/nMYelQcdm/6zbJ8+mpQt8b9xPsoONNSBt7cFo95Fwbdt2vE=
X-Received: by 2002:a17:907:998c:b0:ab2:c2f1:4578 with SMTP id
 a640c23a62f3a-ab2c2f145fdmr2108903166b.4.1736890326535; Tue, 14 Jan 2025
 13:32:06 -0800 (PST)
MIME-Version: 1.0
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect> <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
 <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op> <Pine.LNX.4.64.2501141612120.1435291@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2501141612120.1435291@users.shellworld.net>
From: Jeffery Mewtamer <mewtamer@gmail.com>
Date: Tue, 14 Jan 2025 21:33:06 +0000
X-Gm-Features: AbW1kvYOVVZivtBOzA1zFOR8c0Lx0qZmUq8VIRCNCkkp0mCysb0XxWxDC3_wNUA
Message-ID: <CAO2sX32cUtR7bgXSV1JHzd_n0_mxxSM7EnNz5hVQKuPB1C7V_w@mail.gmail.com>
Subject: Re: List problems and a suggestion
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Alexander Epaneshnikov <aarnaarn2@gmail.com>, Didier Spaier <didier@slint.fr>, blinux-list@redhat.com, 
	orca@freelists.org
X-Mimecast-MFC-PROC-ID: YzY5sfYTI8TDM8CqT9vPSWAYJtGFN2on2-iktuCfY6Q_1736890327
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 91TK582nAKQrIRnbegw4fKOWdrJB_hvDaEIH7syJeb4_1736890338
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000ed593a062bb14a2b"
X-Original-Sender: mewtamer@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of mewtamer@gmail.com designates 209.85.208.45 as permitted sender) smtp.mailfrom=mewtamer@gmail.com
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

--000000000000ed593a062bb14a2b
Content-Type: text/plain; charset="UTF-8"

I ran into that as well, but managed to get around it by going back to the
subscribe form and deliberately messing around for a bit. Apparently,
someone efficiently navigating a web form with screen reader navigation
parses as too machine like for whatever garbage anti-bot measures they're
using.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000ed593a062bb14a2b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I ran into that as well, but managed to get around it by g=
oing back to the subscribe form and deliberately messing around for a bit. =
Apparently, someone efficiently navigating a web form with screen reader na=
vigation parses as too machine like for whatever garbage anti-bot measures =
they&#39;re using.<br></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000ed593a062bb14a2b--

