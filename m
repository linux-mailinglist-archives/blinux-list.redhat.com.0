Return-Path: <blinux-list+bncBDM4LSNO5MHBBY5AYDDAMGQEIEDS7AY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id E46A4B8DCEF
	for <lists+blinux-list@lfdr.de>; Sun, 21 Sep 2025 16:49:09 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-773e990bda0sf71143786d6.3
        for <lists+blinux-list@lfdr.de>; Sun, 21 Sep 2025 07:49:09 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1758466148; cv=pass;
        d=google.com; s=arc-20240605;
        b=cudSPgfIDcWTRIlaDisiWNdA4IR8986QjsPmP/yUTf1fpjb6blForWOktxFuu++NeK
         VmXq6fFEXamiIcWUHtb2BJY6gtSoCusg8UWQOCmt67QDNqTPv4ks8cP2UESlssp5Di6B
         /7nuOxm1YJaAU5dlnA7y4aI6wjwFjc/tuZXaxcdVG5hS9VFM/Hhvuv1CewWhZh0oS+ZX
         fLVrtjAzleDh8nRnIERcZnZMJ8pNu7spIIphNbOcbS/1Wxy8wkhQJUuhksjlQw0pk9Lx
         PWot4Mm098aXLYdzij4hUDWGmGVXnsuHNyMqfxSMnZrCnPSr4suNOToIxEEpm1gKIPfC
         gcTQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=KT/S+idDLlwdTxmPDY7SB3sGlxZvK773GWrH9LXg9dg=;
        fh=IG4ne0LPFeksZTkmWstEi4O3z5sp3FF82DjlLAuAMdA=;
        b=AvGK2uWcH/pITw93Ep+PB2cNvTJo1Jtzsuqf0mDXVhtrea5NyqAIL1jSSUuMTijrtA
         aBoLsUC5RgaHNANiNd1F97nFVxc2ZbCvLSJAg1Z+ncJuUHD+e9q3Cu2IvvF6/2M+Zmu7
         NXDuP7y+edwC22GfRTaKFl9c5G9QBGjfLX8KiD2Jxo8TOBNuh1bUV2/yTuXqpkshpmPL
         JJAlje7X9ImGZhfS9kU+UxummVW3W5kTPeJSO5d2c13hUCvOt0NGOxMZ+EcwuChpmc7Y
         3/kD23/GH3tP3fHZR2//12bp2Eoh+dYGXT8TZo2/V5Vc0ZJHnC6fWtiFeWizXkgc7Fq4
         mARg==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=iVXUcufC;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758466148; x=1759070948;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KT/S+idDLlwdTxmPDY7SB3sGlxZvK773GWrH9LXg9dg=;
        b=Pmf5oPFy1g66K+vixeIcWxrDGb9VShTs7c2vQ2gWfMBJLulqFDIuqOl/CqlFbnCxNk
         dxfe9bJ8uk3SbOMQCfDStVXzAob++7qI0n+CHfIRHmCdd9GpQqC7Q//O8y+PHnTwJMzw
         x7zzyz+2jH+vHYCZlzB3RcjS/pUaGfDVUV4yxh+uFkKT4MrYIJ7DCEGvnJHBffXGsDsC
         fUldXrKs31SoETQ6ygP0RE3iuqvDaPO/ySgFvGnMzifZM3DlWwjbp6RkKnHQ08b9cp2t
         7wfpls6TXkQ6y6suWRTAFR86j8UcUPalvZB7mUb4vuL3ifuHuusfghJ/id8v6vLyzKVW
         oXiQ==
X-Forwarded-Encrypted: i=3; AJvYcCWE5uTZ5bhjFVFxh1KTXAuyWMd6/coRmQ19ifPcyP/RkS3O+BxvcWqzFTdGWiclFrijblHPZw==@lfdr.de
X-Gm-Message-State: AOJu0YxmCY26Jg5cHWR5gnpzSMfLpc9NMbL6uEZ2lrA+tT1g3XEIIDYK
	COiiMxVRtx8cjxFjhehiS1AWVIHgqrlZ0XXX6CE+IGdcde+wt85kI0LWNnYNcVyc+7U=
X-Google-Smtp-Source: AGHT+IFMpXdn0cUEVDku09DXZ9wstyFNXdmwJV/mBE58+4Nypjo54yd43ypFxSxG0ZPMuTqluCOneA==
X-Received: by 2002:ad4:5f08:0:b0:773:7118:306f with SMTP id 6a1803df08f44-799197eea95mr116671896d6.39.1758466147964;
        Sun, 21 Sep 2025 07:49:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=ARHlJd4kXwj1FExkISdyO9wqbIE4N5dmyNQ6uM6VKB1nBRjF6Q==
Received: by 2002:ad4:4eae:0:b0:779:d180:7e3f with SMTP id 6a1803df08f44-7934bcaa904ls32586306d6.1.-pod-prod-01-us;
 Sun, 21 Sep 2025 07:49:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXfoSNTp8i7ZP4A1n4P2Xpn4avOtZ77pKxqheem9iKWmn5h4c6uCKy7I0wik2D78u4gpqoRInKEOyiQGQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:20cd:b0:795:ec5b:2957 with SMTP id 6a1803df08f44-7990fe38093mr139126636d6.10.1758466146746;
        Sun, 21 Sep 2025 07:49:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1758466146; cv=pass;
        d=google.com; s=arc-20240605;
        b=K8k+fR6YI3LD3QJ8Je+l1na0dCjtVzwbEc973y3VskhNvPuTPtf/7+UkjX9fJACoWx
         9GXFFjWma0fWXIOpeAjuxEgUIvNgW6j8NfxAZaXN4USu9L5v5oUv/izcr1CzidUcccAJ
         e3hR81Fctn7g4qFt0UHuHCho10DF4ejU5r4XYdN4P0cd0y5c3iFdfuBGh45MV35DCWeH
         eXtyCIVCqEeGjetaYGYeH3ehIuC46j5et1IDXPBZenns7WcqLsB9pdlErX4bwfvDydbP
         CcRM6GdpdmQfBOJ2xE2tcZSogaxkgib6SHxbItQwCBX8elVkKgzmqamTCpXTLQfbuRHs
         dzgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=uk55B09GdRjK5m0BdyehMjzLowSnuVaFcR1IIIRJpXg=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=XyMFsmmdUFSsXqYHRKuYGp6mL3+LT+56B6bX3eOK2/bnxqOQByjNePpqfgkvc/vZzV
         fB46hqr7K/Eqa6x5I8wfHBMXt/kBmy9eKhy/1blntZIvsaxnYm4Ch3pBy1LEA3iIMmE+
         CVrf3WZ+i2kx84rR2IdwJvBIADXQtEQtnUIDBoGMddKeSUVEAgjwGa7RcXSd2fiYCVNb
         9L3/UhUYX1YuSihFGgO+7Y+E0vtbze4YkVTbaHrZ6iSCprmKpY/1lKjAn8ezEVgrbELA
         W1VZ5pLzeowLeqNaKBa5lpPxwo7XkN61R7G1tw6r+JLgh8N4WJEoL19MGg6gb2tZAsaH
         WXJA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@mail.com header.s=s1089575 header.b=iVXUcufC;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com dmarc=pass fromdomain=mail.com);
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-79355ddc9acsi33430536d6.818.2025.09.21.07.49.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 07:49:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-688-kyJcfUOSO4CnX1M2-pv84w-1; Sun,
 21 Sep 2025 10:49:04 -0400
X-MC-Unique: kyJcfUOSO4CnX1M2-pv84w-1
X-Mimecast-MFC-AGG-ID: kyJcfUOSO4CnX1M2-pv84w_1758466143
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A97181800365
	for <blinux-list@gapps.redhat.com>; Sun, 21 Sep 2025 14:49:03 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id A4B2F1956045; Sun, 21 Sep 2025 14:49:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A196619560BB
	for <blinux-list@redhat.com>; Sun, 21 Sep 2025 14:49:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1B72D1956055
	for <blinux-list@redhat.com>; Sun, 21 Sep 2025 14:49:03 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1758466142;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=uk55B09GdRjK5m0BdyehMjzLowSnuVaFcR1IIIRJpXg=;
	b=oh6N/nQcYnehHwBXktw3y23rKrSF0g/H74lCO9GmTjVnWjoubPqOy5dRxjktbOaQMgqGrG
	8Q2Bx+3cbQFtegMNZHusXjpwBTnUVwQ7A+R+nDkToC3bQUjXSMxRUD4tS60cA+OX/wkc0O
	18tt7ICwD9J6aTr1ZoqAMDk9d5fBDrmw2SppCX2eJYlRbOE7xPf8EjizhepcsD4Jj0EqO9
	bGmG5qPphqvSVUFbS9bRqOhIMXbiu0bioUGhSysbzK/YEAKoouizyVwqhTDZYIuCSFCQtf
	lygOdNyweGHR5+ElxGIAxC8xPQ4ZTJKNgc+27U78vB9jhpZZMY7BzKww+hMRcQ==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1758466142; a=rsa-sha256;
	cv=none;
	b=dC8/M7HaGZVajjvuHTIrSt2w6614DHR4dftzHVd+pXJmzxhShYf0oMr4eSAVesuxz2KrBw
	fvzs0W0Pi5qpYGpKN5/Hz+k5e78N8YAFnK1YtQSLgtu2cdlzRm9S9LXsoV4nDPhxAvrVOY
	1nWCA88U11+6DXUwFgWSdBhQsKh1PY0Ti7YXL2qKHvnVbOpjaxnPsZ034mx/8smx9JXsnq
	NEA2PNL4B2e2bxRIBgXOI5Yw+Q/Uf0SlLkjejdCeiQUQQWwOhsaf2nR5PT7NLhrLLo2ffT
	p0tJw57gCETBESFt5UMII1xtGXUVfAjeXmofVDD4+ZFsXUWqtl03hRem98Saqg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=mail.com header.s=s1089575 header.b=iVXUcufC;
	dmarc=pass (policy=quarantine) header.from=mail.com;
	spf=pass (relay.mimecast.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from mout.mail.com (mout.mail.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-79-k6z7f_O0Om-cT-HjVJMmjA-1; Sun,
 21 Sep 2025 10:49:00 -0400
X-MC-Unique: k6z7f_O0Om-cT-HjVJMmjA-1
X-Mimecast-MFC-AGG-ID: k6z7f_O0Om-cT-HjVJMmjA_1758466139
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([193.74.50.9]) by smtp.mail.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0M55Oi-1u9Cm80FNG-00qtb8
 for <blinux-list@redhat.com>; Sun, 21 Sep 2025 16:43:58 +0200
Message-ID: <ca86575d-ec21-4c0f-a4de-9b9a34d03294@mail.com>
Date: Sun, 21 Sep 2025 16:43:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Any Debian Testing users here?
To: blinux-list@redhat.com
References: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
From: "'john doe' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <fb6ed94a-668d-47ac-a86d-190ece52d55f@protonmail.com>
X-Provags-ID: V03:K1:GVLwyt3j5vLm2nWxHR6SPc8UWw5hHfgPu4vJlZOHBF0HqyM5PIc
 H9DKSSTgeMvFdw7J+HafLiJ4/cAHa+9stSbxN7P39pwNQEtuH8jITdEZOJIsD6qj8nwyafj
 OAOl6qZEueVkPQgDuW7OXZzbBqZ5BOp+5RlEf/v6hJySy9C8da6iGZZMieWK1Qu8Z5VHLQS
 JjtEdRwMlSDiGdGycYSuA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:cTSYwklclvM=;asoXXKZqR2Tp20HqDQKHjGg7IHH
 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
 4USj72UdjUyTTPoylrSxx5T0gqFM
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ASlOdVuowDBEAkCUhI-ChZc-wC8ePZIIhHhzgKNkuio_1758466139
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@mail.com header.s=s1089575 header.b=iVXUcufC;
       arc=pass (i=1 spf=pass spfdomain=mail.com dkim=pass dkdomain=mail.com
 dmarc=pass fromdomain=mail.com);       spf=pass (google.com: domain of
 johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 9/21/25 13:21, 'Rastislav Kish' via blinux-list@redhat.com wrote:
> Hello list,
>=20
> this is a question aimed at the users of Debian Testing, what has been yo=
ur experience with this system?

I'm on unstable..

>=20
> The Windows 10 EOL is near, so I=E2=80=99m thinking of propagating Linux =
to people who can=E2=80=99t upgrade their machines. But I=E2=80=99m wonderi=
ng what would be these days the ideal distribution to recommend.
>=20
> I would absolutely recommend slowroll to any non-technical user, but argu=
ably Debian has much more online content available, like openSUSe is not a =
small community either, there=E2=80=99s actually plenty of resources on it =
too, but sometimes when checking instructions on how to install say a progr=
am which is not available as a Flatpak or a part of the openSUSE repos, one=
 needs to translate the instructions for other distros to their environment=
. What=E2=80=99s something a user new to Linux may find complicated.
>=20

Weell, I'd say Debian Stable!

> What=E2=80=99s your experience with Debian Testing? Would you recommend i=
t to someone completely new to Linux?
>=20

What audience are you talking about (sighted, legally blind or=20
inbetween...)?

I'd say it's more about the DE and not realy about the distro in it self.

If I'm correct XFCE would be more Windows like but maybe less accessible=20
on the other hand Debian uses Mate for better accessibility but you need=20
the command line at some point.

On Debian stable, if you realy need something more up-to-date you can=20
always use backports.

HTH.


P.S.

On linux you can choose, give them that freedom!

--=20
John Doe

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

