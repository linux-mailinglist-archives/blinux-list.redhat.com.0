Return-Path: <blinux-list+bncBDYPVTOXSQEBBN5CZG2QMGQELPBQKLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A909495A4
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2024 18:37:12 +0200 (CEST)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-66619cb2d3esf19984677b3.2
        for <lists+blinux-list@lfdr.de>; Tue, 06 Aug 2024 09:37:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722962232; cv=pass;
        d=google.com; s=arc-20160816;
        b=tMVVbrBbmhO3rOVRcaRfksW7Yx/9wW8yusKNG31KiKY6VV5hr7rN4Cp6WbXWkFHgM8
         2QtWXbwIEtvw12gShUHWVcolllrmCTIXnIBUaMmetHTbIXhbiOwsVsMcO8Qx2PRYU4wE
         2Zsw2vxrhP6sxWImcze1LU+4ZYF5cbsaAjKORgiTOGDIupkefdEg9F9uBvHsrJShTNLg
         Rgs317D96B7VX1kmasqvrPNjmMuSMI4dYIi0MYczSuaKGDtuOr6scyZdZ0uQaU7VF8Zg
         Pys3sHY2OkxCxW28M3KAAbQ6wUnWGWB+PM3+wVaUNFd6luYzYabMZHRRB/7WjaJe8vOb
         OTHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=poE/PvTvuXZfx3PT4eCQgnmDMS5uhOa52yFaRiv2Pto=;
        fh=zOLuzB85nhLGOxMIE9Jl/8CGCc9F4tmg5F5JC1S4uBc=;
        b=XCZTnVqSxJei6yJ+YpO0aSIXhj7sGQ05Nhx5AGV6gmSI1XCRrlTcOgT0yiZkyEWAQF
         Q2Awwak9+iX+oAS7XeiIg8A7J6UTynxPojAeyK9Frwh+H5L8RqysPHwsC3ESnwEjzcf5
         RH8x9LhBc1VfMgwZ8CSFhMmBmoBE1PpkEyHWZh2a6RZV2WtVbF+RPKbojytq4kRXeauS
         6686ADZ7uVp4nKu4FybW0ETNCa4Q9jMLly1P7zyolGY71hJ4B3mQZlJRafJiAJJuRASQ
         jLGvvKKGr8OVddfysrIphXmKrCKzoyMyD3qmUtaR4lCbeBynH6ETq0HMBCvJxsWqWgx0
         LGlA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722962232; x=1723567032;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=poE/PvTvuXZfx3PT4eCQgnmDMS5uhOa52yFaRiv2Pto=;
        b=qHvCH1GgZEBOH1VwXrPcgGg+zfQ3rJ0C5uMHKFWhj1JXdboGWT/OFaSkkSDSQX0M+6
         YzbxaHBMKAvCpRWZ7c21CMuefoHS6gR7LRlr9G83SqsaUUBxgauJYd5fyLuzh8G0z5Dp
         os06PClETh0C7txen3crtJ6UAUSZ4WR+v8iTkc9dBWYmEG5HagIM/8hfg28EoUKu+cf3
         vDs/kGx5vBQKE2r883dPEHZjBCqXT6nNqlvnR38dOCmna8ZnOPQCGqlvS8o2J8wyjr9w
         0dwguf56Nr6IIJdQy+6u+p7uAjPlE0eA2cMnaVOu8kJu3Bn3/05PoLIEkNCBrMegwFq8
         N95g==
X-Forwarded-Encrypted: i=2; AJvYcCVbBk8D0jDFM22kGWTw/fX1XbcqMCf7BCBk5RrmIBqbc9ePSgK5OyiJVIP3Jv8TBy5WBARRZaFpbJkENYcUkOLbAu/g3DT1SqhN
X-Gm-Message-State: AOJu0YyEKrfW2mhY+GnvGNZ9HntDw+ca4BRt71GyJ7zKceXhDGEEDguU
	zIw0gw9axDVTubuVfx/dMt33JD2G+wgGG1Ep++et8OHgh8VllQo+tyRNBT/EvDQ=
X-Google-Smtp-Source: AGHT+IHxu6HDokZRvWe3B5bFw3u5aoM+r3uBDAq8ky75vMH9LnIJdry/LXvX2PBE0yWsoToVkZUI8A==
X-Received: by 2002:a0d:e544:0:b0:650:9c5e:f6e2 with SMTP id 00721157ae682-68963048d93mr178260327b3.34.1722962231480;
        Tue, 06 Aug 2024 09:37:11 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5aa8:0:b0:6b5:dfc2:6696 with SMTP id 6a1803df08f44-6bba3408befls82106426d6.2.-pod-prod-04-us;
 Tue, 06 Aug 2024 09:37:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUqxaJ5mPho1s68mmYrZ4e+4l3A7iGNTy8mi/0VZZPaH0F8YxcBFaIHOFS8IY3w+fnC9bBzQtQzxraRGtf1P1STPDuIV9ARVsaSvg0R
X-Received: by 2002:a05:6214:328a:b0:6b5:d9ef:d56d with SMTP id 6a1803df08f44-6bb983b1545mr171104546d6.21.1722962230668;
        Tue, 06 Aug 2024 09:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722962230; cv=none;
        d=google.com; s=arc-20160816;
        b=fQwiUT06hbBQN0MrBJK0HCqO+cf0G3thUcmh8nmJ8XucRTrFi4HaYNsXMSBBJP7K7C
         nauxdJk6WhBkhCm9PsiXqGV5puWqvAj49aHEbl2zlCt5ibi6Uuiyc2sAk08GgBODz9/9
         6sMeHkgUKU2MEBqGWNBCbgWrTbMLB0cu4frQ4vcRTKeiZ3T4UTVRxnyCRyPyAVi1IYgW
         JgDRygjrV3KonBhdm5IEX9evLr68YEo88FY+S1GSSnJMyrY8kL7tQNKxeRKceuAesASB
         r747nJUU0p5xZE3/5hw1lVHIeMBQdlA9Vvp4VkQpLkC7d9aixrprQtdiAXcHOZD2/8zW
         fPGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=XH//pZO2GCzH9FX+cLMM0jyb1HxZpXGBRr7Sffyg62U=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=1DJEPMf7k8khajLwY3BM652DcwjejrKgogubM/vojXiUNSALNWCpnTJ715vT6qjnUt
         9jYwcOKy3xGpkp0TyXB/19qo2e85UUoy2hoDt7Zati47crYjkBFRoPdi7HXphEOZIADm
         QBzSZWblDni9Y1eUOr0xvuR4NOkXT8yIUpyaupz7ytOAa9Wk5EFO99x0O6udIcBmHfkm
         +1herFAN/gqxPHATMpZ7WESuOdmLN1F5+mweQtOWWe8l9aYl3CPzJ6XMaHHFd7ivAJoD
         AeqDYu/TplXAD04V5zd4bHRz63qRUIxnFHkLRuY5sJlmcxGMNW3BQKjrsEm4Ci7ieXcJ
         0bZQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb9c79f787si122861916d6.164.2024.08.06.09.37.10
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 09:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-99-i72bGaaJN3S1xUmDSnrXOw-1; Tue,
 06 Aug 2024 12:37:09 -0400
X-MC-Unique: i72bGaaJN3S1xUmDSnrXOw-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 748881955F43
	for <blinux-list@gapps.redhat.com>; Tue,  6 Aug 2024 16:37:08 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6FE551955D45; Tue,  6 Aug 2024 16:37:08 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6D2211955D42
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 16:37:08 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D54901955D4B
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 16:37:07 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-690-SbeNepF4PkCjK5gs_66ySw-1; Tue,
 06 Aug 2024 12:37:05 -0400
X-MC-Unique: SbeNepF4PkCjK5gs_66ySw-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4Wdf8x2bH4z4RdB;
	Tue,  6 Aug 2024 12:37:05 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4Wdf8x2KN8zcbc; Tue,  6 Aug 2024 12:37:05 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4Wdf8x2F13zcbC;
	Tue,  6 Aug 2024 12:37:05 -0400 (EDT)
Date: Tue, 6 Aug 2024 12:37:05 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: Lios
In-Reply-To: <0a500de0-3aa3-438e-b1a1-6c77b87637c6@gmail.com>
Message-ID: <b57017b9-0cdd-6a2e-2937-9f7aa9ab201f@panix.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com> <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com> <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com> <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
 <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com> <b2694532-b822-9c5b-1bdf-1b4ee087ba23@panix.com> <0a500de0-3aa3-438e-b1a1-6c77b87637c6@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
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

Good, you have learned lots you can tell Epson and maybe they can file a
bug against lios for your scanner with the developer of lios.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Tue, 6 Aug 2024, rodney jackson wrote:

> this scanner works perfectly on windows and other scanning software on Linux
> and has no issues.
>
> it is only when trying to use Lios and it has the same issue whether i am
> using Mint, debian or Accessible Coconut
>
> Rodney
>
>
> On 8/6/2024 03:25, Jude DaShiell wrote:
> > Time to call epson and ask some questions.
> >
> >
> > --
> >   Jude <jdashiel at panix dot com>
> >   "There are four boxes to be used in defense of liberty:
> >   soap, ballot, jury, and ammo.
> >   Please use in that order."
> >   Ed Howdershelt 1940.
> >
> > On Mon, 5 Aug 2024, rodney jackson wrote:
> >
> >> I am having issues with Lios, I am hoping someone can help me figure this
> >> out.
> >> Scanner I have: epson perfection v39 ii
> >> When trying to run Lios to scan documents
> >> Lios sees the scanner but I get the error below:
> >> Error I get:
> >> 	Scanner update list error Object has no attribute max_y
> >> I have tried this on Accessible Coconut and Linux mint as well as Debian
> >> Bookworm
> >> all other 3^rd    party scanning software on these machines have no issues
> >> with scanning with this scanner
> >> Any help will be greatly appreciated.
> >> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

