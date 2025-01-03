Return-Path: <blinux-list+bncBCFJ3VNT5EIBBOP4365QMGQEKPTAMLY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f200.google.com (mail-yb1-f200.google.com [209.85.219.200])
	by mail.lfdr.de (Postfix) with ESMTPS id A9CC1A00B31
	for <lists+blinux-list@lfdr.de>; Fri,  3 Jan 2025 16:11:59 +0100 (CET)
Received: by mail-yb1-f200.google.com with SMTP id 3f1490d57ef6-e4c27270591sf3977058276.1
        for <lists+blinux-list@lfdr.de>; Fri, 03 Jan 2025 07:11:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1735917114; cv=pass;
        d=google.com; s=arc-20240605;
        b=Vakq/OZtZf8N0dLqKApYMd0CuE4AKkO5ocPzDJFoJ6NGjKZ0UcXIGf1DeFxY0RrG2N
         HyO/YxeXO94NL39q3oqXeadrlGOj80mi/fHvUEXXHHigVblp2KYvt/pj/S+PjlwNEbR7
         Aso9m3j85p3rajyKSw2jEBFt2pj55MpVOtaZ4qzB01PUPfdAsvw7KuN2f5atuaEPkayU
         Y3KFK0658+8r6gOa0+1h7bxpIE62PUCSIK6F8YMEUB2XBayBGGevFtUC8DdTPV7eMT+p
         KG8l8+YW1LszjuF5p5999kNWhGiQLg2fpOMpTZLVeMVLh/14RusuZHshQ5aaunad/LRn
         PmkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=lWHTI8a18Zj1ojTWyNoJ7FYP073WKzW90FmwuOs+Q+Q=;
        fh=QiEceWsukqh5SsU9+upCmvOriN/mkJJXiWkd5rHmIwg=;
        b=FiyCnhWeTM1/hQocGFfksS+3v6zLTpbSlaSAix7XQGa/uhN+tY5Woqi9zAhPlGzzmz
         BCyoxExbJAxHgdtNBnY9UBH+iSnLOt3RgDrNWxX9z+JBVryZA03waJtfyZ3MuxdJsq8p
         +bfSOmCZWzP06wwu/LPoVPuOXe6KaHjvP0Y/ARX4rXihxBUtuaFNLHYZeXh4NvAGmePv
         diR9EOkjblQSs6/QzV+ynR1NCLE+ZSSq1kf3nupFqReaT24cjUIWhp+8PQ9y/LEDQQPq
         LUY1cihzDRTpJXY4r0fTzZlAYVIoqzAUrnacqQB58VIpH/zytjjwip2GRW2GuWEc6HOQ
         +W7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735917114; x=1736521914;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lWHTI8a18Zj1ojTWyNoJ7FYP073WKzW90FmwuOs+Q+Q=;
        b=wmKt+5qCU9Z8dEAl3bmRsKHrRe2U9rhfmJEXCZax3MtY+n6jCXBifrgnDEL5Ni7Smu
         q2aeiR0LuMc3IDi0KpouLD8Ha3uCdCW0EmoVmA+dIGjQFto3EB48Vd3B/8XfWc6QpOWE
         8MElqBK66H+nXK+Hph5XW06NMAnkcxP/YTw9zSzC8WQ1XHzzbHnL3f0EBd76PnMNlTa7
         Dzf2ixDPr8316hSDZ71EtB2ML9MtTDXP5JECAQprz9Wy4ec/aqRrqoGPspg5HHQSYYcQ
         XGZTvVfqK+z4j2Y33gfYs88tp2v8C6Z052bJ2P8MD11DhyEM/UDZsMzjl+ijVR5Kx/Av
         1HDg==
X-Forwarded-Encrypted: i=2; AJvYcCWguGh+rn4OMERe5IedsfvUXFl28ezI7zddylqNEV2+TtqYks49+fgt5TxRlzBkJXFAAGN3MA==@lfdr.de
X-Gm-Message-State: AOJu0Yy1faP0Plk5O6St0xd/Wx6GXavgGs/LEJ+ITbUl8yZp2cKF+8t8
	76mk9x8+0y/TijC98u/jBsBAgt1PiczaHWqTLMtz9pGnB7ddrWMpVV9tl91NTz4=
X-Google-Smtp-Source: AGHT+IFNOedExHJcPwSjBiK5cS++Uz4Klat9yc9H/ToJWyp/3tjYDdkLZtRsI+QnEE2vWR/Quqcuig==
X-Received: by 2002:a25:200b:0:b0:e46:42d4:22c2 with SMTP id 3f1490d57ef6-e538c1f1f15mr20547648276.7.1735917113894;
        Fri, 03 Jan 2025 07:11:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:aa69:0:b0:e48:25c2:a5d7 with SMTP id 3f1490d57ef6-e5411996a95ls254917276.0.-pod-prod-06-us;
 Fri, 03 Jan 2025 07:11:52 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUEO2xTq3QYY/uC5P6Lc4dN9tECAGgl3MMrL6qQAQhPCHVWnvyKXmPcNW3LmW9HceXEiaBXQwBirbujXA==@gapps.redhat.com
X-Received: by 2002:a05:6102:3f0f:b0:4af:f275:e747 with SMTP id ada2fe7eead31-4b2cc45dc5fmr39572504137.22.1735917112459;
        Fri, 03 Jan 2025 07:11:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1735917112; cv=none;
        d=google.com; s=arc-20240605;
        b=aXMDG5vEmDfU/YYHskNwXrAqw/i7tx9MJ5J5V2cadCYo18U9SKkrrcO+4+PTf+jgPo
         b1/S+RUtynxSDr9ruBu9rdYGYghfDny0EhMSqGn3pEtLL8Kg7eeqnXuOFHd6iFvoS4ko
         gXP0FRX6fskixzBEf17ipZqCObkDY16rsbKMKUN95GDOkAGFKvENTiQVkxbccqEQsv/c
         nyWMIjY2pp9csTKg6DmAMhUeW+P2a6+dXheZZvy6agk47DJ0erprSTe+HYa3KFoxCd5q
         zOfQbTVy1arwbGt/+JItJynntLcwxpMdysUO7uNcKwbmFtlewpJYmxfYiQDZlq/zsyJF
         EXTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=674O6akWMYA8sSewFNrOxyxDPvlpUNXjFbZdEs7uniI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hW4LXDT4quQRIurlA1xXoI+6P68gKgp0uvSnRLbgSAktpdgm25vzfDoCJOTMw2sC+v
         zT4bSuLKxzSI5saujbbnBYbxRfAy8J70S/7Hhrao+uqDEIIPTKTJLXIF7Jz8B7HmmnGo
         xwACYIun6IDo+e/i6aSec2ccd7LE7ZOozYDRXJbk9/mcf9Zjp2yET7oD/vhZDku/Gi8y
         4Fe5M7W2cHZ3eqt/0hk75r1D581sk9XzeqETDqAiqsMzFFw0MRv9S2DuwNxWud+DHqxj
         hUX+bo/Jd0lnWIMJwWE6GFBxIoJKo/zJcFew5oPo6IPoPL0M/iso+8h6NGOkp04Pdfim
         1Gcw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4b2bfba316asi10612510137.559.2025.01.03.07.11.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 07:11:52 -0800 (PST)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.161.54 as permitted sender) client-ip=209.85.161.54;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-554-iLvhJP6iOUi6ITeQh04-4Q-1; Fri,
 03 Jan 2025 10:11:51 -0500
X-MC-Unique: iLvhJP6iOUi6ITeQh04-4Q-1
X-Mimecast-MFC-AGG-ID: iLvhJP6iOUi6ITeQh04-4Q
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0CAD219560AB
	for <blinux-list@gapps.redhat.com>; Fri,  3 Jan 2025 15:11:50 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 078D3300F9B7; Fri,  3 Jan 2025 15:11:50 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 04FBB300F9B6
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 15:11:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 85509195609F
	for <blinux-list@redhat.com>; Fri,  3 Jan 2025 15:11:49 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com
 [209.85.161.54]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-619-v2hePP5GORioAF5qDRYMyQ-1; Fri, 03 Jan 2025 10:11:47 -0500
X-MC-Unique: v2hePP5GORioAF5qDRYMyQ-1
X-Mimecast-MFC-AGG-ID: v2hePP5GORioAF5qDRYMyQ
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-5f32fab5de9so3119773eaf.2
        for <blinux-list@redhat.com>; Fri, 03 Jan 2025 07:11:47 -0800 (PST)
X-Gm-Gg: ASbGncuDOjuU4YTXoXO+KguF5b61UG+aOI7X+Lxt8nLsH7LnKeTXG7reuDHpor1KkAc
	rK7SaYJpz3kNJTWrB37GTD+n0pM6Rb8MrGuKTdckz9sjkA+wLPf3Gp2VYuf4A9XuS+1IA7aN+gp
	OwBN/YxK51OHLQnAIDwXGI/sh11WULh3dF68MXq3kFcvbvMWhUjM2lceAM9Jpj1wKEdgscSuToH
	vbEb6RU+pUneS7cJOkJqmvfazGVivWoiZgiGV1xg6e1jjQZqjbIz6Ey3ospyNae4b5lhDtFB6ux
	6kKjq6BydZmSti8lKMwToHH6qAb+jYl26MA=
X-Received: by 2002:a4a:e3ce:0:b0:5f6:c2a3:a146 with SMTP id 006d021491bc7-5f6c2a3a1e0mr6991047eaf.1.1735917106566;
        Fri, 03 Jan 2025 07:11:46 -0800 (PST)
Received: from smtpclient.apple (c-76-138-96-119.hsd1.tn.comcast.net. [76.138.96.119])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc998e59csm8012893a34.55.2025.01.03.07.11.45
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Jan 2025 07:11:46 -0800 (PST)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.300.87.4.3\))
Subject: k d e desktops and accessibility
Message-Id: <7C381AEC-6E41-40CE-B939-087D307EC20B@gmail.com>
Date: Fri, 3 Jan 2025 09:11:35 -0600
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: -p1O_K2Hx7381tAqvVxsEhHJsa7TZPDyRpVutBX-ppk_1735917107
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: dXfKq6RjDZsFH_9GWK-VnRasr1R2AuTZMWiwIzQ9ziM_1735917110
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.161.54 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

Hello everyone.
I had written to the k d e accessibility list and welcome anyone's thoughts about different desktops.
I wrote to
kde-accessibility@kde.org
I am a totally blind computer user, familiar with the following platforms:
windows
Macintosh, Tiger and up
ubuntu linux
Fedora linux
and as for desktops with linux I have used gnome and mate.
I hasten to add I am no programmer, just someone who write's text files, checks e-mail, and reads articles on the internet.
Since I use orca and use keyboard commands and no mouse, for a total, what is an advantage of one desktop over another?
I would welcome anyone's thoughts as to why one mightt favor the k d e desktop over another.
I had thought that preferring one desktop over another would mainly have to do with its appearance for sighted users.
Also, why is the k d e desktop not yet as accessible as others?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

