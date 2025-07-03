Return-Path: <blinux-list+bncBDM4LSNO5MHBBQM3TLBQMGQEYXJMZSY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A88AAF768B
	for <lists+blinux-list@lfdr.de>; Thu,  3 Jul 2025 16:03:48 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fb3bb94b5csf143258956d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 03 Jul 2025 07:03:48 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1751551426; cv=pass;
        d=google.com; s=arc-20240605;
        b=E0kkN7UKMnW//r6HJ9XqiemgTaf6WkVRtWS4jQQ2fcJ7dgwdnraCXlT0QveFmK2cPN
         oKK37pNqCJQ6BlAUf35X8e8rLJGrcyHMHJ5GInDi3nOflj7UUkI+mon2givOS9ntaIzx
         RZSkFL50Q8Ekk/m98N7KO/rNFZzf8uTj7OOog2UNbPf5xQu9AD+9X4s2iSwtJ8TFvB4D
         ti8nug0E0S8ueFS4I2+vndfP7ic5FYz3Q1LALVSzaMYgQaJdvZI0BX0xEEQkJFx/+JmH
         y573cGCWJGEWw+qBQqLAD7pjnWkG2zrqQLjUTV8e3HUKOG9f4i540UJFRvrSQaftmFxf
         0VXQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=sLmqmnXCJshFkxPjZ2a2u6y0owvmHGFDH+wY64fxSnA=;
        fh=wHjyGNTRMFFci2qIACGYMyRaQ7ql5hbePwA34fG6jfI=;
        b=i6RAh5XSzou4KyF9102s+nikxH9BGKR+ctVgU023SRkAy+Mf6ZJf+ga2+KFeGiorl+
         GrPhz0NzFcO57xz29n4+aaVAY+JC9MuWxQfAcySmGY4gClgA0jw8gmaLMEOSBBlyGEnq
         JplSQl8vL36QH52MxvhTH919db2NZ94/Ty/UlkuK5STBmJeLRApSFv2vDPPJh2S2ULyt
         7jgVFRAFEo4GTmoM4zF/AOvb+ThTxW/bNPjKX1Ii4r73FMYVqdFms6oiQH10q0KoJ8/L
         2bfehsECmvDou8HyRYpqVAU3JcS9P/TGxOsvvJlxviX7asdBH8iUjGnSIFk3c1TPSbK9
         +rvw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=U6pcYyZN;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751551426; x=1752156226;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sLmqmnXCJshFkxPjZ2a2u6y0owvmHGFDH+wY64fxSnA=;
        b=dFxUI7QSNHwm9x7f8YS8TnIUpgl30ektZBFvwuMbVNBuvqhXMg2sEuNKlZnBlt5Z2v
         HUUT2NkUUTN9Jquop4bh4/Yrj8lrwnTmm34a7O2hs7X+YrUIOBBqaGBck68I5Qa37EKZ
         JNKinMgs1T6hrdgmbL/jlnUiS698CTE2iAP4hNzyxOpICJfGdsZ6bAHGxd5nzeJe4+va
         YJ8ykUIu/zin4qd1QtSvye6HvVLZp8pOxEr7j1PIzGRqzDazAE5UeRvNti4UTiH2AL5H
         jitIXCAcXF/+lXMQk/SF43+nO9JWMDvkH2AJmzVLuKr0kmtfSJIaKcKKzitOy1mE49ry
         vArg==
X-Forwarded-Encrypted: i=3; AJvYcCW+t/pZqMcS7yGbY3pCt/isgpio6wfKZamEF3Ywbr/2Y3oe0UpgMq52JWZjR0+jkfTW1JDhOg==@lfdr.de
X-Gm-Message-State: AOJu0YxVi8XLLHy4/ivJaNZSLFXdSxNMURaUMv1KXQ58SBjznEWJxIl7
	ho7ZKUaCiXUjxjbzPz8p7J3NhugP3//pFva88+YR+oSMWesd4gXwyhuicERD1Nu4l2M=
X-Google-Smtp-Source: AGHT+IFbV4UpdQBeATJsRlUd5GpFa3sw1zdMzHLsGkkHhUVQRFZztL2dlH78AVwPSdQbTR083qnhYQ==
X-Received: by 2002:a05:6214:3187:b0:702:b105:5e76 with SMTP id 6a1803df08f44-702bcc8966emr46890756d6.42.1751551425685;
        Thu, 03 Jul 2025 07:03:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZcJLjkq6oGHWNDZQ905GWeoPSRIEVQ2ETpbHWFSoG+CbA==
Received: by 2002:a05:6214:2484:b0:6fa:fb65:95dc with SMTP id
 6a1803df08f44-7010b103733ls50938776d6.1.-pod-prod-01-us; Thu, 03 Jul 2025
 07:03:44 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVdJ7HKEr1jJqldGDIKqIc3D2G+P2hTMoBJpva5dApsFJOMq9vJvoj0oUmRF+nZ0BvgCXx0c3H1/V65Zg==@gapps.redhat.com
X-Received: by 2002:a05:620a:bcd:b0:7ce:c600:b5e1 with SMTP id af79cd13be357-7d5d1c52658mr450017785a.11.1751551424362;
        Thu, 03 Jul 2025 07:03:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751551424; cv=pass;
        d=google.com; s=arc-20240605;
        b=da2Ofw7u5nB24ZHJCwxhhHaZEkuiizyDE0SqNQ3CBqbLhMeIABQuO2UMNX8/Uilikk
         jB9WbftGE8HXoNRWYz2MV+Iprb9SIc6CvELZxwj8SX9+UOwwEQG2kUBaOBnDyEOWM0Nc
         ODfuR2UOj2IFO3tK13KH2KPXikqpC7evM8O1bXq/Tb01zxDj1VkaTcyDyuVqoOkCc2EA
         55Jj8MrkXvzS2eds6hUz1dgVGn/FKrD0+jU91Cw+ItR+vBGm19I0FlKYdVsWktBflLPH
         CoVll2wmeEWX+oSrXwkCphlwyKVNuq2+8SK7++FeSBycw/s8fNz1UD3gFNCgk03BHM5y
         5N2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=NjmlJOYzbPAxRxVNRFqFcqsIF5YznbDkA1lhtd+RS24=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=R5vKusNb5DPblMBCuUtCaSsIAs2U/DPuw+9TWcEb0izMDnvsWpOWr/vB2PpxpXUhs+
         c/3Ro4nEJuXh2Wd8RLeiGanLc9U9n0uiQ0X3wV5ac8SKTUwt5FuUx8F6zNlfkl8Umzw9
         4qjEt4IY2Gir3Yl6zXHHeQRdlYpyuuWML1P/fH5c+VLdBhXnY13elSUtAPaTWvZ4GM3+
         TZsXxpaq0wahD8LTkjsBdOJFpkJKfKsIxr8/xCgqk3Ob5oQD5nzAfa7M6xcPCIxf/rvY
         mEd8Y4AVX/M8w/ejGKe6RYkOtMe5dSyFRymKfbpH25E2a18tvf3DmwuCIlJzV0xKY1i4
         PLGg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=U6pcYyZN;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7d44319271bsi1561856185a.70.2025.07.03.07.03.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jul 2025 07:03:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-647-YRrJm8NxPHiz9pHKl4kicw-1; Thu,
 03 Jul 2025 10:03:42 -0400
X-MC-Unique: YRrJm8NxPHiz9pHKl4kicw-1
X-Mimecast-MFC-AGG-ID: YRrJm8NxPHiz9pHKl4kicw_1751551422
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C1DE4180028F
	for <blinux-list@gapps.redhat.com>; Thu,  3 Jul 2025 14:03:41 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BCFF319560B0; Thu,  3 Jul 2025 14:03:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.124])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BA3C31956087
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 14:03:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3C15B180028F
	for <blinux-list@redhat.com>; Thu,  3 Jul 2025 14:03:41 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1751551420;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=NjmlJOYzbPAxRxVNRFqFcqsIF5YznbDkA1lhtd+RS24=;
	b=CbMh9ZfpILMty3GHz2y4Ew+3Si6Efsrcl0J8gqqAAOtAb+kQFzv7xOPAat1ew6jT+SBJJH
	2jHFDcQQv/E6Gpcq4iL02P5PC7bOJa+kkXMOkfMDnG/e/Kr9GrYdjmKd/x27pVwfQNii1p
	K6JB4wKFwn6qVJlJ+xfWUPCGNfGUPFZnRTjDO2N9NwBDevn2DsnHmndqsN7V8tbQehBZ8B
	hD9K2+ftEItxxDP9BWXEcz+y3nhDZ3pd1voz8PNbP9k50K8qjvslq4UDXok1p3MW2CtpE2
	iy8BAGf2Xud1Fhat/0WiYV4LHcL4dTLys5C9VvQyDkEAHRpF6ZjYHSkGWh1VuA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1751551420; a=rsa-sha256;
	cv=none;
	b=XxPtJTU8P+9XD1JTTs/CJru8VOjQnCW3xqtzQyvSQ72mY/bdDE94i4wTz9xUzQL2sou+zx
	vmYZhgydVjotqy5JWkblebxSkl/ut/2zqScl2FK9RsliqpxFl+XUPdaG8wsjnxCJZXklUT
	Coj4RFKm7ycTnnnUnDoewcB6B533lMlWQdFCRU2Wde14y2wBNALWjxymQEk/OlbBIKWuB0
	cuM3OQdof2R7jvkLtHRhmXyCcW0piIFwJZHSBcTtySAvDhlSS+AU7enF2LCP4Mbv9+5kaw
	HqxcjV+sDb8nqLK4pm+8Y8FVI1Z1xH48efmBzGbWqsF+Qen0YzvM+hjxwolzRA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=U6pcYyZN;
	dmarc=pass (policy=quarantine) header.from=mail.com;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from mout.mail.com (mout.mail.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-584-lt53qlJmMp2MSz7ELCCjZw-1; Thu,
 03 Jul 2025 10:03:39 -0400
X-MC-Unique: lt53qlJmMp2MSz7ELCCjZw-1
X-Mimecast-MFC-AGG-ID: lt53qlJmMp2MSz7ELCCjZw_1751551418
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus004 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MVNwO-1uBzWB3fKQ-00XP7q
 for <blinux-list@redhat.com>; Thu, 03 Jul 2025 16:03:38 +0200
Message-ID: <ec59a2e8-ad0e-42a1-b9ec-b3345b4ba12f@mail.com>
Date: Thu, 3 Jul 2025 16:03:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Seeking Guidance on Switching to Linux for Personal Use
To: blinux-list@redhat.com
References: <04ad9922-c266-43ab-9474-9c896ca850cf@BlindHelp.net>
 <eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <eeef70bf-0bf1-4d4a-86c9-da034184c977@BlindHelp.net>
X-Provags-ID: V03:K1:XchEcMqg1s5XxLdyQRrd2GYmzPorYMU3Ij/3cmey+TIqU0vDWno
 uUxBYag6tipJK+7PLVhWB/ysbhu6u94zc1Tc7pm1VP1xsTuUpzP/Aqxc+iqwBGJeQ0YAi3m
 ErRrxLGG8aNmq6LD+qgV01sWxQMUj0YFApWmXcPSGG0AiY1lZm68f+RdC/Wmv0rPERBo2lh
 ZfQzimcu8+bEnlp8hE1Iw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5f34gtIIYas=;lmV6JZPxNM17EOt/W9KRoGhuJIs
 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
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: b1vfRrHGehtKcridh1WrFmOkUUu7ja6LgrKyLy41TDI_1751551418
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=U6pcYyZN;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 7/3/25 15:12, Abdullah Zubair wrote:
> I=E2=80=99ll be trying out MATE next to see which DE suits me better.
> Since I=E2=80=99m coming from a strong Windows background, I=E2=80=99d re=
ally appreciate=20
> some comparative keyboard shortcuts, especially for common tasks. For=20
> example:
> In Windows, I use:
>=20
>  =C2=A0* Alt + Tab to switch between open apps.
>  =C2=A0* Windows + M or Windows + D to go to desktop.
>  =C2=A0* Windows + E to open File Explorer.
>  =C2=A0* Windows + 1 / 2 / 3 to open pinned taskbar apps.
>=20
> Can you please help me understand how to do these same tasks in Linux=20
> (GNOME and MATE)?
> I=E2=80=99m especially looking for:
>=20

[1] is a starting point.

In other words, each "app" has specific shortcuts, just google and read=20
on! ;^)

HTH.

[1]=20
https://help.gnome.org/users/gnome-help/stable/shell-keyboard-shortcuts.htm=
l.en

--=20
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

