Return-Path: <blinux-list+bncBC4KRXEWRQERBJU3Q26AMGQEDKZGC7A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id A4E10A09CD8
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 22:14:18 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-46909701869sf48285691cf.0
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 13:14:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736543655; cv=pass;
        d=google.com; s=arc-20240605;
        b=gYQ43h2uEROUNI3xnRmBZPN32G/nGs7BSBeXRQPNYbfv2iufl/a+AB2iIlnRYYCGAh
         4Snoom7nrc0r5RPyrtS9IyZsn44PTVng7P4SDcRpNQVwNfckMIdU5tk38hocFmUm+gjp
         KY0Yef+lLqTML3th0iJbBNvFwT0FAdM1K4rvkD3t7uxSFDTVQxfxLkNYcggOFqxCw4Vn
         spNRNWi6DU1XixXscljL5rElAR4GUGudlUjswI4e7ecMX+DOEk7FPnv6xBD3Ii/50A/b
         EEAO8fO7zrUpgfvmdqufaQ/m85YOntyNdOG191maoW3OJ39tdA7Pd+h34FhlhMq22gag
         HJPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-filter:delivered-to;
        bh=n/+/qF4SXzOr/RYSyXQuslrv2pfqRkjZ7IVpKcyasDQ=;
        fh=ewl5zx/iPdKJ5BUXeXQTzmCzVQo+qvtNO8NSwhVcWvw=;
        b=Nyn/ixff7Il6r2aif/kQ4h2B4i7NdxgG2uJT7vovwlI4G9mA/UXO0e0MSeaqzfuChZ
         bP2ZVFVFY7dlPkLyhxh1jTqHtwJ+vHfs6b02tbneXp4RJ67hRpc+yz6W8vv+XRDFs4zr
         7toDf3L/fRAIA4VeS7uxX8BeUiDFjrSCLcMOZdjfgB9dBklC/TlaIdLreN9P1f7bVbl/
         CAeiSv8gmHJSQETEynHFfR6GPWRfQZblIi/+FnDzDNVGjeB3JqH7kezPADWSWKhfHD6B
         pqGYsNGlkZjvUZdtZxeTH7DnjABMJ24l+8S2Tucaz+fbQCX8YV9dTvaAOk7LknynvJ1U
         SubQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736543655; x=1737148455;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n/+/qF4SXzOr/RYSyXQuslrv2pfqRkjZ7IVpKcyasDQ=;
        b=B+hNVJ7+7dslYd8vaODCxdWG9yPpwbG1fVEjfCVBInEf+RBGN0ms855tRe6jnXHxmR
         dbQKWUSo3HisJ99DVqBcPkDjd+VRAY1xAHros1sfF62vROyz9WU45uIAoLZFeBJmxpI7
         /DYEamSwyh8xzP/niBAXz6JvJkxAHMKJZyk8zmNeTTdSgc0szywz7/ty0c5emyUwUWsc
         SBY1t2fsCH61VXsdoeIbx6RaqkGoFXOEkuVo3Ti2SSRqXDNtHm0VIaFi1tWj6yJMrORk
         Gunz57nZVPbdC/Vhs3Ah+sHJ2YN0Qhuxw5URFljX+96jVLlNzG9kMYniiiMv68GR6jZN
         5X8A==
X-Forwarded-Encrypted: i=2; AJvYcCWQRyoX+8k2c8PmWQDzYV1SKouHxpnL2PwU7jNngmE842QXYK2jJVY1KWRhxN0HkxdBvSzepA==@lfdr.de
X-Gm-Message-State: AOJu0YwIbCZ2URtgufsvCfII7MNC4tLpsJm2KDCw46ioRcx5aA4krrfE
	QZZD6Vb16yd6J+iUmtba0AKPVyrKnuy2Jb87MLYZIj0DiFy25pOkY6pfZJuy7Ug=
X-Google-Smtp-Source: AGHT+IEasxAyc/jshS2lHHheOpFPD9/gQsZpBnDdAHPKbwdrIQ1lNKS3asjxeFLcpunUuOHszsc7dw==
X-Received: by 2002:a05:622a:6082:b0:46c:726a:2b39 with SMTP id d75a77b69052e-46c726a2e4fmr192334811cf.3.1736543655305;
        Fri, 10 Jan 2025 13:14:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4281:0:b0:463:1398:12c2 with SMTP id d75a77b69052e-46c7ab5a2a5ls36418051cf.2.-pod-prod-09-us;
 Fri, 10 Jan 2025 13:14:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCURPrgRzGJzGgboGhZ6nYmqqJJ8/xVTxkjT5IfXYoqvs2EUQ0OKQLaztN8B8394ZmlvxQBQXOfYbLG9KQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:1496:b0:467:86c0:4bff with SMTP id d75a77b69052e-46c7109eeb5mr162796081cf.51.1736543654000;
        Fri, 10 Jan 2025 13:14:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736543653; cv=none;
        d=google.com; s=arc-20240605;
        b=AFctcmNYkxDD8W8XLC0Ni0PIHEpGkRP0VQZwncS+wNR4fwiRzWmsoEF5NonZduIhvK
         yym0OAA2gIsx2nTVF5sU4OixEkHseSavnTSpXli7D3LDUMl07gf8aLoW8HnXzKeh9670
         Alr807cnTsf3DP55bJGpouNvbkgzJ+5t21gp7r4U+Yt/1+CyCq+C63ecKDaJasQfg6gT
         95TQZhEoRY+q+WsAMFCkspfGfu/r2u7BsLrn0ddnuSGYjntSsmV+hOBmLM2HLCXfLQJW
         e4i3WuLqqNSH9QZW3154hoENESd6062ekyTNWbn62CMP3BQS72/YFa4dqETdPKGUC9uK
         oO7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-filter:delivered-to;
        bh=ZGAssXAPOJukEFvnik15LKGFmJ3cPKcTOLrwiRjfRog=;
        fh=kBPXteL2aoOP8/UgOfYmiRQuh2+8l7u6FiG/bbfO7V4=;
        b=jKeWEfKrUTZm11pRScl304iCP78kMR6alJIKhKgCiL7aSZioAETHGUAQ+4boO2zZlI
         FF6TN0W9SGGM4AUiZAC77viKHOQCHQ9BsRRE/FhKPy7b9QlcTzkiHiX0ShNj2xLTB2ZH
         1RwhNbjFrh1DsE/3jb9jgos2KItIxA06LJ9CL2Z02mIwrGCRaK7y7gFhgZfL52mVQoFm
         AYkSVic/7/OAjCY46+xWa7JF/5jsB5/DZeAinYXXorVyNzjRo9EnTunD3ocf3NzM1jkz
         mq2aXJ0vwatYRjH0k1jtVS6Rb1yR+KiehGrTtD3vCFKyuLlrjfCBnagil2G9v/FTLkX+
         JW6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46c873e4797si32221501cf.253.2025.01.10.13.14.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 13:14:13 -0800 (PST)
Received-SPF: pass (google.com: domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) client-ip=185.181.61.11;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-202-0yD9Zk7JOZmb6LPwjNdLLQ-1; Fri,
 10 Jan 2025 16:14:11 -0500
X-MC-Unique: 0yD9Zk7JOZmb6LPwjNdLLQ-1
X-Mimecast-MFC-AGG-ID: 0yD9Zk7JOZmb6LPwjNdLLQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BE4CB1955DC6
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 21:14:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id B9BCE195E3DE; Fri, 10 Jan 2025 21:14:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B737B195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:14:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3601D1956050
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 21:14:08 +0000 (UTC)
Received: from dalen.lamasti.net (lamasti.net [185.181.61.11]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-393-1Irrym0dNsO0WZsYXtmRfw-1; Fri,
 10 Jan 2025 16:14:03 -0500
X-MC-Unique: 1Irrym0dNsO0WZsYXtmRfw-1
X-Mimecast-MFC-AGG-ID: 1Irrym0dNsO0WZsYXtmRfw
Received: by dalen.lamasti.net (Postfix, from userid 500)
	id 5F62414C203D; Fri, 10 Jan 2025 22:14:01 +0100 (CET)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 1.0.7 at dalen.lamasti.net
DKIM-Filter: OpenDKIM Filter v2.11.0 dalen.lamasti.net 5F62414C203D
Date: Fri, 10 Jan 2025 22:14:01 +0100
From: Lars =?utf-8?B?QmrDuHJuZGFs?= <lars@lamasti.net>
To: Geoff Shang <geoff@quitelikely.com>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
Message-ID: <Z4GNmVekgBzy3O79@lamasti.net>
References: <m3a5bzvek5.fsf@dalen.lamasti.net>
 <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com>
MIME-Version: 1.0
In-Reply-To: <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com>
X-Mimecast-MFC-PROC-ID: _HkanZIDbmXLSodDAFUACwvXXXqs55xlEuw9QgLD09w_1736543641
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: hH3YxwBktrUGv89e8yr7NnFub9lVYvC4ZwlLj2J36Xw_1736543648
X-Mimecast-Originator: lamasti.net
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: lars@lamasti.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of lrs@dalen.lamasti.net designates 185.181.61.11 as permitted sender) smtp.mailfrom=lrs@dalen.lamasti.net
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

Thank you!

You wrote:

> On Thu, 9 Jan 2025, Lars Bj=C3=B8rndal wrote:
>=20
> > I'm using Elinks regularly from a server located in a data center. Unti=
l
> > recently, with no problem. But now, they have blocked the access from m=
y
> > IP address due to the lack of javascript, and the posibility to prove
> > that I'm a human and not a robot. I've not found any email address or
> > contact form that let me contact Google to remove my IP address from
> > their block list.

[...]

> I hate to be one of those people who say to use something else, but I als=
o
> recommend using DuckDuckGo.  I've found Google's search to be frustrating
> when you specify several terms and it decides not to match against all of
> them.
>=20
> When using DuckDuckGo with lynx, it redirects to
> https://lite.duckduckgo.com/lite which has a nice clean minimalist
> interface.

Thank you. I didn't know about that. I've used elinks with URL shortcuts. T=
hat way, DuckDuckGo don't work very well. When I come to a search result, I=
 cannot open it directly by selecting the link in Elinks.

> > Do you have any suggestions for how to resolve this problem? Is it
> > possible to run orca remotely, so that I can run Firefox from the
> > server, just to access Google and prove that I'm a human, in hope that
> > this will remove the IP address? Do you have other tips?
>=20
> If you really want to resolve the IP block and you have Firefox set up
> locally, you could forward a port on your SSH connection and access it wi=
th
> your local Firefox.
>=20
> Example:
>=20
> ssh -L 8443:google.com:443 <yourserver>
>=20
> Then once you've logged in to the remote server, you can connect to
> localhost:8443 with your local Firefox.

I tried both, with and without https:// in front of localhost, but I was no=
t able to go to google.

I f I in Firefox tried localhost:<port>/search?q=3D<something>, I got 404 e=
rror from Firefox.

Lars

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

