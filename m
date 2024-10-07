Return-Path: <blinux-list+bncBD6J3OOK2IIBBHX6R64AMGQEQ5O6DTY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B5499313E
	for <lists+blinux-list@lfdr.de>; Mon,  7 Oct 2024 17:32:48 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-45849120283sf74677671cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 07 Oct 2024 08:32:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728315167; cv=pass;
        d=google.com; s=arc-20240605;
        b=NroXTZTHG05WPS7kt8a65kkIudZBfrRaX9M//MWWA3dY/07dicAXTpdATQO95qVhou
         lN0ecfDWWcNu+BP8gQmKhHX/VHH9JPHfxj4HpnhKJRLksiEEZ7svyGItj83NUczqs0WW
         d1RkxfDy5NA3Jm+pkMIZdzbMtmdQUh3PKusy3z7x9IenM0tpeW6J6a+yeh+h3IfnxFCL
         j7Cj2YqEddUVqj+3hfkZT/FfEodfD15guEkvGqJ7UMbQnCXcBTpBQcIOqVGxNoMRrM6v
         4wHaeiM+CLbjzgXaeo06CmlwMRpymaEpJOD91dWZLCxBDYxV2o1ZLpy1Modf7g+Grtoq
         vTlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=vNVQ1wgcUC10WOP+9Chy6Wc0uw7jBcuPJ8HyWobPnsQ=;
        fh=S4i5AcX8jtpDhyNZP8eW/sUtg918B7/Bg7wND3mwm80=;
        b=QTdTKtAJnzgXpmwHiAJJwHccgwJa6aNBYA9PIsJZd0ameXGF4wHLj/rpCc+UCX2RRl
         uwyIxDyjmQO4cDdUM5DetW4akWG44Rztjt6Jeubn+0GwZiRTp6EEYmDDk5RSDozhJ4ey
         djq6q5IDXp/VmqPsyYYq8R8CnxkWNZYT+NKs2qykRBfXHoj00yG/+f6PgP7wT6M5abD0
         hrWAHWj2GfxoHwiN1xDNjjefNEtHZ6+RS5RC3syE8OwFNnZh9+uSrc2nnemWjFlTiCvx
         yq8pIO5ARSN/A5tvALem+Pmipi1wc9A3QSnfDaLsCvYGasPL2Z0tYuJhudzHQpsqBBQ0
         pUuA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728315167; x=1728919967;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vNVQ1wgcUC10WOP+9Chy6Wc0uw7jBcuPJ8HyWobPnsQ=;
        b=RlEzJqN1glDffmr2M5M+TWBuvjzQg1xGbpyMp7o18ibbwI6QkrKkgYDOItcL0cq2uc
         Nf/3BaujNPucl76+kP6TcZy7nIpPk0zqGfyCzlnLnkTai3QorHlHopUbf8MYaZQEZzWt
         z7MRrtsVYtu/VH8eYaihq6OyRN1xC8v+8McWTHOEMM2Oyw/5kLBqG8mZrEKhquobGL5I
         IjbPhfFeDnzscDKcUaAfe3P3Va4SA98jwHYeXLOF7FCm/vqqS0MIbIQ2QR58iIlG+tFH
         Idk41suie8qrWQaKrxidqGTJ6Ap/Z22yB9Bkkabiv+Gs0LjDtO4RDbA2eIuuxhYN3UWn
         Psaw==
X-Forwarded-Encrypted: i=2; AJvYcCX+V2zBKaZlxse/+6sIvCkNtLx6f9Mn78NA4yzWzlPi/Y1Xy32byc/QDJWGpvUTxQmltlERCg==@lfdr.de
X-Gm-Message-State: AOJu0YxfDOncnajcHYU1cidARrXO5SJZv7u3lpyeNNfGQoGH6P77G/GQ
	BcuD8lpLrAcCEwnjfdEB6t4nuHtZJ8UAt85bJge/qJKnEp5F6JqJCIyX58CJ6lI=
X-Google-Smtp-Source: AGHT+IG0/3i3fhmAG3l60vgLO8Gq7GCXKnsdRV8oivNMZLG+ys7QueViUqtT8ds9HUjhpnFibOms0Q==
X-Received: by 2002:ac8:58cd:0:b0:45d:9359:e137 with SMTP id d75a77b69052e-45d9ba4869dmr200142861cf.15.1728315166870;
        Mon, 07 Oct 2024 08:32:46 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7dc7:0:b0:458:2bcd:ed1 with SMTP id d75a77b69052e-45d8d33128bls79174281cf.0.-pod-prod-05-us;
 Mon, 07 Oct 2024 08:32:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU5pTYab513qpxESFIxTnF9miFDoIcQi2vpfMfc1m0MRY/Mo7Wf8ljcWZoASRj7sJv4VKhdWh1fD7VGvw==@gapps.redhat.com
X-Received: by 2002:a05:622a:2cc:b0:458:232f:87e5 with SMTP id d75a77b69052e-45d9ba2eb68mr170980041cf.10.1728315165734;
        Mon, 07 Oct 2024 08:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728315165; cv=none;
        d=google.com; s=arc-20240605;
        b=kkhD0MYDUrsimFopBCWpk6IF2deQx1FLtGvvqXm21wao1K5N4jIzYwasU7LOaSgC1N
         svi2YyBQMwXCmKwnaAz/SwEc5XYHKYByt3r+2T5b0YMT2ch1sTLqP2QLV/Gh+TZmNPiW
         tMJSo7ShOaMQ+Jdd1dabtGQ3fvr4zFccGYRWdDp8bsZXZ5oAecHTlvy9PX8fFzm6l2eh
         jWOTkXjmu+eWiEkc38vK4P/8n6AYNw8RM3VoLOqEXjkz73yvO3oUh440DtFpGG2duJhT
         2NjNL0cM/jqPmgq27vD7BWZ35G2EqUKm+oLDvBA37mou8ccJdn6Ss8uwUQhin+6faC6Z
         8J0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=GJYsHpRB56G5BSpOYRUzkxd2UE6Kq6ZO+pANvXAaaAk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=ZPltrt4xP74wFQ+v3gcHZ1zbofACkaug+3mijrT7NJFZoey4lh+aEtvdXm8S90vKjn
         EnfLQceSY4Puas2ODtTghRQbvI4O4v1rYixZney/kJ5pZSVCexugrFUW8XcS/LaMHAxc
         QT1arh7TKX4vMXnuthkt4gvePPpZ2ahCEJaZQQx1h3SqEM9zEOFWPDtw5yXI4Ad3psHw
         nWDohmKnhQxIOLJFmEqBMvQxUnmm5TODZ2DCEGlc/1BWHL+I8LdxbA67sLkUO3/pmcFM
         LupQRX1ReewLUp3Le+ZuXnngqKAR3iimjzVodfIYWnii4UEkLHmByDlWB5+Yz/MTauX1
         ZKyg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45da769977bsi62924581cf.561.2024.10.07.08.32.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 08:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-460-mjqg85ZMP7iWfgVgtLR4EQ-1; Mon,
 07 Oct 2024 11:32:44 -0400
X-MC-Unique: mjqg85ZMP7iWfgVgtLR4EQ-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6A1C819560BF
	for <blinux-list@gapps.redhat.com>; Mon,  7 Oct 2024 15:32:43 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 64C121955E94; Mon,  7 Oct 2024 15:32:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 61EC019560A3
	for <blinux-list@redhat.com>; Mon,  7 Oct 2024 15:32:42 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2E19B192DE12
	for <blinux-list@redhat.com>; Mon,  7 Oct 2024 15:32:42 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-580-zS-vKquROFmzw1vRtup6aw-1; Mon,
 07 Oct 2024 11:32:40 -0400
X-MC-Unique: zS-vKquROFmzw1vRtup6aw-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1N17UQ-1typRs2CiY-016YUq for
 <blinux-list@redhat.com>; Mon, 07 Oct 2024 17:32:38 +0200
Message-ID: <20241007.153238.484.101@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Drives dropping offline
Date: Mon, 07 Oct 2024 10:32:38 -0500
MIME-Version: 1.0
In-Reply-To: <20240923143934.GD8152@nntp.AegisInfoSys.com>
References: <20240923.133713.763.40@[192.168.1.100]>
	<20240923143934.GD8152@nntp.AegisInfoSys.com>
User-Agent: POP Peeper Pro (5.5.3.0)
X-Provags-ID: V03:K1:Her1PRwdGBtht6Cp5mLuxV3EaqQ7KA5w6kvgQIGvf8Kzel8DMva
 fRnt2KVjhGjme67s8hR8ORnVml0h58U0BB6E+OTW8gCOPWmrEXPfPwR4Bsp7R7fkJgyWeI4
 AvkJU3ZVGqkxCDm78cEuCTaDXfzUCNkoUPXPHWqEv/RnKPX90IVb6AiWXwAP2VTDo2W5pHK
 ip+RtLZNoAbWQZP1KOdkw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:Rp2Q8McgJ7Q=;jAeiCKZ0TajvqRJiUP5cXiHXPRV
 IfXrNg6stHgOCkQhs/Cps9Y0PAKAwLP5cR8/kMmE0vBMb3THaLN2KB4xLglb+cOT5f52g4mwM
 3BMNR2AAINw5DjIKbK8bRyNKDvQD4t9vnyXu9dATemn6moypU9mDyDqpKNXPMbn5HcE+NiVz0
 YjMQJkz7RvlJTpqIIK38PBLWQrM2d/od6bsDSck5FcZz5paEBwWcWVSoIGVLBmHlHnUw0eMoY
 lLqpe4FzL2E4wKlaYzY2P8NJ6eiCHYgjKNwnbLhC3nOIGbP6AuLWqR7LjEx69bupWkb9OglYV
 BTRaxEwDGKW6wUnILb5mBtgtqdSEPJsHsOBEFTWJMcAqTUeLhnpxyWXJLM6LP9vJ5FqRh8YbY
 ycgWJRUUCNhTfzvoGJErkoCrnBw3sDGEcrmCT2sZdRknYpdLDRCO/0bUmKa6xY24hHfXhETbo
 JCGnNtPS1HrgJGgjYO/45UROibBshor+E34ugQlqVV2cBUnT7u0ObJX2pz9bO6kz6oQ4w9TYB
 RJoYMNsoHnEqD9mPslh7jY/EeI9u5GzwfsmDvEtPD8tvDjcs7v9KCrGyhhKsj+ufNzqKpVcjc
 7WVOs0EuRSD1HKZZxjdezCRTzc9nmquiD53dINWm+zOBDrxZGclGrDXEHSNxPzRy+ilRgTIBu
 3mb9gQsEYBNObPsj3qVjncMcMdydsTXNuW5J4Fln3vCc0ZcBBqEnjT9Fv3jo+lcTCvyoe8ygP
 CgjUanCBR2AGQ6FndoppF9zoT0hC1m9Ls+sHLMMwzU7SDT8jN2wQUrocu8gPZX0I9CzusQxEF
 516jbTMZr1WnTXHhK93WunEEu7EMUl2hMh6Us7H8FTWuI=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.22 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

No, they are all singletons.
Since I wrote the OP, the problem seems to have resolved itself. Upon the l=
ast archlinux update, no drives have been dropping offline. Really odd.

----- Original Message -----
From: Henry Yen <blinux-mail@AegisInfoSys.com>
To: Rob Hudson <rob_hudson_3182@gmx.com>
Cc: blinux-list@redhat.com
Date: Mon, 23 Sep 2024 10:39:42 -0400
Subject: Re: Drives dropping offline

> On Mon, Sep 23, 2024 at 08:37:13AM -0500, 'Rob Hudson' via blinux-list@re=
dhat.com wrote:
> > I run a small data server with about 9 drives attached. Every so often,=
 one of them will just ... drop offline, with no warning. I can remount it,=
 run fsck, and it recovers the journal and mounts again, until the next tim=
e. There's no pattern to it either.
>
> Are these drives running in a RAID configuration?
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

