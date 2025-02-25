Return-Path: <blinux-list+bncBDM4LSNO5MHBBFVR666QMGQEBDHBR3A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 800E6A44375
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 15:50:00 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-471faf6e4ffsf110991031cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 06:50:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740494999; cv=pass;
        d=google.com; s=arc-20240605;
        b=aZCBF0hqUfPDCuK5NI8Iqub8Dklo6h5iQUT072LysRE6TBMGfWm1Q5uXaPK0tWg/oo
         Xwmc62rgH513lCN6AbOiH5s6aJDZDORurpN6xyhED6gKqzwYHeu09XErf0guJc7tLYHM
         RT8EvEOlKJs60AaYsiL14rMedLuo76qYe0z/6kzr4Ebq+wCvZTS3Ya0GQ8vUfxA1Oj8J
         9WgNX3filt9lciBkiWSBKmMA4T1z6TBNGGdefbNSpUjbcjSXMMdWlLi9yEm6V+qzpSKc
         JDR6yhGFuAEHEZZ0p2RPf8LfPeeeVKhWgROU37shv1IgLiDmZ91H/SQVQ4TrWIcRiHPm
         qTqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=RcvglXYRBw0LAfUqeOvTQOpV8eTW6qbNx7YGqy2CSAw=;
        fh=kQCIG8EvpAIzNxXRtQM+RHO7HUhgdOl4eR5dLaiIq2c=;
        b=Bu+LDi4H69QXn4qo4Rl2GqXyoRGtcKVah1vZGPydTxVnxo1LMdlRI7z0+Phg9MRF/m
         q1K6ISH4wXH10IiV5GeKopHH9gwbKjtZeakUltWZUYZ0soUnJQfw2+tdfs4a8VJ6YQQ7
         sMnoXLZFvfYfCN94fx/XLDCvDC44N3rddqegjMV7NNdfSVckYwxY6ZfKYd/JhpQYpUCM
         aTFYpei1lZPwreZqnTlmMELZDbgWVPKbjahFEPmWZ93wbtIPrAckYrZDpXF64dVwesPW
         Mba5za6mMUOALJPoxSN9uh69DYyMghLgzCwVe3FJkDOV1K62XjX98JcBCmXrOvdpiz0F
         muAw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740494999; x=1741099799;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RcvglXYRBw0LAfUqeOvTQOpV8eTW6qbNx7YGqy2CSAw=;
        b=BBU4sQXq/HngWN8pIIngvVp2tRmKZt+LBcl2x7pexFuI2d9qKFbMHHzVIuWJ7iocz+
         um+1GCNSUSU7Mwxelk96Ps6xdIubKvT/FFgjztkuQBkG4WNw2O7Ibr004LuMOvApek5Z
         leNVjV/SaPC/rpBI4FknXSGx+BqDVBu+I7qVEnGfBuhdO6KwVuV/JbKYOCSud1tJKyNl
         q0aRqW3wqJh3xltfgYyFCJLGoT+LMbtfGW43Q1IIX1VRBAhE9kfGRntg4uGtEQUHWnYn
         r2GNHAMK/1kEMzjudL4C7ByiZaO0Grr4q8GqXUk4v9m7wehe+PBygqFlFfjV8Iwh2vFk
         SLmA==
X-Forwarded-Encrypted: i=2; AJvYcCV9/hBIBreTjPhYPYezJYvgNTacL7D00rjD0YIrEyUw7zmv+TOzEgGIDihddHgjctFG5/BjQg==@lfdr.de
X-Gm-Message-State: AOJu0YzXe4poid4TdIL4YP0MzomvuVs+ahtyZzBY/QSxCgx74Gt9DwTn
	SaczjDFKvdb5Ok4Zc9l1lEaVW+Gv2i58duCnTzVajTRHcyVWuWLQHCD6w5fV0Nk=
X-Google-Smtp-Source: AGHT+IFI9AQTKMpNnDIIRv2pVQ63PScYWod07GjeSqCgm1Tl/UDd1P64Vdce/Uw9xipOBFUcLBV3zQ==
X-Received: by 2002:a05:622a:418f:b0:472:fa6:ce41 with SMTP id d75a77b69052e-472249023c9mr288559791cf.44.1740494999031;
        Tue, 25 Feb 2025 06:49:59 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVFwuuF+HoZBPlGzyG+zr6BFapcQR3miVIdRCmObiSSFsQ==
Received: by 2002:ac8:754b:0:b0:467:5082:dafc with SMTP id d75a77b69052e-47222d299cdls2911221cf.2.-pod-prod-02-us;
 Tue, 25 Feb 2025 06:49:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCXkeT1m4+37a+WInRkk/vuCLfn0RU9yUMVAmthfkzX5CSEEXmSu0gtNCbrcZhJnB4o2S+SfqEmr+tRstw==@gapps.redhat.com
X-Received: by 2002:a05:622a:15c4:b0:472:636:f5ff with SMTP id d75a77b69052e-472249079efmr207261471cf.48.1740494997904;
        Tue, 25 Feb 2025 06:49:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740494997; cv=none;
        d=google.com; s=arc-20240605;
        b=E5NVG4zQTcdBfOiHhljwJzs9WC61/dyn9HF/utwRcnXEO50HJ2Ci09FA/W8ijC3Nx2
         2NbYm2Wd3RmK3xw//wyG5HGjjOtdNy1AajO10fNeZqF0pqwzIo9xELBc7aePicRtuZ6L
         4+Tk7CyssvI0sd34h5G1KwhKikaUvt0yoMmpjMjVYTXBzfAvwkFOctyGxJbomy1OUOYR
         ZLJksseSbGqIDj5AdBFcSKI1zhPn6oyv0/rp4P3eml7ufS4Rhi6WHD0SXsg2BrnbnL4i
         pMdyOb2k4j765D/foDcqxTLzG4h+sjOqTJQw9VqXZcx6EkkS9tXcxoVHHAA1gNDoq6AE
         1KqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=/2+xyinZiT+CE0Jx3+ME4OAdK5BMOUa26Uoxlvep+vA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=bvxcC5uJvNzpV5UIrxRfgj7JhveQVzT9zhN/Hz9y/grmNF/iG4cEB5e3ErXyozH2q/
         MVCWbP/hG+FkA3Y8RLLI3xvd2jmgy4KZ/IDoz/s2HIzZr5i/Nh1D1WkE+66zKAZKUtiN
         YrglFhUD11ww1eIrlhe6q3vNRIfsPHZ5XJwe/UEOQjbrtd4EQiel3VEd7seTs/V6o6Bu
         xos16KChUqF6UdGsZviJEk0wG6pUzDwqVFSBYn9hwVuHAAMVaxJNbKlUHkP7yX+NdtHR
         NeKdi9jTN9/nHegP3ol7dFgCmyvhcWWZjE0q2MY66JrUYCXR+yBpDx3SZ8hrB0KtvJrl
         hn4A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-47378095836si18573931cf.408.2025.02.25.06.49.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 06:49:57 -0800 (PST)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-442-Y7JHaylcMrSSf3BvM85t0g-1; Tue,
 25 Feb 2025 09:49:56 -0500
X-MC-Unique: Y7JHaylcMrSSf3BvM85t0g-1
X-Mimecast-MFC-AGG-ID: Y7JHaylcMrSSf3BvM85t0g_1740494995
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 97AE41801A31
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 14:49:55 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 92FD91944CC4; Tue, 25 Feb 2025 14:49:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 906E01955BD4
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 14:49:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2F0621800873
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 14:49:55 +0000 (UTC)
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-136-_r_4pKnsPMWcwVQlm6wdJg-1; Tue,
 25 Feb 2025 09:49:52 -0500
X-MC-Unique: _r_4pKnsPMWcwVQlm6wdJg-1
X-Mimecast-MFC-AGG-ID: _r_4pKnsPMWcwVQlm6wdJg_1740494991
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([81.164.0.33]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M87Ox-1tQRJg1xvV-00yZqz
 for <blinux-list@redhat.com>; Tue, 25 Feb 2025 15:44:49 +0100
Message-ID: <30bc092d-bd80-453b-a5c4-16c9e42f00bc@mail.com>
Date: Tue, 25 Feb 2025 15:44:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Linux command line and youtube links?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
X-Provags-ID: V03:K1:Aog0AbPDWwlcfkXGuAjpXvTUZ9VdUrW/eFbGiVikIlL9f49ErJA
 x+P9cbmVBfxJXxi5oXs4Ycph5XED63ktx+0Vl8Wi208oljfRhZ/0S2+Z5AdUA37GbXeuuWB
 9I/Ck8kjQYKnwPDWndWNnY4YOPSK5gdHaEhzyF8YIoU8GwIubbas2h95+YUcgOSVlSEJFc+
 CkhX6HJ76sBue3NKTvXNA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:pTUhe4LQP28=;HBKPo36zTmq+LrgWTTj0/Wc0TEa
 7tLqSmWlBLN/cdq+hdLAfzv5p0Rjk6k5oplJFKovjLHUB9ySpDCcRi5EOCgPRzxVVvSk51VvJ
 HiSBTjoM+Nabiq19xIeo9S0PORTrLFe9Y1ey4P6tvTU5zfgYfpgLOOejsQTJfNEcUlCMvdcEB
 13nOHG+v03VK4TWa4GklYlj5sdl+xvJ7GWXsIlqUGg5jZWDXQwfLB9qD/VMIrv728Y0D7j+44
 7lcA/RPC1L8hyAU5Pad13NDzG+w5PlfwxyqaRj3Zf86DgStf+SsoisHdCyxNH46UXl6kqEtgN
 6IDxnHQAvq/8gsDnt2XeJ5o2O4Pls1ZeMPS6T9hb256m53wI8ktD4w2NfA0i1feADnmPiipL+
 FiExfrchHorWa+ZJ9fz6RD+IXBp6viWvLQu5UrCqca5FDIeqSNfeXkOHBGyp2jFeqAfn1hE9f
 syTGHVytdZdGdZBYbpq9jTbZ5vyplcLLTXNh70eVcutR2IJDlIU0GbWra0Eq0d9Muya/HQdxa
 c5XpDJzXVkSF7Cp8RX14pmzka4vWI5JG/xdbxMieTphyD/VyrZCamppUpzQ86kjPWEr9Q+SD9
 zvfV0Gd9o+vdOBq9AZiFMQa3+sxtEaf8ux4Myz4qEH0W14Jz2NjJ/YJFCixyMPtOn6nJvr19h
 VU5pWP+u0xOb8I860Y7Tv2+2p1wzQEDreegyWloCJ1hj+kWUS47gmAroSnvAQR06N2g8oInBC
 +/joY8d96xXIpLcI5tcrbOsduRwP50kjK2oNHIkPRjRK1P45J/m6M1W4H1rDBqo5doK2qcvoS
 mNksKaCXTHs/p6GnUuJPmd1/QQ4OAihsYHxNk+XYKqyxZYofDA+mPnOFqnulH4JWWhBlkRNSJ
 Fz3VLOLLW9Wsrv9t3/e48bIyhWrKee6ZvoziuEBCiEAif/uBAEdhyF6pGM67Z7U1Jq056Sb4h
 AIWyRtT3liJoJx0M9SfFvR3dp7QVRwJHa0cJKj5fEoMTmMitYfdO4wFZWpaS1vEtA6WsqgY4d
 bf7eCR5H4HVm7HHvIuefyC4CY9O0oE4ksEzIrnNkAsbRYXz02kRFV5rDP/eL03ufKemL+rPfS
 aUPsYT/b6+Cvxluuw5EnXHJt5wUr0uRxQNp5VSiS7i5eCN1/pt+FgzkwKqXlOa2vjlhHpPu5k
 pe5SPIUTIVM2FJlKDBLpoCGH3OPz/0z1emFvzQW8BRnV5ImPdus83KNazsLXccHFCjjmNt9zh
 Oi1FvV/ydJ7EMWHEwLzUXFahlB9jUDeSS7TgS+oN+H0HANvEQJ3Zzy1H5vEYb0rckVC8jm/uc
 Z04rvse+zBCt0rCtHWnn+f5QtZErTEY/27jKiWTowACeAaXB/iUEgqRirDWUFstbvE7dV6sAx
 syGEi9N+pcK8Lr1eMF1itnnDmJUhIaTPn65Yjrn9R7MMb9dH7QTKHoLfeG
X-Mimecast-MFC-PROC-ID: 67wDckq6AbEPAaAs6IPYuPxxJwoIExDh6H28q1C366k_1740494991
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gW99-SS3jvK85WznXxkXNg3lbmRAo4BsTMzog4_NVns_1740494995
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Original-From: john doe <johndoe65534@mail.com>
Reply-To: john doe <johndoe65534@mail.com>
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

On 2/25/25 01:49, Karen Lewellen wrote:
> However, I cannot, at least not as I understand the process,=C2=A0 take t=
he
> YouTube links shared on variety, and in lynx, manage to download the
> audio for off line listening?

Note that it's not legal to do so.

> or, am I missing a key factor, given my only Linux=C2=A0 infrastructure a=
re
> shell services.

If you have nodeJS, you could use something like [1].
They are also other libraries in other languages.


P.S.

The cert that you are using for [2] is not trusted for your domain.

[1] https://www.npmjs.com/package/ytdl
[2] https://www.karenlewellen.com/

--
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

