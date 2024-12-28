Return-Path: <blinux-list+bncBCMKFVG4RQEBBOGCX65QMGQEBCO46ZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF4A9FDA26
	for <lists+blinux-list@lfdr.de>; Sat, 28 Dec 2024 12:30:02 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-468f6f2f57asf101003781cf.0
        for <lists+blinux-list@lfdr.de>; Sat, 28 Dec 2024 03:30:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735385402; cv=pass;
        d=google.com; s=arc-20240605;
        b=ASZV1LGzNXzdzP8XTlD/Gqqc1jXGLF1xal/glMEEWOr/HPrthoilF8HxePZqjp1hcw
         7Fs7tl3crS3EFxvt0rkdvh22VO/9k59j0PZwqF3LXXHJY9DARa3v3nKu3nWgW6vb/znE
         G/4NJhHV0YCTo//ebpiUG+XmgNe3osADbT2E9+RqUkH/sI1cEjNQywF423M1FUd7u/Zo
         ENowtmAwe41nVTc7BoIl8wN4dRHnSU1zjnmygXap4t4nDHQw2vF7cCoNfFiSchAxUaOB
         RkHCnUtT3JOge9O7VnCm1unAP7Ug7VlPrmQfCekxVeBcEMurhdEIlAaVYrND+ZM//bdV
         1p7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=f0/XTl5+kguY/YWmnyJ+Bysbi1BkkbGyF5nA34cJ1b0=;
        fh=WgK4xWhEc54vzfDfYTGWFnp6Zy6tDe113oi8TeH7UK4=;
        b=AAEbbqjqJXkpY0p39f027rJHQA2CE0rkk/MZnRdTQybBB8834ON+Xu+ioHLKhRSj1i
         cL3fq8K0DodUrUFYKPi/mH3PQE7IV0fP5GxxDEjCpb0w+90Hnz1mVAVcTGJUi22kEm4k
         Fbij0mDl4lXsUhtuEIC5F03MfJSAHxPcIxDO8DuVRhJq1BOXnacZbKVqJILUVYPOhHaU
         WuHejM1DG5rNZWuXXfRoZtAfgqyTZsSJuCoTecvisVFx9j7ffhmwbeZjRDVJ3ICF44nU
         jyDE7iHRQ7XDQZ9EkxQ1f49WRRtcS1jjzjuOtc1CvYFKcDAXfSHsBuiy3Qqyb4je3xa3
         TBgw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735385402; x=1735990202;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0/XTl5+kguY/YWmnyJ+Bysbi1BkkbGyF5nA34cJ1b0=;
        b=SjyI9nYhYgO1nL2d2uvmyfpaf061x4XiHpo3lUTO4wxtQXjBggT9Wun3tU6dMJ052u
         w1+1tjdGc8/9PiH56MgWVimEIbrY9nI/i2ArPC5n4NIDbyZmpiax9HdrSA2b0utXPXi4
         EN4H2rtIxFFobu7wNrQ7uMOBOZhbPktFJUfszTxqAYMddDFHuoroentQxcG1nFwjQwHP
         hq17F09WCqpB7sL4HxJBZaI3kJfMns/+Op5HZvvYgMtDCo3wDDcXCbe9mSVJEUD+nZXA
         X1teYuAkLZrH67lNKSEBpnDGD1/oYbr7Y/J5y1c0uPnhm88Fb6wgWOfDmVNfhjm00b8A
         48KA==
X-Forwarded-Encrypted: i=2; AJvYcCXEqNq6w3krXjiA55PjXoGKqw3/3RuryZe9cXoHtWfHvqY9M17MhZi3cyzj/sVaLgn/Vqte7A==@lfdr.de
X-Gm-Message-State: AOJu0Yx/3ujnrc2Akkro3g/UJiQQrawtowipUH9T4j5xUOwPM/thWQAo
	RrEjSK0k8ZmVrBAsEy03OppH6Namld7LvyAraFNN21CZDb0Sxpo8PaMfrFNHA5s=
X-Google-Smtp-Source: AGHT+IGQ6SpUMsNAqFq3MR9CWbLqAhoobrEoZWZB9tAbp74f/sscKrgv8nJ9dNlp172MFFyvBCZ3Uw==
X-Received: by 2002:ac8:7d42:0:b0:469:dcc0:9b34 with SMTP id d75a77b69052e-46a4a9b7309mr500194391cf.51.1735385401182;
        Sat, 28 Dec 2024 03:30:01 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5205:0:b0:466:ac8d:733d with SMTP id d75a77b69052e-46a3b05aebcls114734521cf.0.-pod-prod-08-us;
 Sat, 28 Dec 2024 03:30:00 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUITztzl3qJrjPlAg/FIZQiQk4l1xH+30uaFmRsjHx4mm7uGCXl3hjbwO+GrAQXY0lwT/YBpCqPtcVc7w==@gapps.redhat.com
X-Received: by 2002:a05:622a:144c:b0:467:456c:2957 with SMTP id d75a77b69052e-46a4a8b6401mr460156401cf.10.1735385400263;
        Sat, 28 Dec 2024 03:30:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735385400; cv=none;
        d=google.com; s=arc-20240605;
        b=h+iiY9G8M3iTEE4u5iw4ExcwN4tknNWvOzknEmaA/qAqUp9eg+ta3zQVEzusBuDQZK
         4F2uU13HDQhl1e3dju6bIBLauBygI3ZykdaSXlu7OgPI0iZB5jo92ckPd6OabG5fAqKb
         68uBz0zuOY7DQfrpfCtIMMGf1EQHbqAfXBC+tmNZvgOft+3H3PZwwGZVmEmf5mpq4W7v
         0cats2Fgg4WqUzVELVeF+6Rqx7AC7AB+H+IUxuQoXDd1VVmO9d4CtptP90lf+beaKTu0
         gPNQJo4pjdJ19VKRd0z0og0fxJ/YKsWOSyzTPun5G5Z+9XUydiHRT/yUsQusbeLiKL1f
         H7GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=Nn0GcXS2GlvqR/kqqKHrI146cOWNBuCBR/ux6azOqBA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=WiDigJkOcwbWyh9dfcyNVqzFYmk4hl7e9JF01q/C0UeqmARq58JlZPnN64EvPcrRIp
         ZrSdvMgP56kJYBPl2a3DFE+pgU5FDts0u8ldV+RoHofLytaC1ljzFTPMNLh2loetFrah
         FYuUU7H9lK9F9w7sSISjJmHqNqHijVong1ta8mEnP77suxKh8+6ojZXmhu5QGYWyjTJf
         BL4DDdB5MkzdgDBHYLsGjXMxF//icX312fpyQQwVIxq0naxFGGnfawqt3iaS6b2p9mba
         cEx3Je+hExyIOFEnsyR3sPgyc9f/IXwgbAUZUmkeAa/soL3Oplrno5V1R1TwEpWBOdWj
         4yzQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3ebd6536si247242241cf.558.2024.12.28.03.29.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Dec 2024 03:30:00 -0800 (PST)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-117-LhZAl3duNpqvW2HNEVZTgQ-1; Sat,
 28 Dec 2024 06:29:58 -0500
X-MC-Unique: LhZAl3duNpqvW2HNEVZTgQ-1
X-Mimecast-MFC-AGG-ID: LhZAl3duNpqvW2HNEVZTgQ
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DA7F719560AA
	for <blinux-list@gapps.redhat.com>; Sat, 28 Dec 2024 11:29:57 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9B2FA1956088; Sat, 28 Dec 2024 11:29:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 98C601956086
	for <blinux-list@redhat.com>; Sat, 28 Dec 2024 11:29:57 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F25C61956086
	for <blinux-list@redhat.com>; Sat, 28 Dec 2024 11:29:56 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-517-JDrnKgHxMm-U3aa2mn0Lsw-1; Sat,
 28 Dec 2024 06:29:54 -0500
X-MC-Unique: JDrnKgHxMm-U3aa2mn0Lsw-1
X-Mimecast-MFC-AGG-ID: JDrnKgHxMm-U3aa2mn0Lsw
Received: from [192.168.29.74] (176-140-221-13.abo.bbox.fr [176.140.221.13])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 96EA362B59
	for <blinux-list@redhat.com>; Sat, 28 Dec 2024 12:21:55 +0100 (CET)
Message-ID: <6b06746d-5107-4cdd-8c96-bc5040a6e2b7@slint.fr>
Date: Sat, 28 Dec 2024 12:29:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Mate development
To: blinux-list@redhat.com
References: <4f5b9ef8-5e7b-4440-86b9-bd3c8bf957f1@seznam.cz>
From: "'Didier Spaier' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <4f5b9ef8-5e7b-4440-86b9-bd3c8bf957f1@seznam.cz>
X-Mimecast-MFC-PROC-ID: gNkidKbQM5P3iu3xoqoY0fsx6yEs4zzUuDXW-IC8ep8_1735385394
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: AenFBUY4z5NhvBbNzyazxT46kzvVZl0hIYVq568yEi4_1735385398
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Original-From: Didier Spaier <didier@slint.fr>
Reply-To: Didier Spaier <didier@slint.fr>
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

Hi Vojta,

last update of components of the Mate desktop are dated:
03-Dec-2024 atril-1.28.1
27-Nov-2024 mate-applets-1.28.1
27-Nov-2024 mate-notification-daemon-1.28.3
17-Oct-2024 mate-panel-1.28.4
as shown in https://pub.mate-desktop.org/releases/1.28/

Further looking at these repositories:
https://github.com/orgs/mate-desktop/repositories
shows that there are recent commits.

So as it is at least still maintained if not as actively developed as other
desktops, my opinion is that nothing prevents continuing to use and also to
provide Mate in distributions - and I will do so I a foreseeable future.

Cheers,
Didier


On 28/12/2024 11:58, Vojtech =C5=A1miro wrote:
> Hello,
>=20
> will be Mate desktop develop again? One my friend told me Mate hasn't upd=
ates a
> few months.
>=20
> Thanks a lot.
>=20
> Best regards
>=20
> Vojta.
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com.
>=20

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

