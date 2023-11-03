Return-Path: <blinux-list+bncBDYPVTOXSQEBB7NWSWVAMGQEJ6QBS5I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C377E0A71
	for <lists+blinux-list@lfdr.de>; Fri,  3 Nov 2023 21:43:43 +0100 (CET)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-d9ab7badadesf3249504276.1
        for <lists+blinux-list@lfdr.de>; Fri, 03 Nov 2023 13:43:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699044222; cv=pass;
        d=google.com; s=arc-20160816;
        b=NtYNM4kyuPdg9C3vYBRZzDmiebBAwZCi4l8yniL3yiIN4M3RK20liam6kwxvRg4afa
         yc/aSq4k3UQIyksbKAjCAGxrIzwNrW5mhN6GEzD4so4hPrJygJhP/0ccZriMxEFbw3fR
         teg5gBVG1vOZBx0SiHLsA4VgUNaG0KnJAb/EecA4S0vhtLo88ISC6PjGNVAACY8gZZxW
         xrQfD31BesmaRc4QFYr50Ahf5d9F51mAlzCK9kVZ8rcjpm0O/ZkyPnp47f4aC4oIxHw4
         g0MMqIGSeuJ9ST0I3bm/f3Nm43wm+CAw08olVtB3WMsPYrE7RGTz24mxeM6XfeRkPhIk
         gUMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=AaAiuPCn/TS1YByHKssxvFXKRYE9TVmiLIWtep0aLbE=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=C9StN42f3laPC2HsgXLMsmfiJlT8gwkBwFmCc0aTn+dMuSlwXSjsEH050HiMboGSqS
         9XKoOI8bRB9FBLZaU5rF4b++XhlXTzyFEWIojm/ymXSPNbCcP81YWlkmDO866XG3MVYX
         sJ5BYxdM3bP9B/VjLC4D9jHLqcjNy0RcBbMAa7zWj3c4343rrasPA+iIWWhR5X+IUBQz
         pdgO+BnkElbqrp5PG6kQK0TnzIA2j2m+/5MsD+hDXYebQl5K5szblJtA+20Ql5NnJVGv
         6+bzXyqf78dXSCqDyNolWr0PirvA4nB185T7nnJKJ1Oa+eQ33aDDlNeUBHD8YZRjwGYy
         tKLA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699044222; x=1699649022;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AaAiuPCn/TS1YByHKssxvFXKRYE9TVmiLIWtep0aLbE=;
        b=pqXvJmwh4UajB9OFuvf0322WJb16UVf6Ml5elGnmUp3+7rBIN0ONdffef7BiUZUCAF
         1Y93X5WVtQu0ZogWPz6kgUf7DfIw+lXHpMUW+eTY2JMANXZxHJueWcPrZrhoYBn9i/qW
         C1itDFeGHs5NDD7U74GJuaHoBH1Y6lTpzr3ZqsgS5G4JEZ3SfIspL5zIDmoeEVPWgMR1
         SqOuPIarLn/YQ4zkN24+Jf4GZgSj1j+ekFILSx+q5Pbi4QLZ8NQKYapLl1NKyw11+1iN
         PgXWWSBCiVhCPMm5fmO/UWAzxbIvPdWDu5EUKhVFnYKdXPuLq5TdAYiv5PMhKzCg8Mxu
         nN4A==
X-Gm-Message-State: AOJu0Yxel8/fAyWhi4Wm9234aCTrYlkih6X3WIzGSSSnf7oT1E/tTwD3
	02ceoPZQbNLNtSYJlUs/9OnSgQ==
X-Google-Smtp-Source: AGHT+IGjqbp0XgAbe6OKESe+2hpd0VJKgOxXKlDAZq/AC2hUg8EpNrSyVijN9kxltsbLj+SXS0FavA==
X-Received: by 2002:a25:df10:0:b0:d9a:55ae:b290 with SMTP id w16-20020a25df10000000b00d9a55aeb290mr24446514ybg.29.1699044221707;
        Fri, 03 Nov 2023 13:43:41 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:7712:0:b0:d84:ca32:aff0 with SMTP id s18-20020a257712000000b00d84ca32aff0ls689641ybc.2.-pod-prod-05-us;
 Fri, 03 Nov 2023 13:43:40 -0700 (PDT)
X-Received: by 2002:a25:ac07:0:b0:d9a:fd15:82a3 with SMTP id w7-20020a25ac07000000b00d9afd1582a3mr21976161ybi.24.1699044220770;
        Fri, 03 Nov 2023 13:43:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699044220; cv=none;
        d=google.com; s=arc-20160816;
        b=tzWKvDYXJKTpHanRe/Rx7RphTdArxjzZ+lWnsxrkJXUgYbkUhZrS9c0QUmIgfUxJ2m
         7t8CFf9fRnGFTEf/BSMGt94E96Z5s6C9kg2zlLSHUlWrI4f4rKaTk9em5qk92FBK+JA1
         6ukB1TzS8q9L3NSsVKEECOqNbSTypLn+p11RzktX+Vt4txNWoLJoJRolGSecpvr4GYO7
         cVvKzgtqTScf60W4zq/F5pQOQGymjtluxpKSvXZD9Fcf7v79E1lV9+yf5J3wq0wKAuSN
         Mgp6gfXPpIhqZQICZM1g68dZtM/VzfD+EYSBjsj8dkiDXzXux2wzmvUNcldWLsh21LeA
         KpeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=ENuno/VKDo39zQLSnfVGToRhUR2PQlsw3z0agp5wxOk=;
        fh=+yZQLoL+cnacxeL2FwmVaUzeiDl5iQWuXdQF6l72Pgs=;
        b=fCn+4P9djClmpP0KWEPxOAVLL+p1xU1uCRwnQO7WW6qulUiKA05Y2sVAsjbzvpgQNw
         lClTSzr1fqoct9ukyb/lZ5ENcy8T5lfwOTC3NErlgwB0P8p6zqAR157iln3cSKgoZFNq
         x341XdDIx0mWlsY/OOhpVQCFcRwpg5XMnaoG84QiS18ph7dfKF+xJTU1KCW4ThEHzUTp
         XVamExjggMglNJ81mK65dCy9zUTCkDC1YMTCkz3vswv+jllnsT4hyyXIG6pf0oKZEXGC
         CFY9IBnqJk3yARxjDuqTYvUBDeOt+OtEcMN492v9lXRd5tGiywHHavfBbsId6PXjCD+4
         /w9w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id p17-20020a05621415d100b0066d14c995e7si2063482qvz.359.2023.11.03.13.43.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 13:43:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-371-TI8Q55VgMSiPir8JAC86yA-1; Fri, 03 Nov 2023 16:43:39 -0400
X-MC-Unique: TI8Q55VgMSiPir8JAC86yA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1F8F1101A590
	for <blinux-list@gapps.redhat.com>; Fri,  3 Nov 2023 20:43:39 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 1BCD3492BE9; Fri,  3 Nov 2023 20:43:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14078492BE0
	for <blinux-list@redhat.com>; Fri,  3 Nov 2023 20:43:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E7DF1811E7E
	for <blinux-list@redhat.com>; Fri,  3 Nov 2023 20:43:38 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-605--Bv7qipZPQa0qIfm3-DfBw-1; Fri,
 03 Nov 2023 16:43:37 -0400
X-MC-Unique: -Bv7qipZPQa0qIfm3-DfBw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SMXlD6qwjz10PL;
	Fri,  3 Nov 2023 16:43:36 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SMXlD6mYzzcbc; Fri,  3 Nov 2023 16:43:36 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SMXlD6lpBzcbP;
	Fri,  3 Nov 2023 16:43:36 -0400 (EDT)
Date: Fri, 3 Nov 2023 16:43:36 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>, 
    blinux-list@redhat.com
Subject: Re: Uninstalling aur not fully installed app
In-Reply-To: <ed0ebe69-64d6-427c-b5fd-18fbc885760d@gmail.com>
Message-ID: <685d06d1-4998-acad-9279-33638671c99b@panix.com>
References: <ed0ebe69-64d6-427c-b5fd-18fbc885760d@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

yay -Rc pamac


--=20
Jude <jdashiel at panix dot com>
"There are four boxes to be used in defense of liberty:
soap, ballot, jury, and ammo.
Please use in that order."
Ed Howdershelt 1940.

On Fri, 3 Nov 2023, Pavel Vl=C4=8Dek wrote:

> Hi,
>
> I wanted to install Pamac, so I choosed all by default, but some packages=
 are
> in conflicts, so the main package was not installed, but some packages, s=
uch
> as GTK 4 and a lot of other yes. Can I somehow with yay remove packages, =
which
> were installed with yay -S pamac? I think it installed 10, 15 packages, w=
hich
> are not needed for now.
>
> Thanks,
>
> Pavel
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

