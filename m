Return-Path: <blinux-list+bncBDHLHEF76UMBBU7456VAMGQEIY6R3YQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B14A7F2279
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 01:48:21 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-421aca7f03esf67952491cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 16:48:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700527700; cv=pass;
        d=google.com; s=arc-20160816;
        b=NssbLztezkzAH92aWAvPzF+fvo8Glgzq8l0ev7eGeTu2wu6iiSmGveRUUovbjC7Pyl
         lp+ah4djr/r9KWODhfHPmVETJtINtrsJkCs4qT4WxQVOr/vHJaC+ofRaxGIBlxGALG+p
         zDFbcuVVqDAe4v1V3ATQPxH3jA5eJEzRWpJ5sBFpvtElu9ckEJEHCSOmEhOu3aOQZYKe
         7D0ferhHW5IiL7GLUN6wjUe994rhfWkQmrb4oqOs8vgGjw9469gEEQ4FshAHrlyQIvnJ
         thRT3mhGi5YO5F9PWCYznrqlAC8Wzo6gqhcKDhSKCce2mWL+QJQoOnFwFMAgcCVUGn9C
         WrZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:delivered-to;
        bh=8D+rqlvLuHotopZePrho7AD9N9/Y2gw+ra/bAkGPMQg=;
        fh=SvD59kHxu30fyORkRpGRFrWxQ3jTj1JrK3noiikZ64A=;
        b=xRF80m3qPWMAUFYsdOFiD4NgaaE7vFo/X6yPD2ApLNeTlgnKdUACwg5rGcDQHCcWm0
         wNfxQeEtatwVF4kQvLB2LQWKcLYUauDZV3fv1iejedmVqEY2vqlJvXTkQWcJZgSZ/aNV
         oa6Zi8AosCTk6EHZ7iP7+VocN5etSEb91PrW6FpNnA5QTDYuyuO/J6PPyF7P/anMELe6
         7zJbexhHY0wr8j6xXEoWFrlX3mLomAlo4uenUP6YkQYcQxVqq+ts6BA/PppB3sGvMdT9
         3NBMtriYVj9C4aGA3HolQCYFpsZaQMT/SybCts7drO57ssiuIICBP783xBaHoL+CdWUt
         1mxQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chinyoka.consultant@yahoo.com designates 66.163.190.60 as permitted sender) smtp.mailfrom=chinyoka.consultant@yahoo.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700527700; x=1701132500;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8D+rqlvLuHotopZePrho7AD9N9/Y2gw+ra/bAkGPMQg=;
        b=YgiXeTZD1lGD3b1y/wFxzXBHXCw8eb4yo9zFL9doJK+0wjrZCgPgYYMblDsafmQzDk
         cQFAZR/XjCHQqrcJ5NCk23INPpl7hCad7gL6jS7fir4XNxPOnfd0RunsOzxA5XJNJWvq
         XJJ1QLgaUNqrrCDZDF5/NYywTGtHFU7JtBMHEDo+Q97RpzgLtHbbUgRZ63Ws7pOlR1mM
         gOns4OZ8wqC7+HeK6zgovSzlVxniXckLmJ/2ELy2AUBfYClGZvOwwiaeIfmd0bO6ZfCE
         8KNuwkxbxTs75zJis0vih92HloF82Fxw4uGPNgSOfGctwyhl72Z/csFaFavabgN1mKwG
         YI9Q==
X-Gm-Message-State: AOJu0YwtVVDqOg3OabPId0r/cAY2OwcCE7eGJTwziPwcvk/EEFS7X+1E
	aoZ4r+DlLaV/po8IuixPx44L0g==
X-Google-Smtp-Source: AGHT+IHqx/mDO9h34xtU8pBvEDEni6I/t7Q0i6l80dyuVDSMWXXNTt58v2X0PMvUa/UiqDrrd+Lp2A==
X-Received: by 2002:ac8:7d4d:0:b0:41c:dd0a:6f66 with SMTP id h13-20020ac87d4d000000b0041cdd0a6f66mr11501399qtb.46.1700527699865;
        Mon, 20 Nov 2023 16:48:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1904:b0:41e:89db:416 with SMTP id
 w4-20020a05622a190400b0041e89db0416ls5655118qtc.1.-pod-prod-09-us; Mon, 20
 Nov 2023 16:48:19 -0800 (PST)
X-Received: by 2002:a05:622a:145:b0:41e:9953:ff93 with SMTP id v5-20020a05622a014500b0041e9953ff93mr12659946qtw.19.1700527699048;
        Mon, 20 Nov 2023 16:48:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700527699; cv=none;
        d=google.com; s=arc-20160816;
        b=M7QF9PFtm6LDF0rMM8bmWfKB5vNSx/atXTNZZqyKayS+f7GJyOctOiZyHPT0qOWTj5
         t8DX+sC8HOlyVil92fC9sXpEI/caaK0b7YMSXPYJMgLbYTxXj/Fh5FNaKTMgXmOutSHm
         O4wUCORO6gAkOm1SFbUJETQLRuE5IKBzEw44zfRBNkQtIYAjkI5hkYFFmHz36c1tbswP
         lTz/oqeWkzJi6Dqb+6fQWEP3xyXmVAuQWUK3293rIPBR0yY4yGaSqIvkF1S9NILhDT5D
         LwG7yxUYo1MZXiAtXoQwfQ08KpL/5r453nLxS+fjDy+QQRc6nPv6NUjg4SUDrlEHIwSV
         FQ3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:delivered-to;
        bh=mxCm22AZSnfhCapC6EaVdLAWWiwRcMHbYxZpXLmSmAo=;
        fh=SvD59kHxu30fyORkRpGRFrWxQ3jTj1JrK3noiikZ64A=;
        b=wn4v2fmK7e0P+enElDY3aCiOMdPx0ukHXXOS+k0RmBnw+Yir23+SacrOaRS+GVzDh1
         vGkG7xXkHBHMOvN/qGRDQU086z4uQ5LzLVoejnjXJ9R81OsqozCRZJ7DxbTowI3x4BiJ
         SVISH7e+ezLfkhChAVXfPwu5oN0JGcjLUT3dQCxyJkvd2Be/jfM36p4wmZabsUuAps5y
         VhawPZCaNsi4/X4HboPYZwNWSci2dB8sj0vXi5SIHLZyV4Hdb4fFLezjipM1m3QxTnw1
         oxeJ/XS77+kzvFuMOyTUXkRgjPRYaLYiI6xb+4b1Ps7X2wRTX+Ox61kAS2/eKsIUm5MJ
         bBeg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chinyoka.consultant@yahoo.com designates 66.163.190.60 as permitted sender) smtp.mailfrom=chinyoka.consultant@yahoo.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f4-20020ac87f04000000b00421c3b9dbe9si8276300qtk.208.2023.11.20.16.48.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 16:48:19 -0800 (PST)
Received-SPF: pass (google.com: domain of chinyoka.consultant@yahoo.com designates 66.163.190.60 as permitted sender) client-ip=66.163.190.60;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-685-U-ihpu9EN7aML3eD073kuA-1; Mon,
 20 Nov 2023 19:48:17 -0500
X-MC-Unique: U-ihpu9EN7aML3eD073kuA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8E8EA3C0F434
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 00:48:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8BCD240C6EBA; Tue, 21 Nov 2023 00:48:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 843ED40C6EB9
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 00:48:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6494129ABA25
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 00:48:17 +0000 (UTC)
Received: from sonic307-37.consmr.mail.ne1.yahoo.com
 (sonic307-37.consmr.mail.ne1.yahoo.com [66.163.190.60]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-279-0GP0nV2EOpqHYe6ylE4vXg-1; Mon,
 20 Nov 2023 19:48:15 -0500
X-MC-Unique: 0GP0nV2EOpqHYe6ylE4vXg-1
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1700527694; bh=FDjYEEs0GP1VqXEyIkfVbnb7YuGOPQRGzjEOGeCPw1y=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=Oeulr5Hnc4XRyZVXz++f/oFPhRAvIZAPy8vVu3VsztEXKipXj4zVPX8pFDJV/OoXoX1PI8OzdquEs6VlkdJeA7wWoNquWEKUYffIQU6yaUwaDojGCAxEIFr23omA6ARRdkAPLHmWqXbuemxr6pYdIAioa70zJtyzE6AyrZOWeG1G15sDQaPvjGCPnCQzRlEzdBQHLBU9fX2GKdw2fCG3tGM8HQICBqjLiPWaYY9JaLNGoQAgkBYsscCc5KblTE8/08UV1RGSckeqR4Q1sRSkg6ayBZ3QGfJc7/5RqiVAv/A+SqAhHshFlcFKjgVZiX4ZQWa0Ra7a/tlVNgBRy3/7xw==
X-YMail-OSG: 8CNyUB0VM1kuGZQNDilJc7.IDics8.PSSs0L7_XmGcdbZ_5rY7PfQ7HkVOHvHYp
 S3BHUHPxzsvYIU5.F5Z_N_4feFuSrxwwFQ6x0CaCTmUjIqlgvVXQ0WjRo.aLLX6bGEo6tOWl9I0Q
 zlAXzv7sRXo937JMjBtn1zRAtSZ1j_YI4hierQzFtLYZaMvUKEXw3kfI1iLwRbQj5P4fNz.1S5nW
 8UY5o7q9ePXL73GX45hbdlfm_nqfprrjb58hRnbv2oP.12SD2fFtyE55vwmc596XjFBcnQRthA2y
 xkxmxSEeq3UsWSvA_QwWmp2Z2my49mI2AiX8hcn.eBPV6Gp8p7n7FTe3aBfPiXUKCbRvLJC59zuO
 MEOWcqvnHtj4XSoXtfD1ULA3po1Hewhq58tsgF_r9Hr5.KNfJ.Z_HBY7lotBd02RXEe0qGY6bBcv
 Nc2SLBmjkxgsfekjsYnAI64yDQY5T5_1bD_2qwzyXM_98FdO_HIpJjqo9A4uHMdkEmyjf_I16Ap6
 iXVt6TSym0GFKFylyJnYzXuaX7WxGFP9YHmdAUhuJoTpdpUJzcJAaTEXM_e7kqoSJOVrFC2ixLOX
 QMdIOriq1_faiLEcli1NbGREEd9IXA_Gh2CiVr4YCWsa.SSdjDcly4HHz0833GcNxYUv7EO0reoo
 2uHj.nWPgPzG1QwDFHjORq0kJqJvq11oWvMtkMTTFeaKyrqb7DqF7uH59_FsuQDvUApEes0cimH0
 gltXPQnZlil1OLbecYmvB_Li4_z0c1MrMrHjE3tKDqC1Ul2iKcrI38a60T9WvN9y_cg9.lffgQ5X
 GWumxe4gIpPGNrYByI2J2g4HH.kZYnNm5Fcu9QTdqtMPwG0s_vjHtiLkgEJj7pXT4zDu2jBjnCXU
 JBmiyrZzM6y72b0m2DD8L6AV2MX9cVsAnKl7TP6hXi_LuWWjfuSP59bbI2DKAWklKiV6W0DzFj1D
 FeG2YQRzm.FOVY00ttZGuhmgWcXnnfwsLfo.PH5JtJ7Kqgo3m70aqt_Irsk0r6YBrhwSpcpCxnRS
 1uVqKf1So3JbXPNqpKlt8Nz9ZaraRyfWEmqgiRQKgXsvv5FHdV8oMJ.HUC3BFFh1NdO2.9a8NKUB
 tOGQxx0OVOd2l7sFqwc4kvksu2Yvl70Oaqer6fJSRY7VWoU4Z.oe_S.b7HAEfq5rOsRAnajtnJeq
 fEJCJAXp5lMjDtNB7jaiyqlSTvioGPSOM_mwTYLvJCZ42Yeb1CEoSUVr7S6hxwHj2LtMkDCDaEmP
 Q9.rYA0iG.9hZa7u_NNV1Zd_u5Mw8vuq1M57e0BMPJ7IIkoD2XR.v2cq8VrmmYM0WorDyoDMFUeo
 dTNKJ0ehyVIJ.yoAzMjtg9h1157fjV0qEVuHvMC_16OTBWmTXolfRjpG.kJwSZ4SnzR78Og0Ud7p
 J_89sUHbUnJsyjI5R.6GA1eO4UhDIKAVa8F45NRoqdsvUBoYceyz79JbTKb03P_AMTDL8g_X8xqu
 MKpRT56HsOLX7sck4jFhN5Bfr3w3sjrB60LWqKnoIjxjZlvbQ5RYjuwWtFOg33ZZfN9dTzPhUv1J
 9Jd9HpMIl3HYjeCSrw8ZLjELWh.ZiFQnkceGJY1GJzdQMmyIhZJrLrtwmdR4NM6RCS3MFA0_1LH_
 x8HpJ5oMIi9VHl8OcBvgZ7AETVvd5r9x496NkBBqHK9DgEjAjAYQ7wjpLrG3jtVQ4NHgwr27ycMd
 P8FkzFus8p6ZPl34_VS3bNZ5H2tIMGvTu4qI5CFb6MO0T8GLUgELtnUbw9Mw2a5HwHOb_p3Gh3Nu
 RR64ySoTaSHVCGLkIvuL0tMG8ApT0t9z7vCHhc7CZPCqEEB0tAtDnnB_1SPwcJdoet98tBizTv5q
 gMlMWdPOTBbFrxjdcaBOdwvmOP4bXW9lrYmgHRvZ._zxBBBDvMn_aRBwIIlQSySwvz0_1VQkrZaZ
 zHjGbj4IHtUlOBnZMyq5.zeiLl.d4CVLTp7xpwgGMP7BjHL9yTkj9UZ1SAgH8cBICbL.ELxlAAUV
 aZkkWPQ8Q4Q.fnqCsL9qaR4rhd7XYVacjbnStTKE_2bOq_ac1ZXSW.NlPXcKMubkofSxRVb2y_jt
 bxTYjotq5Iwt6kagBrIUD1XeJYi3iRSQfsnTgswn1Zfn3CvAJCgcXQ0s9LsckaG.p2SNhYQq_flZ
 pWA5G6dN5Y6BI8T_2G6PG8pOBCQZTDgwOYo4IoZ9pda_BqzY-
X-Sonic-MF: <chinyoka.consultant@yahoo.com>
X-Sonic-ID: a790b5d4-fe93-4467-9249-3d1c203c8467
Received: from sonic.gate.mail.ne1.yahoo.com by sonic307.consmr.mail.ne1.yahoo.com with HTTP; Tue, 21 Nov 2023 00:48:14 +0000
Received: by hermes--production-bf1-5f77bdbcd8-5xzjb (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 8e1b8ed1be41b990f3a84e672b29bb90;
          Tue, 21 Nov 2023 00:46:08 +0000 (UTC)
From: "'Ishe Chinyoka' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: Karen Lewellen <klewellen@shellworld.net>, "Jason J.G. White"
 <jason@jasonjgw.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: google removing basic html access, alternatives?
In-Reply-To: <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
References: <Pine.LNX.4.64.2311201725230.3562522@users.shellworld.net>
 <7d33104a-9bdf-4435-9e11-6e0158e2ef8e@jasonjgw.net>
 <Pine.LNX.4.64.2311201757570.3563251@users.shellworld.net>
Date: Tue, 21 Nov 2023 02:46:03 +0200
Message-ID: <87y1esexx0.fsf@programming.brainpower.africa>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: yahoo.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: chinyoka.consultant@yahoo.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chinyoka.consultant@yahoo.com designates 66.163.190.60 as permitted
 sender) smtp.mailfrom=chinyoka.consultant@yahoo.com
X-Original-From: Ishe Chinyoka <chinyoka.consultant@yahoo.com>
Reply-To: Ishe Chinyoka <chinyoka.consultant@yahoo.com>
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

Hi,

I use mutt and gmail. What I can say is that, first you need to enable
two-factor on your Gmail account. Then, second, you have to generate an
app password for mutt. Having copied the generated password, you have to
set up both an Imap and msmtp utilities such as offlineimap for fetching
the mail, and msmtp for sending the mail. Of course, I understand mutt
can handle both these operations, so you can set up in the .muttrc, but
as for me I use other external programmes for doing just that.

What I did was to set up the ~/.netrc file where I stored my login
credentials so both offlineimap and msmtp use this .netrc to read the
gmail app password.

As for mutt accessibility, as a text mail handler, it is just fine. You
can use vim for composing your messages.

Anyway, mutt has many configuration items. The mutt manual is detailed
in how each of these settings affect the behaviour of mutt itself. I
hope others can chip in. But I just wanted to help on how I set up mutt
with gmail on my machine.

Be blessed,


Ishe





Karen Lewellen <klewellen@shellworld.net> writes:

> Hi,
> my problem though is that I need access to the inbox contents entirely,=
=20
> not just to forward.
> The Debian list  is currently discussing things like mutt with gmail, and=
=20
> imap as an alternative.
> Apparently this bypasses the security problems with gmail in general?
> And yes, I send from it too..agree that hosting your own mail has=20
> positives.
>
> Thanks,
> Karen
>
>
>
> On Mon, 20 Nov 2023, Jason J.G. White wrote:
>
>>
>> On 20/11/23 17:30, Karen Lewellen wrote:
>>>  Anyone use=C2=A0 mutt that can lend documentation, or a hand?
>>>=20
>> I'm familiar with Mutt, but not with using it with Gmail. In particular,=
 it=20
>> is my understanding that authentication is more complicated now than it =
used=20
>> to be, due to Google's security policies.
>>
>> This article seems to be a reasonably up to date starting point:
>> https://www.thetechedvocate.org/how-to-install-and-configure-mutt-with-g=
mail-on-linux/
>>
>> I have a GMail account, but it's configured to forward everything to one=
 of=20
>> my "real" e-mail accounts, and I don't use it to send messages. My Mutt=
=20
>> configuration is et up to work with mail on my own server.
>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

