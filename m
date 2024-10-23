Return-Path: <blinux-list+bncBDYPVTOXSQEBBX4V4O4AMGQETLQ4BQI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id BF36C9AC762
	for <lists+blinux-list@lfdr.de>; Wed, 23 Oct 2024 12:07:29 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-460c3261df2sf823091cf.1
        for <lists+blinux-list@lfdr.de>; Wed, 23 Oct 2024 03:07:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1729678048; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gs2XvlVTzS2yGJhFfyQTPK/N7VzaP0xlDLLQ/nae2vnfn/vREop/K4ejNgnT67Ov64
         lJNK4S5Wsi4hu03/wHtApfCPNufhQ4LRJcTLy7YEdVofEv7ToJZrDRetifdBVoFGbdow
         YWyK3qZ6OSYebAyzDtrvl/Rqf9DZinYU2BaraO9aVwc5w4RHM1p237fGSvLM0VoaYdXl
         Ujp8YjDbpgBi6sHYPq0iMSZdppbZHIU6b6WMj2dZ0OQ2JKOMYQRuIStCE18TTaf1YOFZ
         uVI+Kif8eqChIpXWaszmhoSiF0tBJd99qdJiRrN6/O7NSzp4g7KGP3Q3uNucqAChUTJa
         MpZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:delivered-to;
        bh=OXqdUB7V3YWjaFH2N2qbYq+ozG2TrsmRa8TZA5qL4M8=;
        fh=0xfmO34b9aRAeJxQlOnm5zfcCnW95s7UB9F5jReT4uQ=;
        b=GddX6XKtEj4f0XbrB767UqJIch/hp8dTHWFU9sBzHMciqFKy/NlxV17Hkdy1iX//s8
         J3x2M7GmStePgVfqBo33tvG7MdA7vGhrJnOI+ZX1xVnkYWjLG319BE45n0jqWml11lL5
         uMk4adQeyDINqEgbKyCTLOCZtm3naJnrnKTXQBzECQABi4CGRT8TQSg1nfjcpENB5u4q
         r7lb+QjutldGRKQl7/oJ5cYpmjmeiiGCwfuuxbwM/F/Zarn0J+YYwCUNr06THVLHSD+Q
         xvDtWYsHWatWle6M0JJNwUpHfTPsJtrP0lr+BWnlq4vIKR/BsvyaEA9YA1Z6F0wuTL+T
         ikYg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729678048; x=1730282848;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OXqdUB7V3YWjaFH2N2qbYq+ozG2TrsmRa8TZA5qL4M8=;
        b=qviX7xUgavk8GCPvz6fCIAsOjnEdn/pRVWnixFTqWWysj77Tva1ZyZUs3gvvMS4wUs
         AoNicluIpPzMe/hgNrqYaCO8y7iWk6Xsk3mSnl1K/U8KjsgUkn2kculqdYNoWopZlRIy
         gvQ89fmYs+ztj7X5+x6xMgKsDAEWoU3VtPcV0fLicONk4Gio+Vgswosogku2SSzCWEs1
         VC7iDUV01dY2Egc3vZdb7OP7hSQAlL7DHUjLGC9QveWhJ7lE57FY9iVo2P+JOcLaymfu
         YeaB13EdChirsSSPJiCvky70GFCefIfNiDDPzufv4QDrXpuBg2zQbKBegMfIVwvMwoc7
         D8kw==
X-Forwarded-Encrypted: i=2; AJvYcCXOJTTDw04CIw1TkUYtyS6UVtR+RoI7IjOIX+BWr5MvNYVv40Z/mhfrn53XVO+NuGthreNgqg==@lfdr.de
X-Gm-Message-State: AOJu0YzxGWUtMq2ijJvtjJdUoA0emuUXY59Hnb2BE9WiPkoUxc58F+Px
	KlN0yJoQHhXGpTubrAL1FeZXnYg9XyH8aBMaFQxPiliSbe0y3YnWKeKHA3Pg4LM=
X-Google-Smtp-Source: AGHT+IEHGwVZoti7i0jjLDOkZx49dnWMSuQDCIF6A+bt4q0u3e99Zrp+j2sdyIuHSWPKb3PZShwmDQ==
X-Received: by 2002:ac8:5789:0:b0:460:48fc:3cd8 with SMTP id d75a77b69052e-46113d43f75mr3074921cf.5.1729678048036;
        Wed, 23 Oct 2024 03:07:28 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5a48:0:b0:458:27d0:f7c4 with SMTP id d75a77b69052e-4609b46e465ls121550591cf.0.-pod-prod-09-us;
 Wed, 23 Oct 2024 03:07:27 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW2GSI65jd8+zdpPgmp0ijwWQj01bRpQ2sQ43NSBjUwxDmEa8xxmOWpYBrtXx4kJVMik08ih4Uwxp6jtg==@gapps.redhat.com
X-Received: by 2002:a05:622a:1b1e:b0:460:e316:5cb3 with SMTP id d75a77b69052e-461145abf13mr27562091cf.11.1729678047119;
        Wed, 23 Oct 2024 03:07:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1729678047; cv=none;
        d=google.com; s=arc-20240605;
        b=ItmT0gwEj/9o5J3GjeCYanPsAHnM/UUGbjjo0SeVGhRnq0G4pxEGp5iAsDBBKFH4ON
         9U7RoibhS1FAZKvbJepHcO0355Htf/xnWGDZuEJ8WygtNU+qHlETIJ+Vpa/auJwPdqFu
         chINhOlBu79s97iY6C6BJNzb6R7ABGtD6V3znGOpzg3THIiBnmcqjcuUAxoKJRPEvsc2
         YCGTSp3Q0sfMfBmpdp/FhIWXb6iZNKIrzJIEc5v53IwUMDn46i0RhjQqbIr9ReqGD1ov
         s0slVYwUMGQUVgQhZCie9cA+fX70Sr3dRgLBBe8IgsARLpwslOj9B5gg1rrCdYKyf2RB
         2C5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:message-id:subject:to:from:date:delivered-to;
        bh=t7/m4vD7m3QIiwKwzUQKCfmI3utt/2mM4veGW4zBo/8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=EtmVDciyGjTS0vjwxr4fuJEge45Jreyb/6h+QJWbwfisURwVU4+U9M3pfgf+LaHpDz
         bRI1eeFJGVzaAR+cXhM3gg8DHPPEEl07JPNCfqTJ0h8tUN/woTU6BgShZYM+47WBm8y8
         am7RdVfKS6OBTeJxDkj1q1rG68Rmj7WXk6czXBj/i/vyWCm2804bbDKud8DqVx0mYOGk
         7K+zd/SNzbq+EqItytgod1RD0INIRw1n2wGXnOadTeVTfrmPNpscYZf7WlM1oh3ZoSVJ
         iMLrH2I1Uor5lzoztZZGusHHxhOWhPnxFDU4w4YF71BRMzTE4+9XHfcucerSdVAHm2cT
         D+Qg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-460d3d0e74asi82318351cf.412.2024.10.23.03.07.26
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 03:07:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-461-tQEQffwBNGqO_JWS6cyXtA-1; Wed,
 23 Oct 2024 06:07:25 -0400
X-MC-Unique: tQEQffwBNGqO_JWS6cyXtA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1AE0F1955F42
	for <blinux-list@gapps.redhat.com>; Wed, 23 Oct 2024 10:07:25 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 145531956054; Wed, 23 Oct 2024 10:07:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 121C119560AE
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 10:07:24 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 64804195604F
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 10:07:24 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-319--kmaGu97PaSXt7tlJ1ohAg-1; Wed,
 23 Oct 2024 06:07:21 -0400
X-MC-Unique: -kmaGu97PaSXt7tlJ1ohAg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XYPqF4b41z4VRq
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 06:07:21 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XYPqF3kXVzcbc; Wed, 23 Oct 2024 06:07:21 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XYPqF3TX9zcbC
	for <blinux-list@redhat.com>; Wed, 23 Oct 2024 06:07:21 -0400 (EDT)
Date: Wed, 23 Oct 2024 06:07:21 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: blinux-list@redhat.com
Subject: makedeb
Message-ID: <cc7b86ae-67c8-0c8f-1eac-c665f40d5283@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
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

I'm trying to use makedeb to install pipe-viewer on a debian system.
I got makedeb installed using the bash command on its site.
What I don't know is what to do to get a PKGBUILD made for pipe-viewer and
the man page isn't at all helpful in this respect.
Any users of makedeb here who can help?


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

