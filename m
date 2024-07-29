Return-Path: <blinux-list+bncBDYPVTOXSQEBBU5VT62QMGQE4FMTUTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 5710693FD22
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 20:09:25 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44ffb762db6sf52639761cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 11:09:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722276564; cv=pass;
        d=google.com; s=arc-20160816;
        b=0uLvVgpplE0HKb6GeYv08bDMWIt65FCp30y36lVeasWftz2Dq6rUxNbnRt05bnPLsp
         oALtDQRh7ofdvgzQ2221eC5eaTt56rqFk4AexcycEsnqAtOvXanbSkQHKvZmwloyvqKu
         iitW8gVyTeaC+NpXlXUdG9LbNfFePMb4g1wN7z7n6PPLMi3VFPZwS0PLPcJIMcEnpIOu
         OEbEMjnEnBYK5bpc5156EHqhuWBIkpP+2y+ex6RttbKgg9zbpe+pa2RIdWTTuwilo0Zc
         kG8bM4xtzSNM/M+jzgLJg6EcUsjRlIGQpDtkA/0yaYd75BIdDOs9xd71x+MhYAxWW9FU
         lxHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=vBwkXtxNnYLHpIoWbXPsxLjtPMTfVflqzc/o0p/jTeU=;
        fh=19jp4tmcqlRuGJvvY1ge/bA0V6U8kAWHoUnwJGJjFp8=;
        b=tShJy5G74lDeEC4Hq0UhI6glhmhTTEfkI/Fv+XYBpNd57+lsy9mcjSlPwnmRmLbCw1
         nMZTcTWRCwnMaIbtAhZkBmGQWybnE+MXzyFL5ArHiKkbDsNmgwtNbQ8T5ICsyDWJ7oEn
         kLqM2ZSOzp7mj4iAZfBspaTMw2HK0zQp7NpEHyX1Dv7UMdbDd1XTCCJLAvNl467bAQcx
         yIXiCLhk4FyRPGv0fpdxDy8GG3xARnm6n8wee/wxp/AUSAZBdKD5PoiWARcTC/d/zqs1
         CaDCdMmDSotPgO1QLn9XvS3/eem8HKmcd1nsNZZqt4VMvDfotkvYl/k6Oa7jiKxLhhoV
         tgcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722276564; x=1722881364;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vBwkXtxNnYLHpIoWbXPsxLjtPMTfVflqzc/o0p/jTeU=;
        b=LSUFpxEMfI4NlZhlBpea4PsmNA08kiqSEHijpk7h4Upms9Mt5iG0I/GdjniNcWQHBw
         3vtJSI6117fS/jKBVDnSgKuR0lZLe29hYp/UeGfS2RLL9jkseOlhrrC2qkrxULV7H9Hl
         9omLwbgkS1SUdYBAPbpeKsSiqjYPepRmaZu+P3t4gIrmg7OpkSzpKRNvSlHlrIOX2YlG
         XUYEkDGaWjjFrt/0b3MkeP14xjIZKQTB6Nj4OrUQEUzLAHbH8O/7e9t5gNEYHZKQZ91G
         iGcjZ4pXaM1c9P+bMICVyKI7hfwQjX/m56YjPDSNcSiX77o1CU3y4l+/X2NKOPsI3XyX
         Z5qA==
X-Forwarded-Encrypted: i=2; AJvYcCUHWA5BV597i9gKMqndBrC7H40g7kaB7eULUsTwpPJTpDWgvMKzOsKuy4Dt3HZBKAPXvcR1qVN7f3Gid8jqRMC7IVsYn0NQdRVN
X-Gm-Message-State: AOJu0Yyp5m2T8wnyvbxA1MC2YIiHec3idajWmkcrDms3WsHkp5PZsWJZ
	dVdcts8T0d8Igb/sBPuc53zkCezbs8nPLAEMtdgb2aHIiUnL1H7sF4srIR8nMheWGwWoOY0=
X-Google-Smtp-Source: AGHT+IG25UaVeGIEzYG9L7P9KmOObpv1mqzRkn5xZOOoEPyBAk/AQl3CpB1/Hnu/JHVuu7idWRWhkA==
X-Received: by 2002:ac8:7d10:0:b0:444:9085:58f1 with SMTP id d75a77b69052e-45004d70372mr111634241cf.2.1722276563768;
        Mon, 29 Jul 2024 11:09:23 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a11:0:b0:440:a6ed:f91e with SMTP id d75a77b69052e-44fe31899b1ls92320381cf.1.-pod-prod-04-us;
 Mon, 29 Jul 2024 11:09:23 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUFxDXGrJ4HTp9RkmPCrguEiuOjvcii1atvGhVV3feDDPJuEQ1RbqWE3Jbni5roUSJgPx2QS4jqnoHYTqcv55ij8jPkGIxoCwe1JTKY
X-Received: by 2002:a05:622a:1b9f:b0:44f:ea67:1012 with SMTP id d75a77b69052e-45004d71530mr125816001cf.13.1722276563014;
        Mon, 29 Jul 2024 11:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722276563; cv=none;
        d=google.com; s=arc-20160816;
        b=gbqwAbymH9CZFOQKvuzLX9/17Vluj0A/ceM8hecrg4yEhHj9xi0XOAfRK7y6RNsQ7o
         ROhrxeFkdLYdO8nR5NIVwtbIvfq8fowmQo3+ygCIus1fyVxyn9i+L4oFIb1dC0sols2A
         iZVTNtth3e6O6VEISqfCpQwAEVrZnWa/a2AxUz1HgipuBBP6ACvzFrMOnx6B8X5p7yIK
         MiKrNNKO25y117E6KxvmAoEuVUt0OJZ15DY9az5lEV2OdCnixtJw3jrDYjdgqErYziT9
         2ewd2zRTmbSI3JRfVN/0WlMqaguBPGrcT6YKgYIWEurpliV4z1hqRVQksRRMpQiCwCLv
         RW7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=HRsN1Rn01QYBj4E0a+oOHKlpxYYnrYC3gJLntxsJhdg=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=Oh6vWse8W6o4wARDaiVmTNwPcgS7Dif226Lp2cHYAAQeXZYEf2JtQMx9hlEYclGdSE
         0moeR39qFf2iyirsttbt469vzQaHezCo5n75cw4ycL9EON9UviXDK9t1TzUR0Z6+hGda
         RT7VEG+ZN1DLf2U0uF95U/cCZ2x+4OgJqk2lNn9pQno1qTRjihc7DTDmkRXmmk1HtXzm
         RCgi8vUPaIqU4ZYrXOscaMNBeBLM/QQimAkp74bsgONZ/daxs5VzfBj+DAUOh37BAsxv
         u20EiQd1lXmd6AcSCxZVasMRTzKw7G1iQEPCo01I4ZQ38g1BtS7NNP1JiWObqMgN9/ut
         TXyA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe8137ec6si109240651cf.131.2024.07.29.11.09.22
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 11:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-487-r0bThO0JNjKn4d2XfPiBxg-1; Mon,
 29 Jul 2024 14:09:21 -0400
X-MC-Unique: r0bThO0JNjKn4d2XfPiBxg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9DBCE19560AD
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 18:09:20 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8F5F61955D45; Mon, 29 Jul 2024 18:09:20 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8CB1B1955D42
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:09:20 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 25FFD1956080
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 18:09:20 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-246-XVi7GBN2PyK1HK0GRcAoVQ-1; Mon,
 29 Jul 2024 14:09:14 -0400
X-MC-Unique: XVi7GBN2PyK1HK0GRcAoVQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WXmZy0Tghzlsv;
	Mon, 29 Jul 2024 14:09:14 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WXmZy0CH1zcbc; Mon, 29 Jul 2024 14:09:14 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WXmZy07RKzcbC;
	Mon, 29 Jul 2024 14:09:14 -0400 (EDT)
Date: Mon, 29 Jul 2024 14:09:13 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: WiFi on trisquel 11
In-Reply-To: <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
Message-ID: <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com> <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com> <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
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

No, I don't use usb adapters for the internet.  You might try temu, prices
on that site may be less than amazon which may give you room to experiment
with different adapters.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 29 Jul 2024, rodney jackson wrote:

> Jude,
>
> If=C2=A0 Trisquel does not have it, do you know of a good and dependable =
usb
> adapter.
>
> i found a cheap one on amazon but on both my trisquel systems it does not
> always work. sometimes when i boot up trisquel sometimes does not see the
> adapter and sometimes it does.
>
> Rodney
>
>
> On 7/29/2024 12:56, Jude DaShiell wrote:
> > You may need to install the driver for that wi-fi card if it's availabl=
e
> > on trisquel11.  To research this, lshw or hwdata packages may tell you
> > which driver is needed.
> > The driver that is needed may not be available on trisquel11.
> >
> >
> > --
> >   Jude <jdashiel at panix dot com>
> >   "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo.
> >   Please use in that order."
> >   Ed Howdershelt 1940.
> >
> > On Mon, 29 Jul 2024, rodney jackson wrote:
> >
> >> i have installed Trisquel 11 on a laptop and it works pretty well, my
> >> problem
> >> is it is not finding the built in wifi card. when i have windows 10 on=
 this
> >> machine the wifi card was working great. how do i get trisquel to find=
 this
> >> wifi card. This is a Dell laptop. here is the info on this system: mod=
el
> >> number: PP28L
> >> reference number: 07147
> >> dell LBL P/N: NM508 A01 APCC
> >> service tag: GYWXLJ1
> >>
> >> XPS M1530
> >>
> >> i know i can use a USB adapter but was hoping to=C2=A0 get the interna=
l wifi to
> >> work.
> >>
> >> if this is not an option what brand is the best for Linux?
> >>
> >> The ethernet works but i do not want to keep it plugged in all the tim=
e.
> >>
> >> any info would be appreciated
> >>
> >> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

