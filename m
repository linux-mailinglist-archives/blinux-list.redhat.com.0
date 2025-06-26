Return-Path: <blinux-list+bncBCFJ3VNT5EIBBGHD6XBAMGQEZUHIKVY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 01FD2AEA349
	for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 18:13:15 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7d3f0958112sf180504785a.0
        for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 09:13:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750954393; cv=pass;
        d=google.com; s=arc-20240605;
        b=b/X7t0VHj5bL6cEPL1GqAKG1GcuwUoHzgyb8PbfPEFp0p7gzBNjgH0a75qWLdxPZzd
         0V2FnFDv1Ics1zLKAHa+5PBgyKSMoOudVjDgVEcsY36pKZZXYwoke1WjLP159tPK2tYF
         tGHsXXOD2Rm43Ez1cxJ8CAk75aFx2p7hQDcgbk8e9upsn2HMxTVfFnkkEfdYfifRr3XT
         G9DLqVEoepyx3UEZG4x5ehfiLjiy97AUYHTNw/hOY/Lx/6/3bgF+/6RCfkaSIhGcBWx3
         lX3YAFYHRwG+0IHx6nOzX0SQMkgNpHup7jtw8Gq504HnH+dB+Y+xJxab7PTwRhODF8HT
         LNvA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=nJ9KlA3C6PPHP9lLYrGy6yzmY7KEYxOYzj5+kDE5Oyc=;
        fh=xm7uIeMqtVtYurM7mW4iiZM1eT/njJYSuOr5CRn8omU=;
        b=gfHoi9II+hr5XRFUtbMx8gE0ub225kprt9UbnzbZ0CuON+Ny8JHuxU5ySzKEnTYuIn
         +RRCmP8Hn0g8siDfanREerW6bcQpltcr9+vLf9wS1rDNkji6kO+SzaDFvreKuqIdrfZh
         u4bTHAcuTARKCIz96YJhO9ZV+nA9sxSZGLzUaWcTaC7L1lLgYQnCh9ZOUayd9L48ZjqA
         mxMvjvtC6v1vAcdfVIIrVvQMDAiLBuzMO/I/yJz1zyahO03UEu3gMKOKQqJH8D2BLU/F
         MshWMWCophL9i1i800At22Y8jk8GRWpaAuYaQV/DyN9tdRXeE6fEZQZwxj4fx3252T1Y
         b/PA==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ejfgy6qy;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750954393; x=1751559193;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nJ9KlA3C6PPHP9lLYrGy6yzmY7KEYxOYzj5+kDE5Oyc=;
        b=dx2HRMhzRR7r2ORa2cGZxlzxO7eEqnOttwDQjloyhuBHVInkQjphQiHPPCSmHgnKSf
         8dwGU4j26BjxbdSa6W4YKYm1rlUiEFZ4LcTNfewMJc6Wr8G8TnNHqY+RyUK+fsX8BiCW
         T5/HrGQghfe9awhpvAP0xb+91puBXavIAQsFBzKOdxzwjujqJGM7E6mXOAmeuPQIhsfJ
         Y5eAIswCMK4VpNLM9yl/xJrRqyX/4ppbaeacAX+tfzb6vf48OGpWLpubBBt6fMWShWVo
         wNWG+gQQ4g2/rK0CpYsX2jsFqS8VhiHD/bQcJEz7ObT8AkwWYC/EZAs6fo+5eWu/liso
         PWYw==
X-Forwarded-Encrypted: i=3; AJvYcCWF61/f1in6u7uh+yAJwqqPzAVhzMLJLoGCUaBlwGqnly1l+RuGw8yY2FL/hFnnB8oJvyZqEg==@lfdr.de
X-Gm-Message-State: AOJu0YwoAUSVHiwPmoeq4OTp9MjOe/iFfMSwjdkFcpknkFpwUp3dMmpG
	UzYHefGK9j7lBkQDC1wAQHKy8Fkpn+lL84VHtC9jZ+cFhRFlFiAwfjiIcTE4cgFsIwA=
X-Google-Smtp-Source: AGHT+IHGqc7YwLtmbITAAdoFo638JKB5G5eScj8S2Gu+jTBca/Q6hGmw2/w1T59Pbz8/dobwncR1eA==
X-Received: by 2002:a05:622a:2285:b0:494:b1f9:d683 with SMTP id d75a77b69052e-4a7fcb13f22mr1507591cf.49.1750954393061;
        Thu, 26 Jun 2025 09:13:13 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZfq1xj/N3NrU8D35MtYgz8iZWHQzDBXM27LUD/j8A4Ryw==
Received: by 2002:ac8:5e47:0:b0:477:78b2:dc08 with SMTP id d75a77b69052e-4a7f3101655ls17562221cf.0.-pod-prod-01-us;
 Thu, 26 Jun 2025 09:13:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVj9JE/hX1iughTPUIFd03dfD71pWQOXH7O08mlXm5WrDMoxUcNpuFzKXA4TvG5DDAIDDLcRCMGAgoUgA==@gapps.redhat.com
X-Received: by 2002:a05:622a:58c8:b0:48c:5c4d:68e7 with SMTP id d75a77b69052e-4a7fc9d5228mr2106991cf.6.1750954392056;
        Thu, 26 Jun 2025 09:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750954392; cv=pass;
        d=google.com; s=arc-20240605;
        b=L8yMil/9Wea5e1eanio1GgLINhCYF2X16iDeh9QFq30J7fbX3vh3X6+GX0DyziT9L0
         3x5ZCZp23SNFrk5vXgZKo3wiXVaN2fr4HQhtTJv5eGM5Gt85uZsInvaL02+bo8bJ+iU4
         fcB0Tufj7kl5uydkJ0toOgCmFNMOutUFhvfu9DXa4O4XEuKYYvCIuIMXugtI9X7rXuWj
         pVRycsxNyMIPDSsUlnPFue6K7XZugJRoevnR9CNNuPtTtaEvG6NGaZ6eM+vIitZ/fzm/
         iMJGftrFqBMDGt2GxMtu6zFwE8ZZaBMDPeWgz0xdFhZ/KNTqjKvfDj/XDPS3Rt/9Vvih
         dNAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=elt9e5ts37fQoE/1/vAoj4uopSbQIlmyI0fuEif+H94=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=bzZmolJLy5srmG5zUIQe3l5oYEggCq3Whx8D8xjCiHFkAfig3FhRoQ3FrQcBsqhFzF
         T+6qn6tP079QRBflvwvVX5F+4zuafqicPpO/MYb+ywHeIGTCKERFmZS2sL2tjO83vNVh
         uA7IBQ6eahF/3+DylNXFFDVcrgZFxOSM6ibJV5DTEr8oi8SwmcUXssNwyl4crhnj+wED
         6Q8JMGizzw3SJuNrcA6EUyhOL0xmGbU4dqOqlCrjha+weAkamZm1mjH6RhamCvqbjypz
         /tul5Tkx4x+jJgrV+RgjT4YHOefo2jwsCwxuGLHgm9e3QQhz5CWAQnQmNl+aYEET+uR/
         gFBg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ejfgy6qy;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4a7fc0ff72asi1639581cf.81.2025.06.26.09.13.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 09:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.177 as permitted sender) client-ip=209.85.167.177;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-651-PbZ8GHT8PMGvadEbSFUWRA-1; Thu,
 26 Jun 2025 12:13:10 -0400
X-MC-Unique: PbZ8GHT8PMGvadEbSFUWRA-1
X-Mimecast-MFC-AGG-ID: PbZ8GHT8PMGvadEbSFUWRA_1750954389
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 784F6193F061
	for <blinux-list@gapps.redhat.com>; Thu, 26 Jun 2025 16:13:09 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7372119AC0F7; Thu, 26 Jun 2025 16:13:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 70D4619373D8
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 16:13:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E6C721955F38
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 16:13:08 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750954388;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=elt9e5ts37fQoE/1/vAoj4uopSbQIlmyI0fuEif+H94=;
	b=F2W9F4bKST5UdwpZBjeoiS9T1yW+8Xc/lZvC5/HBzyLHJJ2oH+a077ZBzgxuuXdhXnWuuH
	lTTDosDQUHrCrlSc6EBWayMxMRBqnKUe34FqoD71uvf3A/D0scjHlArFsvSRT1KLcJ9v4x
	uE/xdcQyHiHOecWN65Fr7WSxh8n+ebGLIK2W5xOGZ7FGMpPltbbwhMUINbiILDMpFgX/XW
	1iSIVeD8g2MSTmHTCyVyT0SN7l7xDvCOEG2+KcXcv5C9lLrlQ2zWatDd0ag6209I85lgDe
	tdOLgmKO/MCgfrw413GcJ5vS1QNYbyxePV7HMR/X4hVcV9uYjKhWwfZUbZU/BA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750954388; a=rsa-sha256;
	cv=none;
	b=DupX+muWrMMzxI5Zj8bAmOgNp8XmIT4RKr3+8roiVXgbtkT44nAx6WBnXEyfy3c5hpoQn5
	VuSVv9EpDeQCx3I5a1LFclYtlLevXA1eRLwuLWDeVtaB0nahiWkA0xNawXz9FAnkyTEmcn
	JsdqYdPyurKtMkvoQax8NAa07T70KlU2cXGtpHoTTpYeEhdv9gRSZeC//Y/rPQW/5K+S+y
	p0twZC5Wkueqv8GgU6ik0Z897g93usq0TO69J5QpG0xNbRqOfwlhQz1EQZFD//sBQXgn8+
	ZjUlz1P1elchUsxOa8vEEbdfxpST3t6sAa4eJcOoq9RpKpL2dovqIa2bbvJ1UA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Ejfgy6qy;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-617-kcK4tNVFO2eQgdBF-saDeQ-1; Thu, 26 Jun 2025 12:13:06 -0400
X-MC-Unique: kcK4tNVFO2eQgdBF-saDeQ-1
X-Mimecast-MFC-AGG-ID: kcK4tNVFO2eQgdBF-saDeQ_1750954385
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-40b1f402deaso627796b6e.3
        for <blinux-list@redhat.com>; Thu, 26 Jun 2025 09:13:06 -0700 (PDT)
X-Gm-Gg: ASbGncuVJGvh4UByA80qtIrCjpP1qPFXHBbDiDiSSjpoAS46HYdgzCncD3URk46CcZK
	cpkr2NKoFvnEs/b5DSzWNa9OEBwDgUoGIbjGaNfpx6xTgSNrBSPyo/tW09XkEkPg44bihdPxFpp
	UVHYpD6t3TSpfmBr/Jjb5HOGLqB9uhDqevoJjjArm6LwrqhDXrPl6OuNfeLy3Znz2LPf+3iECfx
	j2HXbpsWDN8wjmCM3jHQ0UwmRqWbW8z3rfjUqJNzlLnKI2SlkYoy2g/pYaULgf/TUy2oo3nVlRp
	oCoKegZasNTYZGFMHDd18MoJjYHID1/KBvkSXCPQVECLZDWvhH24pzOgJUlR0/GF34QhGGXRgox
	oK7sPzFzUZbe8CMxE5zk=
X-Received: by 2002:a05:6808:1385:b0:404:dad4:f971 with SMTP id 5614622812f47-40b1c394b86mr3248087b6e.33.1750954385146;
        Thu, 26 Jun 2025 09:13:05 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d199:cd3a:880b:1875:df01:d114])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b32288d4csm17172b6e.10.2025.06.26.09.13.04
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Jun 2025 09:13:04 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: linux and Braille
Message-Id: <A98ADDBD-B429-4040-94CF-6DE62DA80558@gmail.com>
Date: Thu, 26 Jun 2025 11:12:54 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: HxXU_l_p9qUL9oKHA-JIOu1qAAVQbp7XnAzyPUYEtwA_1750954385
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Ejfgy6qy;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

Anyone know what Braille translation software is out there for linux?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

