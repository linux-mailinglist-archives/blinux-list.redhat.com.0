Return-Path: <blinux-list+bncBCV3N6GOXMCRBAOEZGZAMGQEF36MNVI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id B2EB68CF1DC
	for <lists+blinux-list@lfdr.de>; Sun, 26 May 2024 00:11:15 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6ab910613cbsf29427136d6.0
        for <lists+blinux-list@lfdr.de>; Sat, 25 May 2024 15:11:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716675074; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zlr31a6MVtOyxYOhdZY8VC+YJEpMvYXhCIHPP64p2pvzsM0AoUnxE+0DgVNIl0doLI
         bZmyVxk708+n8+xv1AcyWnfTgB9xvfUxMh3K69GdcRzKpQzOqen65BTQO3FFu7nudDe/
         evsljpDKZDb9GhAFcg4ZwfYh8RchNS6IJ7dRoDOGwwuEQDXbO/QH/yqObA8NynvURZlL
         aNx5oAFuNk229cgaZyQOJuSLTuhmtYUbYIHP0/HDj9WJijB3ILfgKeONei6WinP9+mwD
         UahfUaNWzB5Y0cPzQTODUOjmCG7yhuHbIJZpLxr5lSclUaNXn00CcuszOzor5LWuMIFS
         PGag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :delivered-to;
        bh=/VYI/75Nq6mNLmaqH+kLNjwotLOsRpJuPqSONj6ktAo=;
        fh=r7NvtHFz6ecFDiGEuGULwMmycwninmcoJhCEu/MbvmU=;
        b=V+Bw6zr2Qi7XvGJlTxGIMxIYGDp/5zyTbGAJG6xp6ZNNT7kl6gWSsYHP/oObk6UB4H
         tlIX73wdfTPGyzH7owIdi8d8wmVCWOl7c/rku8XkenNK/YJbACpSEK/PZY450gktTvKi
         SpWYAoQocQr6WHeH2qkuNujYcwZ5CO07epfarbukJl7d2QUoqytqOpdmCmYPrM8DQe3M
         ryV2B2JAecI6AO0C2fdEq0vXdIaI/DgsE+6ifZ3GQB2tSlH8QKi8bNGBOvtCtN4NZslH
         SAyLO2lgDi0soqGQdtuyyleUeoPxxZyosFzZ5r3Tktx9g+bH6iIy8lXH+pDpokKqmh6O
         fwow==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716675074; x=1717279874;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:mime-version:user-agent:references:in-reply-to
         :date:to:from:subject:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/VYI/75Nq6mNLmaqH+kLNjwotLOsRpJuPqSONj6ktAo=;
        b=YblR/Ypq60hCn7B1B9JRsufknt4QJExZrdj+ltdMj48MdXRaB6PXZszOfk1htrWrq4
         FBadXCUG6pKIL9hrJyBnu1N7PG9piKvHKBZoq2gaPZk+xY4u5gdCKsJ5cIr8eVBf9k62
         LfdpXRdGiLX5xALWviBiWA7POGwMhGp+R2n6pZbtZMv+fQUoSHu0nWYawrG0EnKcYt+A
         kSFKONr/rY4MsAT4Q5bjtk6MYj/clUWOdJ6IMZ0GcIHL4NProqrM16dRE5eraW60xb4l
         9OLIAd3C+3xgv/eKooTwPxFEdepF4DSsXvAQjh17aV5L0TOkQzGKdaqs5HSrvIDVQXyC
         us+A==
X-Forwarded-Encrypted: i=2; AJvYcCV+oFZZXIboOaJbPheFb7rGve4gGFryJdvq0ib2qoQ3RTf2RWPT45BBv1yb+7Vw+Gn3sGgLz4tVtmeK8tperLtzLrj68eve+tpP
X-Gm-Message-State: AOJu0YzRe4c3Ek+EYCZKDVwlIiwiw5nKra0RNxOavarZklTlizaxpLvE
	gS9X+5sPjMONZ2yt55o4kbQO/OSZWO852D6cNHoOqIGql7Q6wdqSoMb1hW2gTU4=
X-Google-Smtp-Source: AGHT+IHCHgE/9sVhhiDM5iqOCjrTp4Skv+VXAHGOTxHPHqL9L0xgGUHdWiOrc1lCKD3y39PiRGa+pQ==
X-Received: by 2002:a05:6214:311e:b0:6ad:73bc:b8f0 with SMTP id 6a1803df08f44-6ad73bcba29mr19582326d6.20.1716675074326;
        Sat, 25 May 2024 15:11:14 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:e89:b0:6a0:9d11:3b1b with SMTP id
 6a1803df08f44-6ab9b491825ls20940836d6.2.-pod-prod-05-us; Sat, 25 May 2024
 15:11:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUWUh3rZGzEVtQ436rahMHa3MK4ZdqT37oeVlfSKiuxFtXsdImz7IjBhKUu1t46CV9HEssnGj5AlpkDmXLymP1eDqzahzt5Nrq8PbAq
X-Received: by 2002:a05:620a:60f2:b0:792:8dab:cc84 with SMTP id af79cd13be357-794ab099b2bmr598478085a.38.1716675073538;
        Sat, 25 May 2024 15:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716675073; cv=none;
        d=google.com; s=arc-20160816;
        b=EBO9ln7HY7MNJ/zAn3CmMihEPzr9NXJNVEHmhC7FYiIV8IqEgGRo5CMMwDtbOg2x1u
         2wY34JkZzcCXruVm12Qpp8Y2N6C/OqbusZ9yp+rbxSYuryhOpLCX3U4QLYrnZQMD0tpo
         51hW7Bo34vSaU2YmbkkFJqRs3d94fpCrRtKX/X33hTsUT0OeT50l7ruU+iXUeGMmjWAJ
         2bTJSN/JbZK0oUc11pLhDXvUSOrpx68+SSa4JKTiQhrHjGSLURMMFe3a8ptmWdMiECQY
         5GrZPui57xjGqEZfpJB93blN9anmCzjvOcXlkc6zKiKuxnj77e3TocFA+bd2kuKyuwsG
         rxjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:mime-version:user-agent
         :references:in-reply-to:date:to:from:subject:message-id:delivered-to;
        bh=KSJjWjNMnxeadFZ3HofZoWOznbS2xp0RZB5u+zKn4c0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=RVSm+cXZVbiBz8KK8dTncFjipn71aiThiYzdpm6MZCScq2oG61bF/pbdiay4FwaBzX
         zDqqvIjM94bevF778eZujq0LLx5xUWZeEcSIGxZ6aSOomP3JlnLdU8uLf+sQ56UpdBV6
         amffcZsuhNX0mz7WVmPkjkn7nXBzLdK5070kcG4Xqn9EaTIxF9IxN5AVcuD0p0j8sk4a
         azOjC1BB5or6pw59Q48Rsys/Ss7vg9knbFcaKFbsVwElVme96SJ48qvfmpq2x8UdMSB0
         Rq2ywDMOKfTW0Bb7+w1/td7rBV5DAzxBT/KoYC88OuFlV+jBbwJpJMh4AcPKGjY3E3sK
         JFog==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-794abd15ed0si453137085a.370.2024.05.25.15.11.13
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 15:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) client-ip=212.227.17.21;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-605-7o28Y_x5PLOIakPTtHL2mA-1; Sat,
 25 May 2024 18:11:11 -0400
X-MC-Unique: 7o28Y_x5PLOIakPTtHL2mA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CEB5C1955F1E
	for <blinux-list@gapps.redhat.com>; Sat, 25 May 2024 22:11:10 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id BEB511955D90; Sat, 25 May 2024 22:11:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BC4661955D8E
	for <blinux-list@redhat.com>; Sat, 25 May 2024 22:11:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 314F61955F2F
	for <blinux-list@redhat.com>; Sat, 25 May 2024 22:11:10 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-644-g_ajzl8EN1OerYBTAu6Elg-1; Sat,
 25 May 2024 18:11:07 -0400
X-MC-Unique: g_ajzl8EN1OerYBTAu6Elg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora.lan ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N2V0B-1seSm62rfz-013yhM for
 <blinux-list@redhat.com>; Sun, 26 May 2024 00:11:06 +0200
Message-ID: <0f0bd2cef7fc0a3b7d85db839efba6468be5b845.camel@gmx.it>
Subject: Re: RHVoice in Fedora 40
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 25 May 2024 18:11:04 -0400
In-Reply-To: <1efa8534ecbee9707fadc617c397697d5f23c006.camel@gmx.it>
References: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
	 <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
	 <1efa8534ecbee9707fadc617c397697d5f23c006.camel@gmx.it>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40)
MIME-Version: 1.0
X-Provags-ID: V03:K1:qGsrspKC/K7VeTHNq6cZbHsMRVrFdsVCI5vyHz7eFvFROb5Q+44
 iAYJQx20UHT9985ZlW81nIoOyShmIJFcgdFM+z5fXGzB4Ud1Hf8MIw+Z2HROCDpGkqHj+Lz
 Yt5ESmcbp/JJsSYcmCPMtmfMMcl7H+H+Jh98mBOMZ7oIMFHyp/Ok5OwZBRMkhUrPRBjFz93
 x7yMgM8tTB1TDYztO2ECw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:pmfEXPodup0=;TFfF6YUWfI5BBd9hyLHP91m+fU6
 mNhNbRsxKIT43cIG3fzMdvLJq4xXKPeVdm6NPaiZgmJ8BvEnicP+toEUbAyHMqHDydrbfct4e
 xMTNcxAmJOc252X5VLgYxNdFWnmqp5r/hGD9znKPv8lYQDeZaM8VaBvLNeNxSR86YoqTGnIm3
 n50ppQUqJyd3D7eTNQA70PjC+XgvV/TDPze1uVsJKmEVv6ucwExo2S0MJdC0qxYoTqlzdnEmt
 0S4baSU9sdt7QRZe3RDgGBESKrDjsEtkD2ChZ1aUAnstUnRZOSYbjfpbcqLPId+X1L+TG6QKh
 UdvwyKBnsMSZV75l+NzNjBdxhFU7rvHIcJugWFy0AgIbgrWO02OMMGILxusDmgnYal3QDXU7K
 veguQGqwLRpPY9zL1GV1I/h1fZThgn15RtRVLlewOJIT/jRjXbsrJ6LRFNygkc1L9JocMnyYb
 Jryapy6zV980KyOtQAxKweF3OekyevYL2rw9bhgZFH7rsdbfLsYgeaKwPcRt/y22rJBK1KysT
 ywVmY0kBhk5N2cgVaZqfEt1cR84dMHGde/y+ohDEA6Ka8s6zbbNU2YIaOVa6KiawXaIrEVqiH
 S12gSTbMcPKWtvAIg2JXGaWKfXRFiD9qE+q+fwLrFkAgniZhu2BhF2Qd0Yrelgayoygcprheg
 VdQHg9xSVF5I9m1u4wiL3zX9ZzIOfOEiemYQmYKUg6nwKsIYia0ex3kXmvufHApksZDla/kCC
 rR+MDdmOiZQAtf7N7hurUKeTaVe3il7wX0P6gkkT21c+I99SbgubfCxdsv3BHxzceH/qassvo
 RgFjkPTxUpYmwDNO+Q4enkPdRwlw9AGUMzDSm5emjOBUk7IxmF6O16gNOTO5SpZ8pS
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.21 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I have trouble building RHVoice here on Fedora 40. Well, no problems building or
installing it, but the problem comes when I try to run the echo test.

echo hello|RHVoice-test
RHVoice-test: error while loading shared library: libRHVoice_core.so.10: cannot
open shared object file: no such file or directory

I built and installed it with no errors, but it just refuses to run and
generates that error with exit code 127, as if the files do not exist. The build
instructions are very straightforward, just
git clone --recursive https://github.com/RHVoice/RHVoice.git
cd RHVoice
scons
sudo scons install
but the above error is the result. So obviously something is going wrong at some
point that I cannot see due to trying to avoid the terminal spew. I will have to
work more with this in a few days.
~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

